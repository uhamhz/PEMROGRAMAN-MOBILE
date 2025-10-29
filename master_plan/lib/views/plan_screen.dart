import '../models/data_layer.dart';
import 'package:flutter/material.dart';
import '../provider/plan_provider.dart';

class PlanScreen extends StatefulWidget {
  final Plan plan;
  const PlanScreen({super.key, required this.plan});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;
  Plan get plan => widget.plan;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  @override
  Widget build(BuildContext context) {
    ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(plan.name)),
      body: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          Plan currentPlan = plans.firstWhere((p) => p.name == plan.name);
          return Column(
            children: [
              Expanded(child: _buildList(currentPlan)),
              SafeArea(child: Text(currentPlan.completenessMessage)),
            ],
          );
        },
      ),
      floatingActionButton: _buildAddTaskButton(context),
    );
  }

  Widget _buildAddTaskButton(BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        // Use the provider's current Plan when available to avoid stale data
        Plan currentPlan = planNotifier.value.firstWhere(
          (p) => p.name == widget.plan.name,
          orElse: () => widget.plan,
        );
        int planIndex = planNotifier.value.indexWhere(
          (p) => p.name == currentPlan.name,
        );
        List<Task> updatedTasks = List<Task>.from(currentPlan.tasks)
          ..add(const Task());

        if (planIndex == -1) {
          // Plan not found in provider (defensive): append it with the new task
          planNotifier.value = List<Plan>.from(planNotifier.value)
            ..add(Plan(name: currentPlan.name, tasks: updatedTasks));
        } else {
          planNotifier.value = List<Plan>.from(planNotifier.value)
            ..[planIndex] = Plan(name: currentPlan.name, tasks: updatedTasks);
        }
      },
    );
  }

  Widget _buildList(Plan plan) {
    return ListView.builder(
      controller: scrollController,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) =>
          _buildTaskTile(plan.tasks[index], index, context),
    );
  }

  Widget _buildTaskTile(Task task, int index, BuildContext context) {
    ValueNotifier<List<Plan>> planNotifier = PlanProvider.of(context);

    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          // Read the authoritative plan from the provider to avoid using a stale widget.plan
          Plan currentPlan = planNotifier.value.firstWhere(
            (p) => p.name == widget.plan.name,
            orElse: () => widget.plan,
          );
          int planIndex = planNotifier.value.indexWhere(
            (p) => p.name == currentPlan.name,
          );
          List<Task> updatedTasks = List<Task>.from(currentPlan.tasks)
            ..[index] = Task(
              description: task.description,
              complete: selected ?? false,
            );

          if (planIndex == -1) {
            // If plan missing, append a new plan with updated tasks
            planNotifier.value = List<Plan>.from(planNotifier.value)
              ..add(Plan(name: currentPlan.name, tasks: updatedTasks));
          } else {
            planNotifier.value = List<Plan>.from(planNotifier.value)
              ..[planIndex] = Plan(name: currentPlan.name, tasks: updatedTasks);
          }
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          Plan currentPlan = planNotifier.value.firstWhere(
            (p) => p.name == widget.plan.name,
            orElse: () => widget.plan,
          );
          int planIndex = planNotifier.value.indexWhere(
            (p) => p.name == currentPlan.name,
          );
          List<Task> updatedTasks = List<Task>.from(currentPlan.tasks)
            ..[index] = Task(description: text, complete: task.complete);

          if (planIndex == -1) {
            planNotifier.value = List<Plan>.from(planNotifier.value)
              ..add(Plan(name: currentPlan.name, tasks: updatedTasks));
          } else {
            planNotifier.value = List<Plan>.from(planNotifier.value)
              ..[planIndex] = Plan(name: currentPlan.name, tasks: updatedTasks);
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}

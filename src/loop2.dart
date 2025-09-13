void main() {
  var index;
  for (index = 0; index < 30; index++) {
    if (index == 21)
      break;
    else if (index > 1 && index < 7) continue;
    print(index);
  }
}

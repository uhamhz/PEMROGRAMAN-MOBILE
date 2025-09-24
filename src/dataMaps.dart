void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
    'nama': 'Ammar Hafizh',
    'nim': '123456789'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    'nama': 'Ammar Hafizh',
    'nim': '123456789'
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  mhs1['nama'] = 'Ammar Hafizh';
  mhs1['nim'] = '123456789';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Ammar Hafizh';
  mhs2[2] = '123456789';

  print(mhs1);
  print(mhs2);
}

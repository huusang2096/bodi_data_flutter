class FakePar {
  String name;
  List<String> review;
  FakePar({required this.name, required this.review});
}

class FakeStyle {
  String name;
  String des;
  List<FakePar> fakePar;
  FakeStyle({required this.name, required this.des, required this.fakePar});
}

List<FakeStyle> listFakeStyle = [
  FakeStyle(
      name: 'Women\'s Full Elastic Front Pant With DrawString1',
      des: 'ENT1111',
      fakePar: [
        FakePar(name: 'Keleyss1', review: ['M1 x 28', 'L1 x 28', 'L1 x 28']),
        FakePar(name: 'Keleyss2', review: ['M1 x 28', 'L1 x 28', 'L1 x 28']),
        FakePar(name: 'Keleyss3', review: ['M1 x 28', 'L1 x 28', 'L1 x 28']),
        FakePar(name: 'Keleyss4', review: ['M1 x 28', 'L1 x 28', 'L1 x 28']),
      ]),
  FakeStyle(
      name: 'Women\'s Full Elastic Front Pant With DrawString2',
      des: 'ENT2222',
      fakePar: [
        FakePar(name: 'Keleyss1', review: ['M2 x 29', 'L2 x 29', 'L2 x 29']),
        FakePar(name: 'Keleyss2', review: ['M2 x 29', 'L2 x 29', 'L2 x 29']),
        FakePar(name: 'Keleyss3', review: ['M2 x 29', 'L2 x 29', 'L2 x 29']),
        FakePar(name: 'Keleyss4', review: ['M2 x 29', 'L2 x 29', 'L2 x 29']),
      ]),
];

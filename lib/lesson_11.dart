void main() {
  Tiger vasya = Tiger(
    name: '12',
  );
  vasya.voice();
  vasya.voice1();
}

class Animals {
  String name;

  Animals({required this.name});

  void voice() {
    print('rrrrr');
  }
}

class Cats {
  void voice1() {
    print('mayu');
  }
}

class CatsFamily extends Animals {
  int size1;
  void color() {
    print('color');
  }

  CatsFamily({required this.size1}) : super(name: "");
}

class Tiger extends Animals with Cats {
  Tiger({required super.name});
}

class Doc implements Animals {
  @override
  String name;

  @override
  void voice() {
    // TODO: implement voice
  }

  Doc({required this.name});
}

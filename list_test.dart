void main() {
  {
    print('CHECK UPDATE');
    final state = WidgetState();

    print(state.entidades);
    // [Entidad(id: "abc", value: 1, foo: "foo")]

    print(state.updateEntidad(id: 'abc', value: 88));
    // [Entidad(id: "abc", value: 88, foo: "foo")]
  }
  {
    print('\nCHECK DELETE');
    final state = WidgetState();

    print(state.entidades);
    // [Entidad(id: "abc", value: 1, foo: "foo")]

    print(state.deleteEntidad(id: 'abc'));
    // []
  }

  {
    print('\nCHECK ADD');
    final state = WidgetState();

    print(state.entidades);
    // [Entidad(id: "0", value: 0, foo: "0")]

    print(state.addEntidad(Entidad('xyz', 5, 'bar')));
    // [Entidad(id: "abc", value: 1, foo: "foo"), Entidad(id: "xyz", value: 5, foo: "bar")]
  }

  print('\nCHECK GETTERS');

  final state = WidgetState.generate(length: 145);

  print(state.sumValuesEven); // 5256

  print(state.getValuesOddAndMultiplesOfThreeAndFive());

  //(15, 45, 75, 105, 135)
}

class Entidad {
  final String id;
  final int value;
  final String foo;

  const Entidad(this.id, this.value, this.foo);

  @override
  String toString() => 'Entidad(id: "$id", value: $value, foo: "$foo")';
}

class WidgetState {
  late final List<Entidad> entidades;

  WidgetState() {
    entidades = [Entidad('abc', 1, 'foo')].toList(growable: false);
  }

  WidgetState.generate({required int length}) {
    entidades = List.generate(
        length, (index) => Entidad('$index', index, 'foo $index'),
        growable: false);
  }

  List<Entidad> updateEntidad({required String id, required int value}) => [];

  List<Entidad> deleteEntidad({required String id}) => [];

  List<Entidad> addEntidad(Entidad entidad) => [];

  int get sumValuesEven => 0;

  Iterable<int> getValuesOddAndMultiplesOfThreeAndFive() sync* {}
}

void main() {
  final state = WidgetState();

  state.updateEntidad(Entidad('1', 55));

  print(state.entidades);
  // [Entidad(id: 0, value: 0), Entidad(id: 1, value: 55), Entidad(id: 2, value: 2)]

  state.deleteEntidad(Entidad('0', 0));

  print(state.entidades);
  // [Entidad(id: 1, value: 55), Entidad(id: 2, value: 2)]

  state.addEntidad(Entidad('3', 3));

  print(state.entidades);
  // [Entidad(id: 1, value: 55),Entidad(id: 2, value: 2), Entidad(id: 3, value: 3)]

  print(state.hasEntityWithValueOverTen);

  print(state.areAllEntitiesOdd);
}

class Entidad {
  final int value;
  final String id;

  const Entidad(this.id, this.value);

  factory Entidad.fromIndex(int index) {
    return Entidad(index.toString(), index);
  }

  @override
  String toString() => 'Entidad(id: "$id", value: $value)';
}

class WidgetState {
  late List<Entidad> entidades;

  WidgetState() {
    entidades = List.generate(3, Entidad.fromIndex).toList(growable: false);
  }

  deleteEntidad(Entidad entidad) {}

  addEntidad(Entidad entidad) {}

  updateEntidad(Entidad entidad) {}

  bool get hasEntityWithValueOverTen {
    return false;
  }

  bool get areAllEntitiesOdd {
    return true;
  }
}
void main() {
  // var repository = ServidorRepository();
  // repository = FirebaseRepository();
  
  final usecase = AdquirirProductoUseCase();

  final result = usecase.execute(1015);

  print(result);
}

class AdquirirProductoUseCase {
  final repository = ServidorRepository();

  String execute(int id) => repository.buyProduct(id);
}


class ServidorRepository {
  String buyProduct(int id) {
    return 'compra exitosa en Servidor de $id';
  }
}

class FirebaseRepository {
  String buyElement(String id) {
    return 'compra exitosa en Firebase $id';
  }
}

void main() {
  final usecase = AdquirirProductoUseCase();
  
 final result = usecase.execute(1);
  
  print(result);
}

class AdquirirProductoUseCase {
  final repository = ServidorRepository();

  String execute(int id) => repository.buyProduct(id);
}

class ServidorRepository {
  String buyProduct(int id) {
    return 'compra exitosa en Servidor';
  }
}

class FirebaseRepository {
  String buyProduct(int id) {
    return 'compra exitosa en Firebase';
  }
}

import 'package:be_sharp/domain/repository_interface/repository_interface.dart';

abstract class PurchaseRepositoryInterface extends RepositoryInterface<void> {
  Stream<List<dynamic>> get purchaseUpdated;
  Future<void> initStore();
  Future<List<dynamic>> getProducts();
  Future<void> buyProduct(String productId);
}

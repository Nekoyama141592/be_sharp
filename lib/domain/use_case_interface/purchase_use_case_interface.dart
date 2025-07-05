import 'package:be_sharp/domain/use_case_interface/use_case_interface.dart';

abstract class PurchaseUseCaseInterface extends UseCaseInterface<void> {
  Stream<List<dynamic>> get purchaseUpdated;
  Future<void> initStore();
  Future<List<dynamic>> getProducts();
  Future<void> buyProduct(String productId);
  Future<void> verifyPurchase(dynamic purchaseDetails);
}

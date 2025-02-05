import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt quantity = 1.obs;
  final RxDouble price = 26.35.obs;
  final RxDouble discount = 1.35.obs;
  final RxDouble total = 25.00.obs;
  final HomeController controller = Get.find<HomeController>();

  void incrementQuantity() {
    quantity++;
    updateTotal();
  }

  void decrementQuantity() {
    if (quantity > 1) {
      quantity--;
      updateTotal();
    }
  }

  void updateTotal() {
    total.value = (price.value * quantity.value) - discount.value;
  }
}

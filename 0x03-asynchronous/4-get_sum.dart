import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final userMap = json.decode(userData) as Map<String, dynamic>;
    final userId = userMap['id'] as String;

    final userOrders = await fetchUserOrders(userId);
    final ordersList = json.decode(userOrders) as List<dynamic>;

    double totalPrice = 0;
    for (final order in ordersList) {
      final product = order as String;
      final productPrice = await fetchProductPrice(product);
      final price = json.decode(productPrice);
      totalPrice += price;
    }

    return totalPrice;
  } catch (e) {
    return -1;
  }
}

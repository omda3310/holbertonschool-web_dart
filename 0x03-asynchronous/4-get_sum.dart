import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    final userList = await fetchUserData();
    final juser = jsonDecode(userList);
    final userId = juser['id'];

    final userOrders = await fetchUserOrders(userId);
    final orders = jsonDecode(userOrders);

    double total = 0.0;
    for (var product in orders) {
      final priceData = await fetchProductPrice(product);
      final price = double.parse(jsonDecode(priceData).toString());
      total += price;
    }

    return total;
  } catch (e) {
    return -1;
  }
}

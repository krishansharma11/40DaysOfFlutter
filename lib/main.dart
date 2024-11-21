import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practics/screens/HomeScreen.dart';

// Cart state provider
final cartProvider =
    StateNotifierProvider<CartNotifier, int>((ref) => CartNotifier());

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class CartNotifier extends StateNotifier<int> {
  CartNotifier() : super(0);

  void addItem() => state++;
  void removeItem() {
    if (state > 0) state--;
  }
}

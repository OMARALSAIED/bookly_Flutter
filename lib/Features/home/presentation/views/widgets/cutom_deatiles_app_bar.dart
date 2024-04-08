import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppbarBookDeatiles extends StatelessWidget {
  const CustomAppbarBookDeatiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {GoRouter.of(context).pop();}, icon: const Icon(Icons.close)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(ShoppingList());
}

class ShoppingList extends StatelessWidget {
  const ShoppingList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = ['Apples', 'Bananas', 'Bread', 'Milk', 'Eggs'];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My Shopping List'),
            centerTitle: true,
            backgroundColor: Colors.blue,
            actions: [
              Builder(
                builder: (BuildContext context) {
                  return IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Shopping Cart is Empty')));
                      },
                      icon: const Icon(Icons.shopping_cart));
                },
              )
            ],
          ),
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text(items[index]),
              );
            },
          )),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lesson_46/classwork/controllers/products_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final productsController = ProductsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Center(child: Text("Home Screen")),
        ),
        body: FutureBuilder(
            future: productsController.getProducts(),
            builder: (context, snapshot) {
              /// Tekshiramiz agar malumot hali ham kutilmoqda
              print(snapshot.hasData);
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (!snapshot.hasData) {
                return Center(
                  child: Text("Products not found"),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              }
              final products = snapshot.data;

              return products == null || products.isEmpty
                  ? Center(
                      child: Text("Mahsulotlar mavjud emas"),
                    )
                  : ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (ctx, index) {
                        final product = products[index];
                        return ListTile(
                          title: Text(product.title),
                          subtitle: Text("\$${product.price}"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.blue,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
            }));
  }
}

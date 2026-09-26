import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categories View')),
      body: const Center(child: Text('Categorias')),
    );
  }
}

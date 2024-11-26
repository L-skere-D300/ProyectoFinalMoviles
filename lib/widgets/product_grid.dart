import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  final String category;

  ProductGrid({required this.category});

  final List<Product> allProducts = [
    Product(image: 'lib/image/1.png', name: 'Tabla de Surf', price: 'S/.00', category: 'Surf'),
     Product(image: 'lib/image/2.png', name: 'Tabla de Surf', price: 'S/.00', category: 'Surf'),
      Product(image: 'assets/surf1.png', name: 'Tabla de Surf', price: 'S/.00', category: 'Surf'),
       Product(image: 'assets/surf1.png', name: 'Tabla de Surf', price: 'S/.00', category: 'Surf'),
        Product(image: 'assets/surf1.png', name: 'Tabla de Surf', price: 'S/.00', category: 'Surf'),
         Product(image: 'assets/surf2.png', name: 'Tabla de Surf', price: 'S/.00', category: 'Surf'),
         
    Product(image: 'assets/ball.png', name: 'Pelota de Fútbol', price: 'S/.00', category: 'Fútbol'),
     Product(image: 'assets/ball.png', name: 'Pelota de Fútbol', price: 'S/.00', category: 'Fútbol'),
      Product(image: 'assets/ball.png', name: 'Pelota de Fútbol', price: 'S/.00', category: 'Fútbol'),
       Product(image: 'assets/ball.png', name: 'Pelota de Fútbol', price: 'S/.00', category: 'Fútbol'),
        Product(image: 'assets/ball.png', name: 'Pelota de Fútbol', price: 'S/.00', category: 'Fútbol'),
         Product(image: 'assets/ball.png', name: 'Pelota de Fútbol', price: 'S/.00', category: 'Fútbol'),
          
    Product(image: 'assets/clothing.png', name: 'Ropa Deportiva', price: 'S/.00', category: 'Todo'),
     Product(image: 'assets/clothing.png', name: 'Ropa Deportiva', price: 'S/.00', category: 'Todo'),
      Product(image: 'assets/clothing.png', name: 'Ropa Deportiva', price: 'S/.00', category: 'Todo'),
       Product(image: 'assets/clothing.png', name: 'Ropa Deportiva', price: 'S/.00', category: 'Todo'),
        Product(image: 'assets/clothing.png', name: 'Ropa Deportiva', price: 'S/.00', category: 'Todo'),
    Product(image: 'assets/clothing.png', name: 'Ropa Deportiva', price: 'S/.00', category: 'Todo'),
     Product(image: 'assets/clothing.png', name: 'Ropa Deportiva', price: 'S/.00', category: 'Todo'),
      Product(image: 'assets/clothing.png', name: 'Ropa Deportiva', price: 'S/.00', category: 'Todo'),
       Product(image: 'assets/clothing.png', name: 'Ropa Deportiva', price: 'S/.00', category: 'Todo'),
        Product(image: 'assets/clothing.png', name: 'Ropa Deportiva', price: 'S/.00', category: 'Todo'),
         Product(image: 'assets/clothing.png', name: 'Ropa Deportiva', price: 'S/.00', category: 'Todo'),

    Product(image: 'assets/knee_pads.png', name: 'Rodilleras', price: 'S/.00', category: 'Vóley'),
     Product(image: 'assets/knee_pads.png', name: 'Rodilleras', price: 'S/.00', category: 'Vóley'),
      Product(image: 'assets/knee_pads.png', name: 'Rodilleras', price: 'S/.00', category: 'Vóley'),
       Product(image: 'assets/knee_pads.png', name: 'Rodilleras', price: 'S/.00', category: 'Vóley'),
        Product(image: 'assets/knee_pads.png', name: 'Rodilleras', price: 'S/.00', category: 'Vóley'),
         Product(image: 'assets/knee_pads.png', name: 'Rodilleras', price: 'S/.00', category: 'Vóley'),

    Product(image: 'assets/car.png', name: 'Carro Deportivo', price: 'S/.00', category: 'Vehículos'),
      Product(image: 'assets/car.png', name: 'Carro Deportivo', price: 'S/.00', category: 'Vehículos'),
        Product(image: 'assets/car.png', name: 'Carro Deportivo', price: 'S/.00', category: 'Vehículos'),
          Product(image: 'assets/car.png', name: 'Carro Deportivo', price: 'S/.00', category: 'Vehículos'),
            Product(image: 'assets/car.png', name: 'Carro Deportivo', price: 'S/.00', category: 'Vehículos'),
              Product(image: 'assets/car.png', name: 'Carro Deportivo', price: 'S/.00', category: 'Vehículos'),

    Product(image: 'assets/weights.png', name: 'Pesas de Gimnasio', price: 'S/.00', category: 'Pesas'),
     Product(image: 'assets/weights.png', name: 'Pesas de Gimnasio', price: 'S/.00', category: 'Pesas'),
      Product(image: 'assets/weights.png', name: 'Pesas de Gimnasio', price: 'S/.00', category: 'Pesas'), 
       Product(image: 'assets/weights.png', name: 'Pesas de Gimnasio', price: 'S/.00', category: 'Pesas'),
        Product(image: 'assets/weights.png', name: 'Pesas de Gimnasio', price: 'S/.00', category: 'Pesas'), 
         Product(image: 'assets/weights.png', name: 'Pesas de Gimnasio', price: 'S/.00', category: 'Pesas'), 
    
  ];

  @override
  Widget build(BuildContext context) {
    // Filtrar los productos según la categoría seleccionada
    final filteredProducts = category == 'Todo'
        ? allProducts
        : allProducts.where((product) => product.category == category).toList();

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 3 / 4,
      ),
      itemCount: filteredProducts.length,
      itemBuilder: (ctx, i) => ProductItem(product: filteredProducts[i]),
    );
  }
}

class Product {
  final String image;
  final String name;
  final String price;
  final String category;

  Product({
    required this.image,
    required this.name,
    required this.price,
    required this.category,
  });
}

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(product.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          product.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(product.price),
      ],
    );
  }
}

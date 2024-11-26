import 'package:flutter/material.dart';
import '../widgets/custom_navigation_bar.dart';
import '../widgets/product_grid.dart';

class HomeScreen extends StatelessWidget {
  // Define un GlobalKey para el Scaffold
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6, // Número de categorías
      child: Scaffold(
        key: _scaffoldKey, // Usa el GlobalKey aquí
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              // Usa el GlobalKey para abrir el Drawer
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
          title: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                hintText: 'Búsqueda',
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 10),
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.qr_code_scanner, color: Colors.black),
              onPressed: () {
                // Aquí puedes implementar la funcionalidad del escáner
                print("Escáner activado");
              },
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: const Color.fromARGB(255, 220, 144, 29),
            tabs: [
              Tab(text: 'Todo'),
              Tab(text: 'Surf'),
              Tab(text: 'Fútbol'),
              Tab(text: 'Vóley'),
              Tab(text: 'Vehículos'),
              Tab(text: 'Pesas'),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Icon(Icons.person, size: 40, color: Colors.blue),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Usuario',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      'usuario@email.com',
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.category),
                title: Text('Categorías'),
                onTap: () {
                  Navigator.pop(context);
                  // Implementar navegación a otra pantalla
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configuración'),
                onTap: () {
                  Navigator.pop(context);
                  // Implementar acción
                },
              ),
              ListTile(
                leading: Icon(Icons.attach_money),
                title: Text('Moneda'),
                onTap: () {
                  Navigator.pop(context);
                  // Implementar selección de moneda
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('Acerca de nosotros'),
                onTap: () {
                  Navigator.pop(context);
                  // Implementar navegación
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Cerrar sesión'),
                onTap: () {
                  Navigator.pop(context);
                  // Implementar cierre de sesión
                },
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ProductGrid(category: 'Todo'),
            ProductGrid(category: 'Surf'),
            ProductGrid(category: 'Fútbol'),
            ProductGrid(category: 'Vóley'),
            ProductGrid(category: 'Vehículos'),
            ProductGrid(category: 'Pesas'),
          ],
        ),
        bottomNavigationBar: CustomNavigationBar(),
      ),
    );
  }
}

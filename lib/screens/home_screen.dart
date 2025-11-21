import 'package:flutter/material.dart';
import '../models/category.dart';
import '../widgets/category_card.dart';
import 'product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Category> categories = [
    Category(
      name: 'Makanan',
      icon: Icons.restaurant,
      color: Color(0xFFFF8C42),
      subtitle: 'Berbagai pilihan makanan lokal.',
    ),
    Category(
      name: 'Minuman',
      icon: Icons.local_drink,
      color: Color(0xFF4A90E2),
      subtitle: 'Minuman segar dan menyegarkan.',
    ),
    Category(
      name: 'Elektronik',
      icon: Icons.laptop,
      color: Color(0xFF5A6B7D),
      subtitle: 'Peralatan elektronik terkini.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header dengan gradient
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF2C2568), Color(0xFF3D3399)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 4,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFF4A90E2),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'MyShop Mini',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Temukan produk favoritmu',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            
            // Judul Kategori
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Kategori Populer',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: 16),
            
            // ROW dengan 3 Card
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: CategoryCard(
                      category: categories[0],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductListScreen(
                              category: categories[0].name,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: CategoryCard(
                      category: categories[1],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductListScreen(
                              category: categories[1].name,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: CategoryCard(
                      category: categories[2],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductListScreen(
                              category: categories[2].name,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
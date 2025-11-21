import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  final String category;

  ProductListScreen({required this.category});

  List<Product> getProducts() {
    if (category == 'Makanan') {
      return [
        Product(
          name: 'Nasi Goreng Spesial',
          category: 'Makanan',
          price: 25000,
          image: 'assets/images/makanan/nasi_goreng.png',
          rating: 4.8,
          reviews: 1250,
          description: 'Nasi goreng kaya rempah dengan topping telur mata sapi, sate ayam, dan kerupuk udang. Cocok untuk makan malam yang mengenyangkan.',
        ),
        Product(
          name: 'Burger Daging Premium',
          category: 'Makanan',
          price: 45000,
          image: 'assets/images/makanan/burger.png',
          rating: 4.6,
          reviews: 890,
          description: 'Burger dengan patty daging sapi 100% asli Australia, dipadukan dengan keju cheddar meleleh dan sayuran segar organik.',
        ),
        Product(
          name: 'Sate Ayam Madura',
          category: 'Makanan',
          price: 30000,
          image: 'assets/images/makanan/sate_madura.png',
          rating: 4.9,
          reviews: 2100,
          description: 'Sate ayam dengan bumbu kacang kental khas Madura yang gurih dan manis, disajikan dengan lontong hangat.',
        ),
        Product(
          name: 'Pizza Pepperoni',
          category: 'Makanan',
          price: 95000,
          image: 'assets/images/makanan/piza.png',
          rating: 4.7,
          reviews: 560,
          description: 'Pizza tipis khas Italia dengan topping pepperoni berlimpah dan keju mozzarella yang sangat mulur saat ditarik.',
        ),
        Product(
          name: 'Ayam Goreng Crispy',
          category: 'Makanan',
          price: 18000,
          image: 'assets/images/makanan/ayam.png',
          rating: 4.5,
          reviews: 3400,
          description: 'Ayam goreng dengan tepung bumbu rahasia yang super renyah di luar namun tetap juicy dan lembut di dalam.',
        ),
      ];
    } else if (category == 'Minuman') {
      return [
        Product(
          name: 'Kopi Susu Gula Aren',
          category: 'Minuman',
          price: 18000,
          image: 'assets/images/minuman/kopi.png',
          rating: 4.9,
          reviews: 5400,
          description: 'Perpaduan kopi robusta pilihan dengan susu segar dan gula aren asli yang legit. Minuman kekinian favorit semua orang.',
        ),
        Product(
          name: 'Bubble Tea Brown Sugar',
          category: 'Minuman',
          price: 22000,
          image: 'assets/images/minuman/teh.png',
          rating: 4.7,
          reviews: 1200,
          description: 'Teh susu creamy dengan boba kenyal yang dimasak dengan gula merah karamelisasi. Manisnya pas dan menyegarkan.',
        ),
        Product(
          name: 'Matcha Latte',
          category: 'Minuman',
          price: 24000,
          image: 'assets/images/minuman/macha.png',
          rating: 4.6,
          reviews: 850,
          description: 'Minuman teh hijau Jepang premium dicampur dengan susu hangat. Memberikan ketenangan dan rasa yang autentik.',
        ),
        Product(
          name: 'Jus Alpukat Kocok',
          category: 'Minuman',
          price: 15000,
          image: 'assets/images/minuman/alpukat.png',
          rating: 4.8,
          reviews: 920,
          description: 'Jus alpukat mentega yang kental dikocok dengan susu coklat kental manis. Dessert sehat yang mengenyangkan.',
        ),
        Product(
          name: 'Es Jeruk Segar',
          category: 'Minuman',
          price: 10000,
          image: 'assets/images/minuman/jeruk.png',
          rating: 4.5,
          reviews: 600,
          description: 'Perasan jeruk murni tanpa pemanis buatan. Sangat cocok diminum saat cuaca panas untuk mengembalikan kesegaran.',
        ),
      ];
    } else if (category == 'Elektronik') {
      return [
        Product(
          name: 'Laptop Gaming Pro',
          category: 'Elektronik',
          price: 15000000,
          image: 'assets/images/elektronik/laptop.png',
          rating: 4.9,
          reviews: 120,
          description: 'Laptop spesifikasi tinggi dengan prosesor terbaru dan kartu grafis RTX. Siap melibas game berat dan rendering video.',
        ),
        Product(
          name: 'Smartphone 5G',
          category: 'Elektronik',
          price: 4500000,
          image: 'assets/images/elektronik/hp.png',
          rating: 4.7,
          reviews: 3400,
          description: 'Smartphone canggih dengan kamera 108MP dan layar AMOLED 120Hz. Koneksi internet super cepat untuk streaming lancar.',
        ),
        Product(
          name: 'Headphone Noise Cancel',
          category: 'Elektronik',
          price: 2100000,
          image: 'assets/images/elektronik/headphone.png',
          rating: 4.8,
          reviews: 450,
          description: 'Headphone nirkabel dengan fitur peredam bising aktif. Nikmati musik favoritmu tanpa gangguan suara luar.',
        ),
        Product(
          name: 'Smart Watch Gen 5',
          category: 'Elektronik',
          price: 1200000,
          image: 'assets/images/elektronik/smartwatch.png',
          rating: 4.5,
          reviews: 890,
          description: 'Jam tangan pintar yang bisa memantau detak jantung, kualitas tidur, dan notifikasi pesan langsung dari pergelangan tangan.',
        ),
        Product(
          name: 'Kamera Mirrorless',
          category: 'Elektronik',
          price: 8500000,
          image: 'assets/images/elektronik/kamera.png',
          rating: 4.9,
          reviews: 210,
          description: 'Kamera kompak dengan kualitas gambar profesional. Cocok untuk vlog dan fotografi traveling dengan hasil tajam.',
        ),
      ];
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    final products = getProducts();

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          category,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16),
            
            // Grid 2 kolom
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.75,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductCard(
                    product: product,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailScreen(
                            product: product,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
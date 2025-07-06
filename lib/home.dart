import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,

        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Promo',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // 🔍 Search bar & icons
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0x5EABD6).withOpacity(0.9),

                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Colors.white.withOpacity(0.3)),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Colors.white),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          "ابحث عن منتج أو غيره..",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 12),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.mic, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // 🕌 Waktu Salat card
            Container(
              padding: const EdgeInsets.all(16),

              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/syria2.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),

                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "الظّهْر",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const Text(
                    "		١١.٢٥",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "ساعة و ٢٥ دقيقة حتى صلاة الظهر",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white70,
                            size: 16,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "دمشق، سوريا",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.my_location),
                    label: Text(
                      "تحديث الموقع",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0x06923E),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // 🧭 Menu horizontal
            SizedBox(
              height: 90,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    menuButton("سوق", Icons.store, () {}),
                    menuButton("منتجات محلية", Icons.local_mall, () {}),
                    menuButton("الملابس الإسلامية", Icons.checkroom, () {}),
                    menuButton("العطور الشرقية", Icons.spa, () {}),
                    menuButton("كتب وأدوات", Icons.menu_book, () {}),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // 🖼️ Carousel placeholder
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Color(0xFF5EABD6).withOpacity(0.9),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            const SizedBox(height: 8),
            const Center(child: Text("● ○ ○ ○ ○")),

            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Artikel",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                ),
                Text("Lihat Semua"),
              ],
            ),
            const SizedBox(height: 8),

            artikelCard(),
            artikelCard(),
            artikelCard(),
            artikelCard(),
            artikelCard(),
            artikelCard(),
            artikelCard(),
          ],
        ),
      ),
    );
  }

  // Widget menuItem(String label) {
  //   return Padding(
  //     padding: const EdgeInsets.only(right: 16),
  //     child: Column(
  //       children: [
  //         CircleAvatar(backgroundColor: Colors.grey[300], radius: 28),
  //         const SizedBox(height: 4),
  //         Text(label, style: const TextStyle(fontSize: 12)),
  //       ],
  //     ),
  //   );
  // }

  Widget menuButton(String label, IconData icon, VoidCallback onTap) {
    return Container(
      width: 90, // Lebar tombol
      height: 90, // Tinggi tombol
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xFF5EABD6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 28, color: Colors.white),
            const SizedBox(height: 8),
            Text(
              label,
              textAlign: TextAlign.center,

              textDirection: TextDirection.rtl,
              style: const TextStyle(fontSize: 12, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget artikelCard() {
    return Card(
      color: Color(0x5EABD6).withOpacity(0.9),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.6),
            borderRadius: BorderRadius.circular(30),
          ),
          // color: Color(0x06923E).withOpacity(0.9),
        ),
        title: const Text("Lorem ipsum dolor sit amet"),
        subtitle: const Text("09.00, 28 Sep 2022"),
      ),
    );
  }
}

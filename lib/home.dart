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
      body: 
      
      SafeArea(

        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // 🔍 Search bar & icons
            ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Color(0x5EABD6).withOpacity(0.9),
                    
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Colors.white.withOpacity(0.3))
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
                color: Color(0x57B4BA).withOpacity(1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Dzuhur", style: TextStyle(color: Colors.white)),
                  const Text(
                    "	٢	٢.١١",
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "1 jam 25 menit lagi Dzuhur",
                        style: TextStyle(color: Colors.white70),
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
                            "Depok, Jawa Barat",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.my_location),
                    label: const Text("Update Lokasi"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800],
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
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  menuItem("Ibadah"),
                  menuItem("Berbagi.link"),
                  menuItem("Jualanku"),
                  menuItem("Amademy"),
                  menuItem("Bisatopup"),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // 🖼️ Carousel placeholder
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            const SizedBox(height: 8),
            const Center(child: Text("● ○ ○ ○ ○")),

            const SizedBox(height: 16),

            // 📰 Artikel
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Artikel",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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

  Widget menuItem(String label) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          CircleAvatar(backgroundColor: Colors.grey[300], radius: 28),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget artikelCard() {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Container(width: 48, height: 48, color: Colors.grey[300]),
        title: const Text("Lorem ipsum dolor sit amet"),
        subtitle: const Text("09.00, 28 Sep 2022"),
      ),
    );
  }
}

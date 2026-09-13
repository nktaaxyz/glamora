import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget{
    const DashboardScreen({super.key});

    static const Color pinkPastel = Color(0xFFF8C8DC);
    static const Color pinkSoft = Color(0xFFFFE5EF);
    static const Color cream = Color(0xFFFFF9F5);
    static const Color textColor = Color(0xFF4A4A4A);
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: cream,


            appBar: AppBar(
                backgroundColor: cream,
                elevation: 0,
                title: const Text(
                    'Glamora',
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                ),
            ),
                actions: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                            Icons.notifications_none,
                            color: textColor,
                        ),
                    ),
                ],
            ),

            body: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        const Text(
                            'Haloo',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                            ),
                        ),

                        const SizedBox(height: 15),

                        const Text(
                            'Mau perawatan apa hari ini?',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                            ),
                        ),

                        const SizedBox(height: 5),

                        TextField(
                            decoration: InputDecoration(
                                hintText: 'Cari layanan...',
                                hintStyle: const TextStyle(
                                    color: Colors.grey,
                                ),
                                prefixIcon: const Icon(
                                    Icons.search,
                                    color: textColor,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide.none,
                                ),
                            ),
                        ),

                        const SizedBox(height: 30),

                        const Text(
                            'Layanan Populer',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: textColor,
                            ),
                        ),

                        const SizedBox(height: 15),

                        SizedBox(
                            height: 180,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                    _serviceCard(
                                        'Haircut',
                                        'Rp50.000',
                                        Icons.content_cut,
                                        pinkPastel,
                                    ),
                                     _serviceCard(
                                        'Hair Spa',
                                        'Rp100.000',
                                        Icons.spa,
                                        const Color(0xFFDCC6E0),
                                     ),
                                      _serviceCard(
                                        'Manicure',
                                        'Rp75.000',
                                        Icons.back_hand,
                                        const Color(0xFFC9E4F6),
                                     ),
                                ],
                            ),
                        ),

                        const SizedBox(height: 30),

                        const Text(
                            'Booking Saya',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: textColor,
                            ),
                        ),

                        const SizedBox(height: 15),

                        Card(
                            color: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(18),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                        const Text(
                                            'Hair Spa',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                color: textColor,
                                            ),
                                        ),

                                        const SizedBox(height: 10),

                                        const Text(
                                            'Stylist: Alya',
                                            style: TextStyle(
                                                color: Colors.grey,
                                            ),
                                        ),

                                        const SizedBox(height: 5),

                                        const Text(
                                            '15 September 2026 - 14.00',
                                            style: TextStyle(
                                                color: Colors.grey,
                                            ),
                                        ),

                                        const SizedBox(height: 15),

                                        Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 14,
                                                vertical: 7,
                                            ),
                                            decoration: BoxDecoration(
                                                color: pinkSoft,
                                                borderRadius: BorderRadius.circular(20),
                                            ),
                                            child: const Text(
                                                'Confirmed',
                                                style: TextStyle(
                                                    color: Color(0xFFD46A92),
                                                    fontWeight: FontWeight.w600,
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ),
                    ],
                ),
            ),


            bottomNavigationBar: BottomNavigationBar(
                currentIndex: 0,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                selectedItemColor: const Color(0xFFd46A92),
                unselectedItemColor: Colors.grey,
                items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.spa),
                        label: 'Layanan',
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.history),
                        label: 'Profil',
                    ),
                ],
            ),
        );
    }

    Widget _serviceCard(
        String name,
        String price,
        IconData icon,
        Color cardColor,
    ) {
        return Container(
            width: 145,
            margin: const EdgeInsets.only(right: 15),
            child: Card(
                color: cardColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                            Icon(
                                icon,
                                size: 45,
                                color: textColor,
                            ),

                            const SizedBox(height: 12),

                            Text(
                                name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: textColor,
                                ),
                            ),

                            const SizedBox(height :5),

                            Text(
                                price,
                                style: const TextStyle(
                                    color: textColor,
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}
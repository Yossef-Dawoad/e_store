import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'home_screen.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80.0,
        elevation: 0.0,
        selectedIndex: currentIndex,
        onDestinationSelected: (idx) => setState(() => currentIndex = idx),
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'wishlist'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
      ),
      body: switch (currentIndex) {
        0 => const HomeScreen(),
        1 => const Center(child: Text('store')),
        2 => const Center(child: Text('wishlist')),
        _ => const Center(child: Text('Profile')),
      },
    );
  }
}

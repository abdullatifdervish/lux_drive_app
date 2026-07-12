import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF131B2E),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profil bölümü
              Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: const Color(0xFF263049),
                    child: Text(
                      "AD",
                      style: TextStyle(
                        color: Colors.blue[300],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Abdullatif Darwish",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Abdo.der@email.com",
                        style: TextStyle(color: Colors.grey[400], fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(color: Colors.grey[800], height: 32),
              _drawerItem(icon: Icons.home, label: "Home", selected: true),
              _drawerItem(
                icon: Icons.directions_car_outlined,
                label: "My bookings",
              ),
              _drawerItem(icon: Icons.favorite_border, label: "Favorites"),
              _drawerItem(icon: Icons.credit_card, label: "Payment methods"),
              _drawerItem(icon: Icons.help_outline, label: "Help and support"),

              const Spacer(),
              Divider(color: Colors.grey[800]),
              _drawerItem(
                icon: Icons.logout,
                label: "Log out",
                color: Colors.red[400],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _drawerItem({
  required IconData icon,
  required String label,
  bool selected = false,
  Color? color,
}) {
  return InkWell(
    onTap: () {},
    borderRadius: BorderRadius.circular(10),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF1C2436) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: color ?? (selected ? Colors.blue[400] : Colors.grey[400]),
            size: 20,
          ),
          SizedBox(width: 14),
          Text(
            label,
            style: TextStyle(
              color: color ?? (selected ? Colors.white : Colors.grey[300]),
              fontSize: 15,
              fontWeight: selected ? FontWeight.w500 : FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  );
}

import 'package:bookapp/app/mainapp/widget/drawertile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 25,
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        child: Text(
                          "Minnal Murali",
                          style: theme.textTheme.displaySmall,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Name name",
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              DrawerTile(
                  onTap: () {},
                  title: "Home",
                  icn: Icons.home,
                  isSelected: false),
              DrawerTile(
                  onTap: () {},
                  title: "Starred",
                  icn: Icons.star_rounded,
                  isSelected: false),
              DrawerTile(
                  onTap: () {},
                  title: "Recent",
                  icn: Icons.access_time,
                  isSelected: false),
              DrawerTile(
                  onTap: () {},
                  title: "Setting",
                  icn: Icons.settings_rounded,
                  isSelected: false),
              const SizedBox(height: 20),
              Container(
                width: 200,
                height: 35,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Log Out"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

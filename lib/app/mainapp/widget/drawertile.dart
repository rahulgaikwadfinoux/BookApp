import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final void Function() onTap;
  final String title;
  final IconData icn;
  final bool isSelected;
  const DrawerTile({
    Key? key,
    required this.onTap,
    required this.title,
    required this.icn,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Icon(icn),
            SizedBox(width: 20),
            Text(
              title,
              style: theme.textTheme.bodyLarge,
            ),
            Spacer(flex: 5),
          ],
        ),
      ),
    );
  }
}

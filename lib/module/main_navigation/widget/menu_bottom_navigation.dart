// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MenuBottomNavigation extends StatefulWidget {
  const MenuBottomNavigation({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
    required this.currentIndex,
    required this.index,
  }) : super(key: key);
  final IconData icon;
  final String label;
  final Function() onTap;
  final int currentIndex;
  final int index;

  @override
  State<MenuBottomNavigation> createState() => _MenuBottomNavigationState();
}

class _MenuBottomNavigationState extends State<MenuBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    bool selected = widget.currentIndex == widget.index;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.18,
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
          color: selected ? Colors.green : Colors.white,
          width: 2,
        ))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(widget.icon),
            const SizedBox(
              height: 3.0,
            ),
            Text(
              widget.label,
              style: const TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

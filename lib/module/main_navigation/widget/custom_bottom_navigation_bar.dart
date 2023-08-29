// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    Key? key,
    required this.items,
    required this.onTap,
    required this.currentIndex,
  }) : super(key: key);
  final List<CustomBottomNavigationBarItem> items;
  final ValueChanged<int> onTap;
  final int currentIndex;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomButtomNavigationBarState();
}

class _CustomButtomNavigationBarState extends State<CustomBottomNavigationBar> {
  // int _selectedIndex = 0;

  // void _handleTap(int index) {
  //   widget.onTap(index);
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          widget.items.length,
          (index) => _buildItem(index),
        ),
      ),
    );
  }

  Widget _buildItem(int index) {
    CustomBottomNavigationBarItem item = widget.items[index];
    bool isSelected = index == widget.currentIndex;

    return GestureDetector(
      onTap: () => widget.onTap(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(12),
          border: Border(
            top: BorderSide(
              color: isSelected ? item.activeColor : Colors.transparent,
              width: 2.0,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            item.isSvg
                ? SvgPicture.asset(
                    item.icon, // Path to your SVG asset
                    colorFilter: ColorFilter.mode(
                        isSelected ? item.activeColor : item.inactiveColor,
                        BlendMode.srcIn),
                  )
                : Icon(
                    item.icon,
                    color: isSelected ? item.activeColor : item.inactiveColor,
                  ),
            const SizedBox(height: 5),
            Text(
              item.label,
              style: TextStyle(
                color: isSelected ? Colors.black : item.inactiveColor,
                fontWeight: isSelected ? FontWeight.bold : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBottomNavigationBarItem {
  final dynamic icon;
  final String label;
  final Color activeColor;
  final Color inactiveColor;
  final bool isSvg;
  CustomBottomNavigationBarItem({
    required this.icon,
    required this.label,
    required this.activeColor,
    required this.inactiveColor,
    this.isSvg = false,
  });
}

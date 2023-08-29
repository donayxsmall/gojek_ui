// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gojek_ui/core/theme/theme_config.dart';

class TransactionMenu extends StatelessWidget {
  const TransactionMenu({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  final String icon;
  final String label;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              color: Color(0xffFFFFFF),
            ),
            child: SvgPicture.asset(
              icon,
              color: blue1,
            ),
          ),
          const SizedBox(
            height: 7.0,
          ),
          Text(
            label,
            style: semibold14.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BadgeComponent extends StatelessWidget {
  const BadgeComponent(
      {super.key,
      required this.color,
      required this.label,
      required this.pathIcon});
  final Color color;
  final String label;
  final String pathIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.5, vertical: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            pathIcon,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(label,
              style: const TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white))
        ],
      ),
    );
  }
}

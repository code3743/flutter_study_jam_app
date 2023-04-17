import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconComponent extends StatelessWidget {
  const IconComponent({super.key, required this.color, required this.pathIcon});
  final Color color;
  final String pathIcon;

  @override
  Widget build(BuildContext context) {
    final isSelect = ValueNotifier(false);
    return ValueListenableBuilder(
      valueListenable: isSelect,
      builder: (_, isSelecteValue, __) => GestureDetector(
        onTap: () {
          isSelect.value = !isSelect.value;
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: isSelecteValue ? color : null,
              shape: BoxShape.circle,
              boxShadow: isSelecteValue
                  ? [
                      BoxShadow(
                          color: color.withOpacity(.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(-2, 5))
                    ]
                  : null),
          child: SvgPicture.asset(
            pathIcon,
            fit: BoxFit.contain,
            colorFilter: !isSelecteValue
                ? ColorFilter.mode(color, BlendMode.srcIn)
                : null,
          ),
        ),
      ),
    );
  }
}

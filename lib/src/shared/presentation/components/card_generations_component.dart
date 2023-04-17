import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardGenerationComponent extends StatelessWidget {
  const CardGenerationComponent(
      {super.key,
      required this.pathPokemonGeneration,
      required this.generations});
  final Color _colorSelected = const Color(0xFFEA5D60);
  final Color _colorUnSelected = const Color(0xFFF2F2F2);
  final List<String> pathPokemonGeneration;
  final String generations;
  @override
  Widget build(BuildContext context) {
    final isSelect = ValueNotifier(false);
    return ValueListenableBuilder(
      valueListenable: isSelect,
      builder: (_, isSelectValue, __) => GestureDetector(
        onTap: () => isSelect.value = !isSelect.value,
        child: Container(
          width: 160,
          height: 129,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: isSelectValue ? _colorSelected : _colorUnSelected,
              boxShadow: isSelectValue
                  ? [
                      BoxShadow(
                          color: _colorSelected.withOpacity(.2),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(-2, 5))
                    ]
                  : null),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                  left: 15,
                  top: 10,
                  child: SvgPicture.asset('assets/images/svgs/Pattern.svg',
                      colorFilter: !isSelectValue
                          ? const ColorFilter.mode(
                              Color(0xFFB4B4B4), BlendMode.srcIn)
                          : null)),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: SvgPicture.asset('assets/images/svgs/Pokeball.svg',
                      colorFilter: !isSelectValue
                          ? const ColorFilter.mode(
                              Color(0xFFB4B4B4), BlendMode.srcIn)
                          : null)),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      bottom: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (String path in pathPokemonGeneration)
                          ImagePokemonGeneration(
                            pathImagePokemon: path,
                          ),
                      ],
                    ),
                  ),
                  Text(generations,
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: isSelectValue
                              ? Colors.white
                              : const Color(0xFF747476))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImagePokemonGeneration extends StatelessWidget {
  const ImagePokemonGeneration({
    super.key,
    required this.pathImagePokemon,
  });
  final String pathImagePokemon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      height: 45,
      child: Image.asset(
        pathImagePokemon,
        fit: BoxFit.contain,
      ),
    );
  }
}

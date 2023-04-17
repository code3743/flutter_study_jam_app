import 'package:flutter/material.dart';

import '../components/components.dart';

class ComponentsPage extends StatelessWidget {
  const ComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Study Jam Components'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Wrap(
                spacing: 10,
                runSpacing: 5,
                children: [
                  for (RecursosPokemon dato in _listadoDatos)
                    BadgeComponent(
                        color: Color(dato.primaryColor),
                        label: dato.label,
                        pathIcon: dato.pathIcon),
                ],
              ),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: Expanded(
                  child: ListView.builder(
                    itemCount: _listadoDatos.length,
                    itemBuilder: (_, i) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconComponent(
                          color: Color(_listadoDatos[i].primaryColor),
                          pathIcon: _listadoDatos[i].pathIcon),
                    ),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Row(
                children: [
                  for (DatosPokemon dato in _datosHeights)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconComponent(
                          color: Color(dato.primaryColor),
                          pathIcon: dato.pathIcon),
                    )
                ],
              ),
              Row(
                children: [
                  for (DatosPokemon dato in _datosWeight)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconComponent(
                          color: Color(dato.primaryColor),
                          pathIcon: dato.pathIcon),
                    )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CardGenerationComponent(
                    generations: 'Generations I',
                    pathPokemonGeneration: [
                      'assets/images/001.png',
                      'assets/images/004.png',
                      'assets/images/007.png'
                    ],
                  ),
                  CardGenerationComponent(
                    generations: 'Generations II',
                    pathPokemonGeneration: [
                      'assets/images/152.png',
                      'assets/images/155.png',
                      'assets/images/158.png'
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class DatosPokemon {
  final String pathIcon;
  final int primaryColor;
  DatosPokemon(this.pathIcon, this.primaryColor);
}

class RecursosPokemon extends DatosPokemon {
  final String label;

  RecursosPokemon(String pathIcon, this.label, int primaryColor)
      : super(pathIcon, primaryColor);
}

List<DatosPokemon> _datosHeights = [
  DatosPokemon('assets/icons/svgs/Heights (1).svg', 0xFFFFC5E6),
  DatosPokemon('assets/icons/svgs/Heights (2).svg', 0xFFAEBFD7),
  DatosPokemon('assets/icons/svgs/Heights (3).svg', 0xFFAAACB8),
];
List<DatosPokemon> _datosWeight = [
  DatosPokemon('assets/icons/svgs/Weights (1).svg', 0xFF99CD7C),
  DatosPokemon('assets/icons/svgs/Weights (2).svg', 0xFF57B2DC),
  DatosPokemon('assets/icons/svgs/Weights (3).svg', 0xFF5A92A5),
];

List<RecursosPokemon> _listadoDatos = [
  RecursosPokemon('assets/icons/svgs/Bug.svg', 'Bug', 0xFF8CB230),
  RecursosPokemon('assets/icons/svgs/Dark.svg', 'Dark', 0xFF58575F),
  RecursosPokemon('assets/icons/svgs/Dragon.svg', 'Dragon', 0xFF0F6AC0),
  RecursosPokemon('assets/icons/svgs/Electric.svg', 'Electric', 0xFFEED535),
  RecursosPokemon('assets/icons/svgs/Fairy.svg', 'Fairy', 0xFFED6EC7),
  RecursosPokemon('assets/icons/svgs/Fighting.svg', 'Fighting', 0xFFD04164),
  RecursosPokemon('assets/icons/svgs/Fire.svg', 'Fire', 0xFFFD7D24),
  RecursosPokemon('assets/icons/svgs/Flying.svg', 'Flying', 0xFF748FC9),
  RecursosPokemon('assets/icons/svgs/Ghost.svg', 'Ghost', 0xFF556AAE),
  RecursosPokemon('assets/icons/svgs/Grass.svg', 'Grass', 0xFF62B957),
  RecursosPokemon('assets/icons/svgs/Ground.svg', 'Ground', 0xFFDD7748),
  RecursosPokemon('assets/icons/svgs/Ice.svg', 'Ice', 0xFF61CEC0),
  RecursosPokemon('assets/icons/svgs/Normal.svg', 'Normal', 0xFF9DA0AA),
  RecursosPokemon('assets/icons/svgs/Poison.svg', 'Poison', 0xFFA552CC),
  RecursosPokemon('assets/icons/svgs/Psychic.svg', 'Psychic', 0xFFEA5D60),
  RecursosPokemon('assets/icons/svgs/Rock.svg', 'Rock', 0xFFBAAB82),
  RecursosPokemon('assets/icons/svgs/Steel.svg', 'Steel', 0xFF417D9A),
  RecursosPokemon('assets/icons/svgs/Water.svg', 'Water', 0xFF4A90DA),
];

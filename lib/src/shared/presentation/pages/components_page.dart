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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              IconComponent(
                color: Colors.red,
                pathIcon: 'assets/icons/svgs/Dark.svg',
              ),
              BadgeComponent(
                  color: Colors.red,
                  label: 'Water',
                  pathIcon: 'assets/icons/svgs/Water.svg')
            ],
          ),
        ));
  }
}

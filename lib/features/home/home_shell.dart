import 'package:agenda/core/app_section.dart';
import 'package:flutter/material.dart';

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            destinations: appSections.map(
              (section) => NavigationRailDestination(
                icon: Icon(section.icon),
                label: Text(section.label),
              ),
            ).toList(),
            selectedIndex: _selectedIndex,
            labelType: NavigationRailLabelType.all,
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          VerticalDivider(width: 1),
          Expanded(child: appSections[_selectedIndex].page),
        ],
      ),
    );
  }
}

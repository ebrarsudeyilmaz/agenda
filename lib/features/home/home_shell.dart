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
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return _buildWide(context);
        } else {
          return _buildNarrow(context);
        }
      },
    );
  }

  Widget _buildWide(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            destinations: appSections
                .map(
                  (section) => NavigationRailDestination(
                    icon: Icon(section.icon),
                    label: Text(section.label),
                  ),
                )
                .toList(),
            selectedIndex: _selectedIndex,
            labelType: NavigationRailLabelType.all,
            onDestinationSelected: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          const VerticalDivider(width: 1),
          Expanded(child: appSections[_selectedIndex].page),
        ],
      ),
    );
  }

  Widget _buildNarrow(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appSections[_selectedIndex].label)),
      drawer: NavigationDrawer(
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
          Navigator.pop(context);
        },
        selectedIndex: _selectedIndex,
        children: appSections
            .map(
              (section) => NavigationDrawerDestination(
                icon: Icon(section.icon),
                label: Text(section.label),
              ),
            )
            .toList(),
      ),
      body: appSections[_selectedIndex].page,
    );
  }
}

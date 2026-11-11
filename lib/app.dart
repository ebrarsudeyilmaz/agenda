import 'package:agenda/features/home/home_shell.dart';
import 'package:flutter/material.dart';
import 'core/app_theme.dart';

class AgendaApp extends StatelessWidget {
  const AgendaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: const HomeShell(),
    );
  }
}

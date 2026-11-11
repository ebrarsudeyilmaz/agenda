import 'package:agenda/features/home/home_shell.dart';
import 'package:flutter/material.dart';

class AgendaApp extends StatelessWidget {
  const AgendaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda',
      debugShowCheckedModeBanner: false,
      home: const HomeShell(),
    );
  }
}

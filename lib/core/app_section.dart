import 'package:agenda/features/birthdays/birthdays_page.dart';
import 'package:agenda/features/books/books_page.dart';
import 'package:agenda/features/daily/daily_page.dart';
import 'package:agenda/features/monthly/monthly_page.dart';
import 'package:agenda/features/mood/mood_page.dart';
import 'package:agenda/features/research/research_page.dart';
import 'package:agenda/features/weekly/weekly_page.dart';
import 'package:flutter/material.dart';

class AppSection {
  final String label;
  final Widget page;
  final IconData icon;

  const AppSection({
    required this.label,
    required this.icon,
    required this.page,
  });
}

const List<AppSection> appSections = [
  AppSection(label: 'Daily', icon: Icons.today, page: DailyPage()),
  AppSection(label: 'Weekly', icon: Icons.view_week, page: WeeklyPage()),
  AppSection(label: 'Monthly', icon: Icons.calendar_month, page: MonthlyPage()),
  AppSection(label: 'Mood', icon: Icons.mood, page: MoodPage()),
  AppSection(label: 'Books', icon: Icons.menu_book, page: BooksPage()),
  AppSection(label: 'Birthdays', icon: Icons.cake, page: BirthdaysPage()),
  AppSection(label: 'Research', icon: Icons.lightbulb, page: ResearchPage()),
];

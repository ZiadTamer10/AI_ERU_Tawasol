import 'package:ai_eru_tawasol/features/home/presentation/view/widgets/home_bottom_navigation_bar.dart';
import 'package:ai_eru_tawasol/features/home/presentation/view/widgets/home_floating_action_button.dart.dart';
import 'package:ai_eru_tawasol/features/home/presentation/view/widgets/pages.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int currentIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: HomeBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onItemTapped,
      ),
      floatingActionButton: HomeFloatingActionButton(),
    );
  }
}

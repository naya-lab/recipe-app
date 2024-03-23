// ignore: file_names
import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final List<String> tabNames;
  final List<Color> tabColors;
  final Function(int) onTabChanged;
  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabNames,
    required this.tabColors,
    required this.onTabChanged,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: tabNames.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onTabChanged(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 90,
                height: 5,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: tabController.index == index
                        ? const Color.fromARGB(
                            40, 0, 0, 0) // Set the indicator color when tapped
                        : const Color.fromARGB(187, 255, 255,
                            255), // Set the indicator color when not tapped
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  color: tabColors[index],
                ),
                child: Center(
                  child: Text(
                    tabNames[index],
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

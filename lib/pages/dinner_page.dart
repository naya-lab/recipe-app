import 'package:flutter/material.dart';
import 'package:recipecakey/compenets/My_tabBar.dart';

// ignore: camel_case_types
class dinner extends StatefulWidget {
  const dinner({super.key});

  @override
  State<dinner> createState() => _dinnerState();
}

class _dinnerState extends State<dinner> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 171, 152),
        title: const Text('D I N N E R'),
      ),
      body: Column(
        children: [
          MyTabBar(
            tabNames: const [
              'FAST',
              'EASY',
              'MED',
              'HARD',
              'BANQUET',
            ],
            tabColors: const [
              Color.fromARGB(255, 237, 238, 187),
              Color.fromARGB(255, 238, 187, 187),
              Color.fromARGB(255, 187, 238, 232),
              Color.fromARGB(255, 222, 178, 238),
              Color.fromARGB(255, 178, 238, 199),
            ],
            onTabChanged: _onTabChanged,
            tabController: _tabController,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildTab1Content(),
                _buildTab2Content(),
                _buildTab3Content(),
                _buildTab4Content(),
                _buildTab5Content(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onTabChanged(int index) {
    setState(() {
      _tabController.index = index;
    });
  }

  Widget _buildTab1Content() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            _buildRowWithImageAndText(
              imagePath: 'assets/images/caprese.jpeg',
              time: '10 MIN',
              dishName: 'Caprese Sandwichch',
              description:
                  'a classic Italian sandwich made with tomatoes, fresh mozzarella cheese, and basil....',
            ),
            _buildRowWithImageAndText(
              imagePath: 'assets/images/noodles.webp',
              time: '15 MIN',
              dishName: 'Stir-Fried Noodles with Vegetables',
              description:
                  'Quick and flavorful noodles stir-fried with an assor...',
            ),
            _buildRowWithImageAndText(
              imagePath: 'assets/images/chi.jpeg',
              time: '14 MIN',
              dishName: 'Greek Salad with Grilled Chicken',
              description:
                  'A refreshing salad combining crisp lettuce, juicy...',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRowWithImageAndText({
    required String imagePath,
    required String time,
    required String dishName,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 18),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  time,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  dishName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 9),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

//============================
//EASY
//=============================
  Widget _buildTab2Content() {
    return const Center(
      child: Text(
        'Sorry, no contenent to display',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
  //=============
  // med
  //==============

  Widget _buildTab3Content() {
    return const Center(
      child: Text(
        'Sorry, no contenent to display',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
//==============
// hard
//==============

  Widget _buildTab4Content() {
    return const Center(
      child: Text(
        'Sorry, no contenent to display',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
//================
// PANQUET
//================

  Widget _buildTab5Content() {
    return const Center(
      child: Text(
        'Sorry, no contenent to display',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}

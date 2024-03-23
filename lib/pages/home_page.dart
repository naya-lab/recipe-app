import 'package:flutter/material.dart';
import 'package:recipecakey/pages/lunch_page.dart';
import 'package:recipecakey/pages/dinner_page.dart';
import 'package:recipecakey/pages/breakfast_page.dart';
import 'package:recipecakey/pages/snack_page.dart';

class HomePage extends StatefulWidget {
  // ignore: use_super_parameters
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 229, 212),
      body: ListView(
        children: const [
          hi(),
          Meals(),
          Meals1(),
          Meals2(),
          Meals3(),
        ],
      ),
    );
  }
}

class hi extends StatelessWidget {
  // ignore: use_super_parameters
  const hi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 25.0, left: 30.0, top: 50),
      child: Text(
        'Good Evening',
        style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 147, 0, 0)),
      ),
    );
  }
}

class Meals extends StatelessWidget {
  // ignore: use_super_parameters
  const Meals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to another page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Breakfast()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 25.0, left: 25.0, top: 50),
        child: Container(
          padding: const EdgeInsets.all(24),
          height: 140.0,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 221, 152),
            image: DecorationImage(
              image: AssetImage('assets/images/breakfast.png'),
              fit: BoxFit.fitHeight,
              alignment: Alignment.centerRight,
            ),
          ),
          child: const Text(
            'Breakfast',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class Meals1 extends StatelessWidget {
  // ignore: use_super_parameters
  const Meals1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to another page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const lunch()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: 25.0,
          left: 25.0,
          top: 25,
        ),
        child: Container(
          padding: const EdgeInsets.all(24),
          height: 140.0,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 190, 152),
            image: DecorationImage(
              image: AssetImage('assets/images/lunch.png'),
              fit: BoxFit.fitHeight,
              alignment: Alignment.centerRight,
            ),
          ),
          child: const Text(
            'Lunch',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class Meals2 extends StatelessWidget {
  // ignore: use_super_parameters
  const Meals2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to another page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const dinner()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: 25.0,
          left: 25.0,
          top: 25,
        ),
        child: Container(
          padding: const EdgeInsets.all(24),
          height: 140.0,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 171, 152),
            image: DecorationImage(
              image: AssetImage('assets/images/dinner.png'),
              fit: BoxFit.fitHeight,
              alignment: Alignment.centerRight,
            ),
          ),
          child: const Text(
            'Dinner',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class Meals3 extends StatelessWidget {
  // ignore: use_super_parameters
  const Meals3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to another page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const snack()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: 25.0,
          left: 25.0,
          top: 25,
        ),
        child: Container(
          padding: const EdgeInsets.all(24),
          height: 90.0,
          decoration: const BoxDecoration(
            color: Color.fromARGB(150, 255, 190, 152),
          ),
          child: const Center(
            child: Text(
              'Snack',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

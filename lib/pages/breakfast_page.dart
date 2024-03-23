import 'package:flutter/material.dart';
import 'package:recipecakey/compenets/My_tabBar.dart';

class Breakfast extends StatefulWidget {
  const Breakfast({Key? key}) : super(key: key);

  @override
  State<Breakfast> createState() => _BreakfastState();
}

class _BreakfastState extends State<Breakfast>
    with SingleTickerProviderStateMixin {
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
        backgroundColor: const Color.fromARGB(255, 255, 221, 152),
        title: const Text('B R E A K F A S T'),
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
              imagePath: 'assets/images/chesseSand.jpeg',
              time: '10 MIN',
              dishName: 'Muhammara and Cheese Sandwich',
              description: 'In this dish, warm pita bread is...',
            ),
            _buildRowWithImageAndText(
              imagePath: 'assets/images/cookie.jpeg',
              time: '10 MIN',
              dishName: 'Peanut Butter & Chia Berry Jam English Muffin',
              description: 'The addition of chia seeds in the...',
            ),
            _buildRowWithImageAndText(
              imagePath: 'assets/images/mango.jpeg',
              time: '10 MIN',
              dishName: 'Raspberry-Peach-Mango Smoothie Bowl',
              description: 'This healthy smoothie recipe is...',
            ),
            _buildRowWithImageAndText(
              imagePath: 'assets/images/avocado.jpeg',
              time: '10 MIN',
              dishName: 'Avocado & Kale Omelet',
              description:
                  'Make this kale and avocado omelet for a satiating, high-protein breakfast. Fiber-rich...',
            ),
            _buildRowWithImageAndText(
              imagePath: 'assets/images/oats.jpeg',
              time: '10 MIN',
              dishName: 'Quick-Cooking Oats',
              description:
                  'Sometimes basic is better. At breakfast, that can certainl...',
            ),
            _buildRowWithImageAndText(
              imagePath: 'assets/images/smoothie.jpeg',
              time: '10 MIN',
              dishName: 'Spinach, Peanut Butter & Banana Smoothie',
              description:
                  'Peanut butter and banana is a classic combo that...',
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            _buildRowWithImageAndTextEasy(
              imagePath: 'assets/images/bits.jpeg',
              time: '35 MIN',
              dishName: 'B.E.C. Breakfast Bites',
              description:
                  'Upgrade this A.M. classic by folding your favorite sando toppings into ...',
            ),
            _buildRowWithImageAndTextEasy(
              imagePath: 'assets/images/apple.jpeg',
              time: '1H 25 MIN',
              dishName: 'Double Apple Baked Oatmeal',
              description:
                  'Freeze leftover portions for a hearty, ready-made breakfast...',
            ),
            _buildRowWithImageAndTextEasy(
              imagePath: 'assets/images/nachos.jpeg',
              time: '10 MIN',
              dishName: 'Waffle Nachos',
              description:
                  'Use waffles instead of chips as the base for this fun breakfast. Consider it the perfect vehicle...',
            ),
            _buildRowWithImageAndTextEasy(
              imagePath: 'assets/images/oatmeal.jpeg',
              time: '10 MIN',
              dishName: 'Oatmeal with Apricots and Pistachios',
              description:
                  'Nutty tahini, chopped apricots and crunchy pistachios eleva...',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRowWithImageAndTextEasy({
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
  //=============
  // med
  //==============

  Widget _buildTab3Content() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            _buildRowWithImageAndTextMed(
              imagePath2: 'assets/images/frita.jpeg',
              time2: '30 MIN',
              dishName2: 'Vegetable Frittata',
              description2:
                  'A vegetable frittata is a versatile and satisfying dish that is perfect for breakfast or brunch. It...',
            ),
            _buildRowWithImageAndTextMed(
              imagePath2: 'assets/images/bannana.jpeg',
              time2: '20 MIN',
              dishName2: 'Banana Pancakes',
              description2:
                  'TBanana pancakes are a delightful twist on the classic breakfast favorite, combining the sweetness of ripe bananas with the fluffy..',
            ),
            _buildRowWithImageAndTextMed(
              imagePath2: 'assets/images/toast.jpeg',
              time2: '20 MIN',
              dishName2: 'Avocado Toast with Poached Eggs',
              description2:
                  'This Simple Poached Egg and Avocado Toast recipe is so sim...',
            ),
            _buildRowWithImageAndTextMed(
              imagePath2: 'assets/images/greek.jpeg',
              time2: '10 MIN',
              dishName2: 'Greek Yogurt Parfait',
              description2:
                  'This Greek Yogurt Parfait recipe combines creamy Greek yogurt, fresh berries, and crunchy...',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRowWithImageAndTextMed({
    required String imagePath2,
    required String time2,
    required String dishName2,
    required String description2,
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
                  image: AssetImage(imagePath2),
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
                  time2,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  dishName2,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 9),
                Text(
                  description2,
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
//==============
// hard
//==============

  Widget _buildTab4Content() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            _buildRowWithImageAndTextHard(
              imagePath3: 'assets/images/pand.jpeg',
              time3: '40 MIN',
              dishName3: 'Eggs Benedict',
              description3:
                  'Poached eggs served on toasted English muffinss...',
            ),
            _buildRowWithImageAndTextHard(
              imagePath3: 'assets/images/Croissants.jpeg',
              time3: '24 H',
              dishName3: 'Croissants',
              description3:
                  'Making flaky, buttery croissants from scratch requires skill in laminating dough, whic...',
            ),
            _buildRowWithImageAndTextHard(
              imagePath3: 'assets/images/shakshuka.webp',
              time3: '45 MIN',
              dishName3: 'Shakshuka',
              description3:
                  'This North African and Middle Eastern dish features poached eggs in a spic...',
            ),
            _buildRowWithImageAndTextHard(
              imagePath3: 'assets/images/cakes.jpeg',
              time3: '35 MIN',
              dishName3: 'Soufflé Pancakes',
              description3:
                  'These Japanese-style pancakes are incredibly fluffy and light. Achieving the right tex...',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRowWithImageAndTextHard({
    required String imagePath3,
    required String time3,
    required String dishName3,
    required String description3,
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
                  image: AssetImage(imagePath3),
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
                  time3,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  dishName3,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 9),
                Text(
                  description3,
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
//================
// PANQUET
//================

  Widget _buildTab5Content() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            _buildRowWithImageAndTextPan(
              imagePath4: 'assets/images/salmon.jpeg',
              time4: '30 MIN',
              dishName4: 'Eggs Benedict with Smoked Salmon',
              description4:
                  'A classic breakfast dish featuring perfectly poached eggs served...',
            ),
            _buildRowWithImageAndTextPan(
              imagePath4: 'assets/images/mush.jpeg',
              time4: '15 MIN',
              dishName4: 'Truffle-infused Mushroom Omelette',
              description4:
                  'A luxurious omelette filled with sautéed mushrooms infused wit...',
            ),
            _buildRowWithImageAndTextPan(
              imagePath4: 'assets/images/Lobster.jpeg',
              time4: '32 MIN',
              dishName4: 'Lobster and Avocado Toast',
              description4:
                  'Decadent lobster meat delicately placed on top of toasted...',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRowWithImageAndTextPan({
    required String imagePath4,
    required String time4,
    required String dishName4,
    required String description4,
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
                  image: AssetImage(imagePath4),
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
                  time4,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  dishName4,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 9),
                Text(
                  description4,
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
}

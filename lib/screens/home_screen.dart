import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int page = 1;

  final PageController pageController = new PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Flutter App $page'),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          CustomPage(color: Colors.blue),
          CustomPage(color: Colors.red),
          CustomPage(color: Colors.green)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page,
        onTap: (index) {
          page = index;
          pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.easeOut);
          setState(() {});
        },
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'User',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Settings')
        ],
      ),
    );
  }
}

class CustomPage extends StatelessWidget {
  final Color color;

  const CustomPage({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(child: Icon(Icons.settings)),
    );
  }
}

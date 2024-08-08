import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nextbus/widgets/custom_button.dart';
import 'package:nextbus/widgets/custom_form_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late TextEditingController startLocationController;
  late TextEditingController endLocationController;

  @override
  void initState() {
    super.initState();
    startLocationController = TextEditingController();
    endLocationController = TextEditingController();
  }

  @override
  void dispose() {
    startLocationController.dispose();
    endLocationController.dispose();
    super.dispose();
  }

  List<Widget> _buildPages() {
    return [
      Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFF8EAFF),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/front.jpeg')
                  ),
                  const SizedBox(height: 40),
                  CustomFormField(
                    hintText: 'Start Location',
                    controller: startLocationController,
                  ),
                  const SizedBox(height: 20),
                  CustomFormField(
                    hintText: 'End Location',
                    controller: endLocationController,
                  ),
                  const SizedBox(height: 40),
                  CustomButton(
                      text: 'Search',
                      onPressed: (){},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      const Center(child: Text('Settings')),
    ];
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPages()[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

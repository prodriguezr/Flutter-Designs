import 'package:designs/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // Put your code here to create your variables

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background
          BackgroundWidget(),
          // HomeBody
          _HomeBody()
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Page title
          PageTitle(),
          // Card table
          CardTable(),
        ],
      ),
    );
  }
}

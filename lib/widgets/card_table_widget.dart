import 'dart:ui';
import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            text: 'General',
            color: Colors.blue,
            icon: Icons.border_all_outlined,
          ),
          _SingleCard(
            text: 'Transport',
            color: Colors.purple,
            icon: Icons.car_rental,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            text: 'Shopping',
            color: Colors.blue,
            icon: Icons.shopping_bag_outlined,
          ),
          _SingleCard(
              text: 'Bills',
              color: Colors.yellow,
              icon: Icons.backup_table_outlined),
        ]),
        TableRow(children: [
          _SingleCard(
            text: 'Entertainment',
            color: Colors.blueAccent,
            icon: Icons.present_to_all_outlined,
          ),
          _SingleCard(
            text: 'Grocery',
            color: Colors.green,
            icon: Icons.baby_changing_station,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            text: 'General',
            color: Colors.blue,
            icon: Icons.border_all,
          ),
          _SingleCard(
            text: 'Transport',
            color: Colors.pinkAccent,
            icon: Icons.car_rental,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            text: 'General',
            color: Colors.blue,
            icon: Icons.border_all,
          ),
          _SingleCard(
            text: 'Transport',
            color: Colors.pinkAccent,
            icon: Icons.car_rental,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            text: 'General',
            color: Colors.blue,
            icon: Icons.border_all,
          ),
          _SingleCard(
            text: 'Transport',
            color: Colors.pinkAccent,
            icon: Icons.car_rental,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            text: 'General',
            color: Colors.blue,
            icon: Icons.border_all,
          ),
          _SingleCard(
            text: 'Transport',
            color: Colors.pinkAccent,
            icon: Icons.car_rental,
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  const _SingleCard(
      {Key? key, required this.text, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CardBackground(text: text, icon: icon, color: color);
  }
}

class _CardBackground extends StatelessWidget {
  const _CardBackground({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: _Button(
              text: this.text,
              icon: this.icon,
              color: this.color,
            ),
          ),
        ),
      ),
    );
  }
}

class _Button extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  const _Button(
      {Key? key, required this.text, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            size: 40,
            color: Colors.white,
          ),
          radius: 40,
        ),
        SizedBox(
          height: 20,
        ),
        Text('$text',
            style: TextStyle(
              fontSize: 20,
              color: this.color,
            )),
      ],
    );
  }
}

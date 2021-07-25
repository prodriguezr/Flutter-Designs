import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  // Put your code here to create your variables

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/landscape.jpg'),
          ),
          Title(),
          // Button Section
          ButtonSection(),
          // Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Text(
              'Incididunt sit excepteur officia reprehenderit amet nostrud velit dolor ipsum veniam velit ea. Aliqua culpa esse voluptate laborum et dolor cillum laborum nostrud aliquip veniam. Nostrud tempor duis non cupidatat laborum incididunt. Aliquip magna irure commodo irure et quis. Aliquip ea nisi aliquip id ut laboris adipisicing cillum dolor deserunt.',
              style: TextStyle(wordSpacing: 10),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteng, Switwerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          SizedBox(
            width: 5,
          ),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Button(
            text: 'call',
            icon: Icons.call,
          ),
          Button(
            text: 'route',
            icon: Icons.router,
          ),
          Button(
            text: 'share',
            icon: Icons.share,
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final IconData icon;

  const Button({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.blue,
          size: 40,
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          '${text.toUpperCase()}',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

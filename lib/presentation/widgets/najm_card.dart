import 'package:flutter/material.dart';

class NajmCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPress;
  const NajmCard(
      {Key? key, required this.icon, required this.text, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return GestureDetector(
      onTap: onPress,
      child: Card(
          elevation: 15,
          //color: Colors.orange,
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Icon(
                    icon, size: 50.0,
                    //color: textStyle.color,
                  )),
                  Text(
                    text,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ]),
          )),
    );
  }
}

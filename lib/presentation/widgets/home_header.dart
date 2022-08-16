import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        //  boxShadow: [BoxShadow(color: Colors.black)],
        color: Colors.grey[300],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/sohil_star.jpeg'),
            radius: 35,
          ),
          SizedBox(width: 8),
          Text(
            'Welcome to sohil Star',
            style: Theme.of(context).textTheme.headline5,
            softWrap: true,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:najem/generated/l10n.dart';

class ImportanceScreen extends StatelessWidget {
  const ImportanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(S.of(context).SohilImport),
          backgroundColor: Colors.transparent,
        ),
        body: ListView(
          shrinkWrap: true,
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            //     Image.network('https://www9.0zz0.com/2022/06/10/02/839721263.jpg'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white70,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    S.of(context).importanceContent,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

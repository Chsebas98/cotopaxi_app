import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: SizedBox(
        width: 400,
        height: 160,
        child: Row(
          children: [
            Expanded(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
         Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
           margin: const EdgeInsets.fromLTRB(25, 0, 0, 0),
          elevation: 10,
          color: Colors.transparent,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(17),
            child: Container(
              width: 200, 
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://cdn0.bioenciclopedia.com/es/posts/1/5/1/alpaca_151_orig.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
          ],
        )
      ),
      Card(
          color: Colors.white,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            bottomLeft: Radius.circular(0),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10)
          )),
           margin: const EdgeInsets.fromLTRB(0, 0, 25, 0),
          elevation: 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(17),
            child: Container(
              width: 150, 
              height: 90,
              alignment: Alignment.center,
              child: const Text('Alpaca',
              style:  TextStyle(fontSize: 20, fontFamily: 'LeagueSpartan')),
            ),
          ),
        ),
            ],
          ),
        )
      ),
    );
  }
}
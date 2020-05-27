import 'package:flutter/material.dart';
import 'package:nutri/card.dart';

class CardDetailScreen extends StatelessWidget {
  final Meal meal;

  const CardDetailScreen({Key key, this.meal}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/diet.jpg"),
            ),
            backgroundColor: const Color(0xffE9E9E9),
          ),
          SliverList(
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class VisitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE9E9E9),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 12,),
              child: ListTile(
                title: Center(
                  child: Text('DONATE', style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Philosopher"
                  ),),
                ),
                subtitle: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset("assets/donate.png", color: Colors.black54,),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Donate to Help Fight COVID-19", style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                        )
                      ],
                    )
                  ],
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nutri/contact.dart';
import 'package:nutri/corona.dart';
import 'package:nutri/stayhome.dart';
import 'package:nutri/visit.dart';

import 'card.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int i;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffE9E9E9),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        child: BottomNavigationBar(
          iconSize: 29,
          selectedIconTheme: IconThemeData(
              color: Colors.teal
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.black26,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.home,
                ),
              ),
              title: Text('home', style: TextStyle(color: Colors.white),),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.search,
                ),
              ),
              title: Text('searcg'
                  'search', style: TextStyle(color: Colors.white),),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.person,
                ),
              ),
              title: Text('profile', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            height: height * 0.35,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(40)),
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 41, left: 22, right: 16, bottom: 10),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text("nutrifrnd", style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: Colors.teal,
                        fontFamily: "Philosopher"

                      ),),
                      trailing: Image.asset("assets/unisex.png"),
                      subtitle: Text(
                        "Your Well Wisher, Your Friend!", style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Philosopher"
                      ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Welcome to nutrifrnd,", style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.teal,
                        fontSize: 23,
                        fontFamily: "Philosopher"
                      ),
                      ),
                      subtitle: Center(
                        child: Text(
                          "Personalized Diet Planning Based on Medical Condition    for Infants & Elders.", style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          fontFamily: "Philosopher"
                        ),
                        ),
                      ),
                      trailing: Image.asset("assets/hand.png", height: 89, width: 83,),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.38,
            left: 0,
            right: 0,
            height: height * 0.53,
            child: Container(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(

                    padding: EdgeInsets.only(
                      bottom: 8,
                      left: 32,
                      right: 16,
                    ),
                    child: Text(
                        "ACTIVITIES",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Colors.black54,
                        )
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 32,
                          ),
                          for ( i = 0; i < meals.length; i++)
                            _MealCard(
                              meal: meals[i],
                            )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  Expanded(
                    //this the most ModernInspired UI 
                    //why you shud use expanded Widget.
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10, left: 32, right: 32,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(26)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color(0xFF009688),
                            const Color(0xFF48C0A4),
                          ],
                        ),
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(top:2.0, left: 16),
                            child: Text('Also Visit', style: TextStyle(
                              color: Colors.tealAccent,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 1.0, left: 16),
                            child: Text('Fight COVID-19', style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),),
                          ),
                          SizedBox(height: 27,),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => VisitScreen(),
                                  ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xFF44BEA3),
                                  ),
                                  padding: const EdgeInsets.all(19),
                                  child: Image.asset("assets/donate.png",
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => CoronaScreen(),
                                  ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xFF44BEA3),
                                  ),
                                  padding: const EdgeInsets.all(19),
                                  child: Image.asset("assets/corona.png",
                                    width: 30,
                                    height: 30,),),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => StayHomeScreen(),
                                  ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xFF44BEA3),
                                  ),
                                  padding: const EdgeInsets.all(19),
                                  child: Image.asset("assets/home.png",
                                    width: 30,
                                    height: 30,),),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ContactUsScreen(),
                                  ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xFF44BEA3),
                                  ),
                                  padding: const EdgeInsets.all(19),
                                  child: Image.asset("assets/us.png",
                                    width: 30,
                                    height: 30,),),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          )
                        ],
                      ),
//                      color: Colors.blue,
//                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MealCard extends StatelessWidget {
  final Meal meal;

  const _MealCard({Key key, @required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, bottom: 10,),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20),),
                  child: Image.asset(
                    meal.imagepath,
                    width: 150,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    SizedBox(height: 10,),
                    Text(meal.mealTime, style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.black54,
                    ),),
                    Text(meal.timetaken, style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.black54,
                    ),),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'Tab1.dart';
import 'Tab2.dart';
import 'Tab3.dart';
import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../component/customdata.dart';
import '../constants.dart';
import 'result_page.dart';
import '../component/bottom_button.dart';
import '../component/roundiconbutton.dart';
import '../calculator_brain.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('Dictionary'),
          backgroundColor: Colors.green,
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset('asset/forest.jpg', fit: BoxFit.cover),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 900.0,
          delegate: SliverChildListDelegate(
            [
              DefaultTabController(
                length: 3,
                child: Scaffold(

                  appBar: AppBar(
//                    title: Card(
//                      child: TextField(
//                        decoration: InputDecoration(
//                            border: InputBorder.none,
//                            hintText: 'What are you looking for?'
//                        ),
//                      ),
//                    ),
                    bottom: TabBar(
                      tabs: [
                        Tab(icon: Icon(Icons.home),text: 'Home', ),
                        Tab(icon: Icon(Icons.favorite), text: 'Favourites',),
                        Tab(icon: Icon(Icons.recent_actors), text: 'Recent',),
                      ],
                    ),
                    // title: Text('Tabs Demo'),
                  ),
                  body: TabBarView(
                    children: [
                      ResultsPage(),
                      Tab2(),
                      Tab3()
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}






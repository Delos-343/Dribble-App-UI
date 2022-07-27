// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dribble_app_ui/util/emoticon_face.dart';
import 'package:dribble_app_ui/util/exercise_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_back), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  // Greetings Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hello World
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Halo, Fachry",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "07/19/2022",
                            style: TextStyle(color: Colors.blue[100]),
                          ),
                        ],
                      ),
                      // Notifications
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(18),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // Search Bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.blue[100],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "  Search",
                          style: TextStyle(
                            color: Colors.blue[100],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  // How Are You Feeling Today?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How Are You Feeling Today?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  // 4 Different Ratings
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      // Ayyo
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '🤨',
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Ayyo',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      // N/A Okay
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😟',
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'N/A',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      // Fine
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😊',
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      // Excellent
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😄',
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Excellent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                ),
                child: Center(
                  child: Column(
                    children: [
                      // Exercises
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.blue[800],
                            ),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.blue[800],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),

                      // Listview of exercises / to-do
                      Expanded(
                        child: ListView(
                          children: [
                            ExerciseTile(
                              icon: Icons.military_tech,
                              bgColor: Colors.grey[700],
                              exerciseName: '12 Kilomike',
                              numberOfExercises: 'Hiking : 7 km left',
                            ),
                            ExerciseTile(
                              icon: Icons.bike_scooter,
                              bgColor: Colors.blue,
                              exerciseName: 'Car-Free Day',
                              numberOfExercises: 'Biking : 18 km left',
                            ),
                            ExerciseTile(
                              icon: Icons.directions_run,
                              bgColor: Colors.red,
                              exerciseName: 'Vine Run',
                              numberOfExercises: 'Sprint : 120 m left',
                            ),
                            ExerciseTile(
                              icon: Icons.computer,
                              bgColor: Colors.purple,
                              exerciseName: 'Dev 101',
                              numberOfExercises: 'Coding : 2 projects left',
                            ),
                            ExerciseTile(
                              icon: Icons.book,
                              bgColor: Colors.amber,
                              exerciseName: 'Novelty',
                              numberOfExercises: 'Read : 1 book left',
                            ),
                          ],
                        ),
                      ),
                    ],
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

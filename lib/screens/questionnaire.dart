import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tourism_app/screens/es.dart';
import 'dart:ui' show lerpDouble;

void main() {
  runApp(QuestionnaireApp());
}

class QuestionnaireApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Questionnaire',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QuestionnaireScreen(),
    );
  }
}

class QuestionnaireScreen extends StatefulWidget {
  @override
  _QuestionnaireScreenState createState() => _QuestionnaireScreenState();
}

class _QuestionnaireScreenState extends State<QuestionnaireScreen> {
  late String budget;
  String? tripDuration;
  late String historicalPlaces;
  late String ancientCivilization;
  late String desertCamping;
  late String nauticalPlaces;
  late String provincePreference;
  late String ruralPlaces;
  late String hotelRating;
  late String roomType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lets Start..',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Q1. What is your budget?',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 13, 58, 95),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30.0),
                Wrap(
                  spacing: 16.0,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          budget = 'medium';
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question2(budget: budget)),
                        );
                      },
                      child: const Text(
                        'Medium',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 13, 58, 95),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          budget = 'big';
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question2(budget: budget)),
                        );
                      },
                      child: const Text(
                        'Big',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Color.fromARGB(255, 13, 58, 95),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Question2 extends StatefulWidget {
  final String budget;

  Question2({required this.budget});
  @override
  _Question2State createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  late String tripDuration;
  late final budget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('One More...',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Q2. Do you prefer a short trip or a long trip?',
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),
              Wrap(
                spacing: 23.0,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        tripDuration = 'one_day';
                      });

                      if (widget.budget == 'medium' &&
                          tripDuration == 'one_day') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ItineraryScreen()),
                        );
                      } else if (widget.budget == 'big' &&
                          tripDuration == 'one_day') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ItineraryScreen2(budget: widget.budget)),
                        );
                      }
                      ;
                    },
                    child: const Text(
                      'One-day trip',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        tripDuration = 'multiple_days';
                      });
                      if (widget.budget == 'big' &&
                          tripDuration == 'multiple_days') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question3(
                                    budget: widget.budget,
                                    tripDuration: tripDuration,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          tripDuration == 'multiple_days') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question3(
                                    budget: widget.budget,
                                    tripDuration: tripDuration,
                                  )),
                        );
                      }
                    },
                    child: const Text(
                      'Multiple days',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Question3 extends StatefulWidget {
  final String budget;
  final String tripDuration;

  const Question3({
    required this.budget,
    required this.tripDuration,
  });
  @override
  _Question3State createState() => _Question3State();
}

class _Question3State extends State<Question3> {
  late String historicalPlaces;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('One More...',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Q3. Do you prefer historical places?',
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),
              Wrap(
                spacing: 18.0,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        historicalPlaces = 'yes';
                      });
                      if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          historicalPlaces == 'yes') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Question4(
                              budget: widget.budget,
                              tripDuration: widget.tripDuration,
                              historicalPlaces: historicalPlaces,
                            ),
                          ),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          historicalPlaces == 'yes') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Question4(
                              budget: widget.budget,
                              tripDuration: widget.tripDuration,
                              historicalPlaces: historicalPlaces,
                            ),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      'Yes',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        historicalPlaces = 'no';
                      });
                      if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          historicalPlaces == 'no') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Question6(
                              budget: widget.budget,
                              tripDuration: widget.tripDuration,
                              historicalPlaces: historicalPlaces,
                              ancientCivilization: '',
                            ),
                          ),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          historicalPlaces == 'no') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Question6(
                              budget: widget.budget,
                              tripDuration: widget.tripDuration,
                              historicalPlaces: historicalPlaces,
                              ancientCivilization: '',
                            ),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      'No',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Question4 extends StatefulWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;

  // Ajout du type String?

  const Question4({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
  });

  @override
  _Question4State createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  late String ancientCivilization;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose...',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Q4. Which ancient civilizations do you like to see in Algeria?',
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40.0),
              Wrap(
                direction:
                    Axis.vertical, // Pour disposer les éléments verticalement
                spacing: 30.0, // Espacement entre les boutons
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ancientCivilization = 'Numidian';
                      });
                      if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          ancientCivilization == 'Numidian') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question6(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: ancientCivilization,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          ancientCivilization == 'Numidian') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question6(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: ancientCivilization,
                                  )),
                        );
                      }
                      // Proceed to next question or screen
                    },
                    child: const Text(
                      'Numidian',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ancientCivilization = 'Roman';
                      });
                      if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          ancientCivilization == 'Roman') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question6(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: ancientCivilization,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          ancientCivilization == 'Roman') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question6(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: ancientCivilization,
                                  )),
                        );
                      }
                    },
                    child: const Text(
                      'Roman',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ancientCivilization = 'Islamic';
                      });
                      if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          ancientCivilization == 'Islamic') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question6(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: ancientCivilization,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          ancientCivilization == 'Islamic') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question6(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: ancientCivilization,
                                  )),
                        );
                      }
                      // Proceed to next question or screen
                    },
                    child: const Text(
                      'Islamic',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Question6 extends StatefulWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  const Question6({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
  });
  @override
  _Question6State createState() => _Question6State();
}

class _Question6State extends State<Question6> {
  late String desertCamping;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('One More...',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Q5. Do you like camping in the desert?',
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),
              Wrap(
                spacing: 8.0,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        desertCamping = 'yes';
                      });
                      if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          desertCamping == 'yes') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question7(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: desertCamping,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          desertCamping == 'yes') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question7(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: desertCamping,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          desertCamping == 'yes') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question7(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: desertCamping,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          desertCamping == 'yes') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question7(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: desertCamping,
                                  )),
                        );
                        // Proceed to next question or screen
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          desertCamping == 'yes') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question7(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: desertCamping,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          desertCamping == 'yes') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question7(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: desertCamping,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          desertCamping == 'yes') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question7(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: desertCamping,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          desertCamping == 'yes') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question7(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: desertCamping,
                                  )),
                        );
                        // Proceed to next question or screen
                      }
                    },
                    child: const Text(
                      'Yes',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        desertCamping = 'no';
                      });
                      if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          desertCamping == 'no') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question7(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: desertCamping,
                                  )),
                        );
                        // Proceed to next question or screen
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          desertCamping == 'no') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question7(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: desertCamping,
                                  )),
                        );
                        // Proceed to next question or screen
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          desertCamping == 'no') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question7(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: desertCamping,
                                  )),
                        );
                        // Proceed to next question or screen
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          desertCamping == 'no') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question7(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: desertCamping,
                                  )),
                        );
                        // Proceed to next question or screen
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          desertCamping == 'no') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question7(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: desertCamping,
                                  )),
                        );
                        // Proceed to next question or screen
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          desertCamping == 'no') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question7(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: desertCamping,
                                  )),
                        );
                        // Proceed to next question or screen
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          desertCamping == 'no') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question7(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: desertCamping,
                                  )),
                        );
                        // Proceed to next question or screen
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          desertCamping == 'no') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question7(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: desertCamping,
                                  )),
                        );
                        // Proceed to next question or screen
                      }
                    },
                    child: const Text(
                      'No',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Question7 extends StatefulWidget {
  final String ancientCivilization;
  final String historicalPlaces;
  final String budget;
  final String tripDuration;
  final String desertCamping;
  Question7(
      {required this.budget,
      required this.tripDuration,
      required this.historicalPlaces,
      required this.ancientCivilization,
      required this.desertCamping});
  @override
  _Question7State createState() => _Question7State();
}

class _Question7State extends State<Question7> {
  late String nauticalPlaces;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Try..',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Q6. Do you prefer to visit nautical places?',
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),
              Wrap(
                spacing: 8.0,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nauticalPlaces = 'yes';
                      });
                      if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          nauticalPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question8(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          nauticalPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question8(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          nauticalPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question8(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          nauticalPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question8(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          nauticalPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question8(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          nauticalPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question8(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          nauticalPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question8(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          nauticalPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question8(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          nauticalPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question8(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          nauticalPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question8(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          nauticalPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question8(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          nauticalPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question8(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          nauticalPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question8(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          nauticalPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question8(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          nauticalPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question8(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          nauticalPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question8(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                  )),
                        );
                      }
                    },
                    child: const Text(
                      'Yes',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        nauticalPlaces = 'no';
                      });
                      if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          nauticalPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                    provincePreference: '',
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          nauticalPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                    provincePreference: '',
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          nauticalPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                    provincePreference: '',
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          nauticalPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                    provincePreference: '',
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          nauticalPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                    provincePreference: '',
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          nauticalPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                    provincePreference: '',
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          nauticalPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                    provincePreference: '',
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          nauticalPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                    provincePreference: '',
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          nauticalPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                    provincePreference: '',
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          nauticalPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                    provincePreference: '',
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          nauticalPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                    provincePreference: '',
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          nauticalPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                    provincePreference: '',
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          nauticalPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                    provincePreference: '',
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          nauticalPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                    provincePreference: '',
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          nauticalPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                    provincePreference: '',
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          nauticalPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: nauticalPlaces,
                                    provincePreference: '',
                                  )),
                        );
                      }
                    },
                    child: const Text(
                      'No',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Question8 extends StatefulWidget {
  final String ancientCivilization;
  final String historicalPlaces;
  final String budget;
  final String tripDuration;
  final String desertCamping;
  final String nauticalPlaces;
  Question8({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
  });
  @override
  _Question8State createState() => _Question8State();
}

class _Question8State extends State<Question8> {
  late String provincePreference;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose...',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Q8. Which province do you prefer to visit in Algeria?',
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),
              Wrap(
                direction:
                    Axis.vertical, // Pour disposer les éléments verticalement
                spacing: 25.0, // Espacement entre les boutons
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        provincePreference = 'alger';
                      });

                      if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'alger') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'alger') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'alger') {
                        // ignore: curly_braces_in_flow_control_strunoctures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'alger') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      }
                      if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'alger') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'alger') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'alger') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'alger') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'alger') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'alger') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'alger') {
                        // ignore: curly_braces_in_flow_control_strunoctures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'alger') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'alger') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'alger') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'alger') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'alger') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      }
                    },
                    child: const Text(
                      'alger',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        provincePreference = 'Oran';
                      });
                      if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Oran') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Oran') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Oran') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Oran') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Oran') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Oran') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Oran') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Oran') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Oran') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Oran') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Oran') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Oran') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Oran') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Oran') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Oran') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Oran') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      }
                    },
                    child: const Text(
                      'Oran',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        provincePreference = 'Annaba';
                      });
                      if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Annaba') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Annaba') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Annaba') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Annaba') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Annaba') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Annaba') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Annaba') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Annaba') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Annaba') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Annaba') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Annaba') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Annaba') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Annaba') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Annaba') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Annaba') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Annaba') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      }
                    },
                    child: const Text(
                      'Annaba',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        provincePreference = 'Bejaia';
                      });
                      if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Bejaia') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Bejaia') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Bejaia') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Bejaia') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Bejaia') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Bejaia') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Bejaia') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Bejaia') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Bejaia') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Bejaia') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Bejaia') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Bejaia') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Bejaia') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Bejaia') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Bejaia') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          provincePreference == 'Bejaia') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Question9(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: provincePreference,
                                  )),
                        );
                      }
                    },
                    child: const Text(
                      'Bejaia',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Add logic to select province

class Question9 extends StatefulWidget {
  final String ancientCivilization;
  final String historicalPlaces;
  final String budget;
  final String tripDuration;
  final String desertCamping;
  final String nauticalPlaces;
  final String provincePreference;

  Question9({
    required this.ancientCivilization,
    required this.historicalPlaces,
    required this.budget,
    required this.tripDuration,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.provincePreference,
  });
  @override
  _Question9State createState() => _Question9State();
}

class _Question9State extends State<Question9> {
  late String ruralPlaces;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('And we are Done...',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Q9. Do you prefer rural places?',
                style: TextStyle(
                  fontSize: 18.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30.0),
              Wrap(
                spacing: 8.0,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ruralPlaces = 'yes';
                      });

                      if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'yes') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigBudgetMultipleDaysScreenAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigBudgetMultipleDaysScreenOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigBudgetMultipleDaysScreenAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigBudgetMultipleDaysScreenBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetRomanAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetRomanOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetRomanAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetRomanBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetIslamicAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetIslamicOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetIslamicAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetIslamicBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetNONauticalNumidian(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetNONauticalRoman(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetNONauticalIslamic(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNumdianNODesertAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNumdianNODesertOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNumdianNODesertAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNumdianNODesertBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetRomanNODesertAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetRomanNODesertOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetRomanNODesertAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetRomanNODesertBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetIslamicNODesertAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetIslamicNODesertOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetIslamicNODesertAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetIslamicNODesertBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNOHistoricalNODesertOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNOHistoricalNODesertAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNOHistoricalNODesertBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNOHistoricalNODesertAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNOHistoricalNONautical(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNOHistoricalNODesertNONautical(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNumidianNODesertNONautical(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetRomanNODesertNONautical(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetIslamicNODesertNONautical(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNumidianAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNumidianOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNumidianAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNumidianBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetRomanAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetRomanOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetRomanAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetRomanBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetIslamicAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetIslamicOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetIslamicAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetIslamicBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNoHisAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNoHisOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNoHisAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNoHisBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNodesertNumidianAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNodesertNumidianOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNodesertNumidianAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNodesertNumidianBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNodesertRomanAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNodesertRomanOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNodesertRomanAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNodesertRomanBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNodesertIslamicAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNodesertIslamicOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNodesertIslamicAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNodesertIslamicBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNoNauticalNumidian(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNoNauticalRoman(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNoNauticalIslamic(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNoNauticalNoHistorical(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNoHisNoDesertAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNoHisNoDesertOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNoHisNoDesertAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetNoHisNoDesertBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNoeverButRural(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetINoDesertNoNauNumidian(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetINoDesertNoNauRoman(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetINoDesertNoNauIslamic(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      }
                    },
                    child: const Text(
                      'Yes',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ruralPlaces = 'no';
                      });
                      if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNumidianNORuralAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNumidianNORuralOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNumidianNORuralAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNumidianNORuralBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetRomanNORuralAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetRomanNORuralOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetRomanNORuralAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetRomanNORuralBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetIslamicNORuralAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetIslamicNORuralOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetIslamicNORuralAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetIslamicNORuralBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetNOHisNORuralAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetNOHisNORuralOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetNOHisNORuralAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetNOHisNORuralBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNumidianNODesertNORuralAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNumidianNODesertNORuralOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNumidianNODesertNORuralAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNumidianNODesertNORuralBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetRomanNODesertNORuralAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetRomanNODesertNORuralOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetRomanNODesertNORuralAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetRomanNODesertNORuralBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetIslamicNODesertNORuralAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetIslamicNODesertNORuralOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetIslamicNODesertNORuralAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetIslamicNODesertNORuralBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetNOHistoricalNONauticalNORural(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetHistoricalNONauticalNumidiann(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetHistoricalNONauticalRomann(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BigbudgetHistoricalNONauticalIslamicc(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetNudmidianEverNO(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetRomanEverNO(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetIslamicEverNO(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetAlgerEverNO(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetOranEverNO(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetAnnabaEverNO(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BigbudgetBejaiaEverNO(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'big' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EndScreen(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNNoRuralAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNNoRuralOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNNoRuralAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNNoRuralBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetRNoRuralAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetRNoRuralOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNNoRuralAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetRNoRuralBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetINoRuralAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetINoRuralOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetINoRuralAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetINoRuralBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetINoRuralNoHisNoNau(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetINoDesertNoNauNumidianNOR(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetINoDesertNoNauRomanNOR(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'yes') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetINoDesertNoNauRomanNOR(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetINoDesertNoNauIslamicNOR(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNoeverButAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNoeverButOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNoeverButAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetNoeverButBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetnoNnoRNumidian(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetnoNnoRRoman(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'yes' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MediumbudgetnoNnoRIslamic(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetnodesnoruralNumidianAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetnodesnoruralNumidianOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetnodesnoruralNumidianAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Numidian' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetnodesnoruralNumidianBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetnodesnoruralRomanAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetnodesnoruralRomanOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetnodesnoruralRomanAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Roman' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetnodesnoruralRomanBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'alger' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetnodesnoruralIslamicAlger(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Oran' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetnodesnoruralIslamicOran(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Annaba' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetnodesnoruralIslamicAnnaba(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'yes' &&
                          widget.ancientCivilization == 'Islamic' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'yes' &&
                          widget.provincePreference == 'Bejaia' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  MediumbudgetnodesnoruralIslamicBejaia(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization:
                                        widget.ancientCivilization,
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference:
                                        widget.provincePreference,
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      } else if (widget.budget == 'medium' &&
                          widget.tripDuration == 'multiple_days' &&
                          widget.historicalPlaces == 'no' &&
                          widget.desertCamping == 'no' &&
                          widget.nauticalPlaces == 'no' &&
                          ruralPlaces == 'no') {
                        // ignore: curly_braces_in_flow_control_structures
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EndScreen(
                                    budget: widget.budget,
                                    tripDuration: widget.tripDuration,
                                    historicalPlaces: widget.historicalPlaces,
                                    ancientCivilization: '',
                                    desertCamping: widget.desertCamping,
                                    nauticalPlaces: widget.nauticalPlaces,
                                    provincePreference: '',
                                    ruralPlaces: ruralPlaces,
                                  )),
                        );
                      }
                    },
                    child: const Text(
                      'No',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Color.fromARGB(255, 13, 58, 95),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EndScreen extends StatelessWidget {
  final String ancientCivilization;
  final String historicalPlaces;
  final String budget;
  final String tripDuration;
  final String desertCamping;
  final String nauticalPlaces;
  final String provincePreference;
  final String ruralPlaces;

  EndScreen({
    required this.ancientCivilization,
    required this.historicalPlaces,
    required this.budget,
    required this.tripDuration,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.provincePreference,
    required this.ruralPlaces,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedback for our app',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Oops! It seems you havent selected any option ',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                },
                child: const Text(
                  'Restart',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 13, 58, 95),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigBudgetMultipleDaysScreenAlger extends StatefulWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  BigBudgetMultipleDaysScreenAlger({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });

  @override
  _BigBudgetMultipleDaysScreenState createState() =>
      _BigBudgetMultipleDaysScreenState();
}

class _BigBudgetMultipleDaysScreenState
    extends State<BigBudgetMultipleDaysScreenAlger> {
  late String ancientCivilization;
  late String historicalPlaces;
  late String tripDuration;
  late String desertCamping;
  late String nauticalPlaces;
  late String ruralPlaces;
  late String provincePreference;

  @override
  void initState() {
    super.initState();
    ancientCivilization = widget.ancientCivilization;
    historicalPlaces = widget.historicalPlaces;
    tripDuration = widget.tripDuration;
    desertCamping = widget.desertCamping;
    nauticalPlaces = widget.nauticalPlaces;
    ruralPlaces = widget.ruralPlaces;
    provincePreference = widget.provincePreference;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your best plan',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Day 1 - Algiers:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              Text(
                  'Begin your exploration in Algiers with a visit to the Kasbah, followed by the Grand Mosque and the Mosque of El Emir Abdelkader.'),
              Text('Enjoy leisure time at Sidi Fredj Port and Vigie Beach.'),
              Text('Overnight at the Sheraton Hotel.'),
              Text(
                  'Transport: Use local taxis or hire a car for intra-city travel.'),
              SizedBox(height: 16.0),
              Text(
                'Day 2 - Djemila:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              Text(
                  'Catch a scheduled flight to Djemila to explore the ancient Roman and Numidian ruins.'),
              Text('Relax at the Azdif Hotel.'),
              Text('Transport: Fly from Algiers to Djemila.'),
              SizedBox(height: 16.0),
              Text(
                'Day 3 - Timimoun:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              Text(
                  'Conclude your journey in Timimoun, immersing yourself in picturesque oases and local culture.'),
              Text(
                  'Transport: Arrange ground transportation through the Azdif Hotel for local travel.'),
              SizedBox(height: 16.0),
              Text(
                'Estimated Budget:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              Text(
                  'The estimated budget for this trip, covering transportation, accommodation, meals, as well as hotel and other miscellaneous expenses is 72000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigBudgetMultipleDaysScreenOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigBudgetMultipleDaysScreenOran({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discovering Timgad:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Start your journey by exploring Timgad, a well-preserved ancient Roman city. '
                'Discover its fascinating history by visiting the archaeological ruins, temples, theaters, and baths.',
              ),
              SizedBox(height: 10),
              Text(
                'Transportation:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Flight: Take a flight to Batna Airport, which is the nearest airport to Timgad.\n'
                'Taxi/Rental Car: From the airport, take a taxi or rent a car to reach Timgad (approximately 35 km).',
              ),
              SizedBox(height: 10),
              Text(
                'Accommodation:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Spend your day at the Tardjan Hotel, a 5-star hotel offering luxurious services and relaxation after your exploration.',
              ),
              SizedBox(height: 20),
              Text(
                'Discovering Numidian Civilization in Annaba:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Head to Hippo Regius in Annaba to delve into the history of the Numidian civilization. '
                'Visit the ancient ruins, museums, and learn more about this historical period.',
              ),
              SizedBox(height: 10),
              Text(
                'Enjoy the rural landscapes of Seraïdi, a picturesque village in the Edough mountains, offering panoramic views and hiking trails.',
              ),
              SizedBox(height: 10),
              Text(
                'Transportation:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Flight: Take a flight from Batna to Annaba.\n'
                'Taxi/Rental Car: Use a taxi or rent a car for local travel in Annaba and to Seraïdi (about 13 km from Annaba).',
              ),
              SizedBox(height: 10),
              Text(
                'Accommodation:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Spend the night at the Sheraton Hotel in Annaba, a luxury hotel offering exceptional comfort and top-notch services.',
              ),
              SizedBox(height: 20),
              Text(
                'Desert Discovery:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Discover the desert by exploring the Gouraya National Park.',
              ),
              SizedBox(height: 10),
              Text(
                'Transportation:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Flight: Take a flight from Annaba to Béjaïa Airport.\n'
                'Taxi/Rental Car: From Béjaïa, take a taxi or rent a car to reach the Gouraya National Park.',
              ),
              SizedBox(height: 10),
              Text(
                'Arrange an excursion with a local guide for an immersive desert experience.',
              ),
              SizedBox(height: 20),
              Text(
                'Ending the Trip in Oran:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Enjoy a relaxing day at Les Andalouses Beach, known for its crystal-clear waters and fine sand.',
              ),
              SizedBox(height: 10),
              Text(
                'Visit the Basilica of Notre-Dame de Santa Cruz, perched on Mount Murdjadjo, offering panoramic views of Oran and its surroundings.',
              ),
              SizedBox(height: 10),
              Text(
                'Transportation:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Flight: Take a flight from Béjaïa to Oran.\n'
                'Taxi/Rental Car: Use a taxi or rent a car for local travel in Oran and to Les Andalouses Beach (about 25 km from the city center).',
              ),
              SizedBox(height: 10),
              Text(
                'Accommodation:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Spend the night at the Les Andalouses Tourist Complex, a resort offering top-notch leisure and relaxation facilities.',
              ),
              SizedBox(height: 20),
              Text(
                'Total Estimated Cost: 15,0000 DA',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'The estimated budget for this trip includes:',
              ),
              SizedBox(height: 5),
              Text(
                'Transportation: Domestic flights, taxis, and rental cars for intra-city and inter-city travel.\n'
                'Accommodation: Stays in 5-star hotels and tourist complexes.\n'
                'Meals: Cost of meals at hotels and local restaurants.\n'
                'Entrance Fees: Entry fees for museums, historical sites, and national parks.\n'
                'Miscellaneous Expenses: Other expenses such as tips, souvenirs, and additional activities.',
              ),
              SizedBox(height: 10),
              Text(
                'Note: Hotel, flight, and service prices may vary. It is recommended to check availability and make reservations in advance.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigBudgetMultipleDaysScreenAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigBudgetMultipleDaysScreenAnnaba({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Discover Timgad:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Discover the fascinating history of Timgad by visiting its archaeological ruins, temples, theaters, and baths.',
            ),
            SizedBox(height: 10),
            Text(
              'Transportation:',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Flight: Take a flight to Batna Airport, the nearest airport to Timgad.\n'
              'Taxi/Rental Car: From the airport, take a taxi or rent a car to reach Timgad (approximately 35 km).',
            ),
            SizedBox(height: 10),
            Text(
              'Accommodation:',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Spend your day at the Tardjan Hotel, a 5-star hotel offering luxurious services and relaxation after your exploration.',
            ),
            SizedBox(height: 20),
            Text(
              'Discovering Numidian Civilization in Annaba:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Head to Hippo Regius in Annaba to delve into the history of the Numidian civilization. Visit the ancient ruins, museums, and learn more about this historical period.',
            ),
            SizedBox(height: 10),
            Text(
              'Rural Sites: Enjoy the rural landscapes of Seraïdi, a picturesque village in the Edough mountains, offering panoramic views and hiking trails.',
            ),
            SizedBox(height: 10),
            Text(
              'Nautical Place: Enjoy the Corniche of Annaba and don\'t forget to visit Rizi Omar Beach.',
            ),
            SizedBox(height: 10),
            Text(
              'Spend the night at the Sheraton Hotel, a 5-star hotel in Annaba.',
            ),
            SizedBox(height: 20),
            Text(
              'Transportation:',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Flight: Take a flight from Batna to Annaba.\n'
              'Taxi/Rental Car: Use a taxi or rent a car for local travel in Annaba and to Seraïdi (about 13 km from Annaba).',
            ),
            SizedBox(height: 20),
            Text(
              'Desert Discovery:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Activity: Discover the desert by exploring the Hoggar National Park.',
            ),
            SizedBox(height: 10),
            Text(
              'Transportation:',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              'Flight: Take a flight from Annaba to Tamanrasset Airport.\n'
              'Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.\n'
              'Excursion: Arrange an excursion with a local guide for an immersive desert experience.',
            ),
            SizedBox(height: 20),
            Text(
              'Total Estimated Cost: 93,000 DA',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'The estimated budget for this trip includes:\n'
              'Transportation: Domestic flights, taxis, and rental cars for intra-city and inter-city travel.\n'
              'Accommodation: Stays in 5-star hotels and tourist complexes.\n'
              'Meals: Cost of meals at hotels and local restaurants.\n'
              'Entrance Fees: Entry fees for museums, historical sites, and national parks.\n'
              'Miscellaneous Expenses: Other expenses such as tips, souvenirs, and additional activities.',
            ),
            SizedBox(height: 10),
            Text(
              'Note: Hotel, flight, and service prices may vary. It is recommended to check availability and make reservations in advance.',
            ),
          ],
        )),
      ),
    );
  }
}

class BigBudgetMultipleDaysScreenBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigBudgetMultipleDaysScreenBejaia({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Discover the Roman Ruins of Tipaza:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Discover the fascinating history of Tipaza by visiting its archaeological ruins, temples, theaters, and baths.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transportation:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            Text(
              'Flight: Take a flight to Algiers Airport, the nearest airport to Tipaza.\n'
              'Taxi/Rental Car: From the airport, take a taxi or rent a car to reach Tipaza (approximately 70 km).\n'
              'Spend your day at Hotel Ben Aouda & Spa, a 5-star hotel offering luxurious services and relaxation after your exploration.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Discovering Numidian Civilization in Constantine (Cirta):',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Explore the Numidian heritage in Constantine, once known as Cirta. Visit the ancient ruins and delve into the rich history of the region.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Rural Sites:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            Text(
              'Take a trip to the Kabyle village to explore rural sites such as Tala Hiba.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Nautical Place:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            Text(
              'Enjoy the nautical attractions in Bejaia, including a visit to Tichy Beach.\n'
              'Spend your night at Hôtel Atlantis Béjaïa Aéroport.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Desert Discovery:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Activity: Discover the desert by exploring Hoggar National Park.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transportation:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            Text(
              'Flight: Take a flight from Bejaia to Tamanrasset Airport.\n'
              'Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.\n'
              'Excursion: Arrange an excursion with a local guide for an immersive desert experience.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Total Estimated Cost: 13,7000 DA',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'The estimated budget for this trip includes:\n'
              'Transportation: Domestic flights, taxis, and rental cars for intra-city and inter-city travel.\n'
              'Accommodation: Stays in 5-star hotels and tourist complexes.\n'
              'Meals: Cost of meals at hotels and local restaurants.\n'
              'Entrance Fees: Entry fees for museums, historical sites, and national parks.\n'
              'Miscellaneous Expenses: Other expenses such as tips, souvenirs, and additional activities.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Note: Hotel, flight, and service prices may vary. It is recommended to check availability and make reservations in advance.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetRomanAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanAlger({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Discovery of Algiers and Surroundings',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Visit the Kasbah of Algiers and historical mosques.\n'
              'Explore the National Museum of Antiquities and Islamic Arts for Roman artifacts.\n'
              'Excursion to Tipasa to explore Roman ruins and enjoy the Mediterranean coast.\n'
              'Accommodation: Hilton Algiers (5-star).\n'
              'Transport: Private vehicles with chauffeur for travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Exploration of Roman Sites in Djemila and Timgad',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Journey to Djemila to explore well-preserved Roman ruins:\n'
              'Visit Timgad to discover the ancient Roman city and its remarkable architecture.\n'
              'Accommodation: Hotel Numidie Centre in Sétif (4-star).\n'
              'Transport: Private vehicles with chauffeur for travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Sahara Adventure in Timimoun',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to Timimoun for an authentic desert experience:\n'
              'Camping in the desert for a night under the stars.\n'
              '4x4 excursion to explore oases, sand dunes, and traditional villages.\n'
              'Accommodation: Saharaoui Camp in Timimoun.\n'
              'Transport: Internal flight to Timimoun from Algiers and 4x4 vehicles for desert travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Relaxation and Nautical Activities in Algiers',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Relaxation and nautical activities at Sidi Fredj Port.\n'
              'Boat excursion to discover the bay of Algiers.\n'
              'Accommodation: El-Aurassi Hotel in Algiers (5-star).\n'
              'Transport: Private vehicles with chauffeur for travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Discovery of Rural Areas',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Excursion to rural villages in the Kabylie mountains :\n'
              'Tasting of local products and immersion in Berber culture.\n'
              'Accommodation: Rural gîte in the Kabylie region.\n'
              'Transport: Private vehicles with chauffeur for travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost :',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 30,000 DA.\n'
              'Accommodation: Approximately 40,000 DA.\n'
              'Meals and Activities: Approximately 20,000 DA.\n'
              'Miscellaneous: Approximately 10,000 DA.\n'
              'Estimated Total Cost: Approximately 100,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetRomanOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanOran({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Discovery of Oran and Surroundings',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Visit the Fort Santa Cruz and learn about its historical significance.\n'
              'Explore the Great Mosque of Oran, showcasing ancient Roman influences.\n'
              'Discover the Museum of Modern Art of Oran for insights into Roman civilization.\n'
              'Accommodation: Le Méridien Oran Hotel & Convention Centre (5-star).\n'
              'Transport: Private vehicles with chauffeur for travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Exploration of Roman Sites in Timgad and Djemila',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Journey to Timgad to explore the well-preserved Roman ruins.\n'
              'Visit Djemila to discover the ancient Roman city and its architectural marvels.\n'
              'Accommodation: Hotel El Kenz in Sétif (4-star).\n'
              'Transport: Private vehicles with chauffeur for travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Sahara Adventure in Djanet',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to Djanet for an authentic desert camping experience.\n'
              'Camp under the stars amidst the Sahara dunes.\n'
              'Enjoy 4x4 desert safaris to explore oases and traditional desert villages.\n'
              'Accommodation: Djanet Desert Camp.\n'
              'Transport: Internal flight to Djanet from Oran and 4x4 vehicles for desert travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Relaxation and Nautical Activities in Oran',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Relax and indulge in nautical activities at Ain El Turk Beach.\n'
              'Explore the Corniche area for seaside leisure and dining options.\n'
              'Accommodation: Le Méridien Oran Hotel & Convention Centre (5-star).\n'
              'Transport: Private vehicles with chauffeur for travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Discovery of Rural Areas',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Embark on a rural excursion to explore the picturesque villages of the Oran countryside.\n'
              'Immerse in the local culture and traditions of rural Algeria.\n'
              'Accommodation: Rural guesthouse in the Oran countryside.\n'
              'Transport: Private vehicles with chauffeur for travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost :',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 40,000 DA.\n'
              'Accommodation: Approximately 50,000 DA.\n'
              'Meals and Activities: Approximately 25,000 DA.\n'
              'Miscellaneous: Approximately 10,000 DA.\n'
              'Estimated Total Cost: Approximately 125,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetRomanAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanAnnaba({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Discovery of Annaba and Surroundings',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Visit the ruins of Hippo Regius, an ancient Roman city.\n'
              'Explore the Basilica of Saint Augustine, showcasing Roman and Christian history.\n'
              'Discover the Museum of Antiquities for insights into Roman civilization.\n'
              'Accommodation: Sabri Hotel Annaba (5-star).\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Exploration of Roman Sites in Constantine and Tiddis',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Journey to Constantine to explore the ancient Roman ruins and the iconic suspension bridges.\n'
              'Visit Tiddis to discover the Roman archaeological site overlooking breathtaking landscapes.\n'
              'Accommodation: Hotel Novotel Constantine (4-star).\n'
              'Transport: Domestic flight from Annaba to Constantine.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Sahara Adventure in Taghit',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to Taghit for an authentic desert camping experience.\n'
              'Camp under the stars amidst the Sahara dunes.\n'
              'Enjoy 4x4 desert safaris to explore oases and traditional desert villages.\n'
              'Accommodation: Taghit Desert Camp.\n'
              'Transport: Domestic flight from Constantine to Taghit.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Relaxation and Nautical Activities in Annaba',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Relax and indulge in nautical activities at Ain achir Beach.\n'
              'Explore the coastal area for seaside leisure and dining options.\n'
              'Accommodation: Sabri Hotel Annaba (5-star).\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Discovery of Rural Areas',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Embark on a rural adventure to discover the charming villages scattered throughout the picturesque countryside surrounding Annaba, such as the quaint village of Seraidi.\n'
              'Immerse in the local culture and traditions of rural Algeria.\n'
              'Accommodation: Rural guesthouse in the Annaba countryside.\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost :',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 60,000 DA (including domestic flights).\n'
              'Accommodation: Approximately 50,000 DA.\n'
              'Meals and Activities: Approximately 25,000 DA.\n'
              'Miscellaneous: Approximately 10,000 DA.\n'
              'Estimated Total Cost: Approximately 145,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetRomanBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanBejaia({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Discovery of Bejaia and Surroundings',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Visit the Kasbah of Bejaia, a historical fortress overlooking the Mediterranean Sea.\n'
              'Explore the Roman ruins of Toudja and the ancient city of Saldae.\n'
              'Discover the Béjaïa Museum to learn about Roman civilization and local history.\n'
              'Accommodation: Hôtel Royal Bejaia (5-star).\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Sahara Desert Exploration in Tamanrasset',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Venture to Tamanrasset for an immersive Sahara Desert experience.\n'
              'Set up camp beneath the shimmering stars amidst the vast expanse of the Sahara dunes.\n'
              'Embark on thrilling 4x4 desert safaris to discover hidden oases, towering sand dunes, and traditional desert settlements.\n'
              'Accommodation: Tamanrasset Desert Camp.\n'
              'Transport: Domestic flight from Béjaïa to Tamanrasset.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Exploration of Roman Sites in Timgad and Djemila',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Journey to Timgad to explore the well-preserved Roman ruins.\n'
              'Visit Djemila to discover the ancient Roman city and its architectural marvels.\n'
              'Accommodation: Hotel El Kenz in Sétif (4-star).\n'
              'Transport: Private vehicles with chauffeur for travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Nautical Activities in Bejaia',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Indulge in nautical activities at Tichy Beach, including swimming, snorkeling, and diving.\n'
              'Explore the Cap Carbon coastline by boat, visiting sea caves and hidden coves.\n'
              'Accommodation: Hôtel Royal Bejaia (5-star).\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Exploration of Rural Areas',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Embark on a rural excursion to picturesque villages like Tifra, Ighzer Amokrane, and Souk El Khemis.\n'
              'Immerse yourself in the tranquility and authenticity of rural Algerian life.\n'
              'Accommodation: Guesthouses in rural villages.\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost :',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 60,000 DA (including domestic flights).\n'
              'Accommodation: Approximately 60,000 DA.\n'
              'Meals and Activities: Approximately 30,000 DA.\n'
              'Miscellaneous: Approximately 10,000 DA.\n'
              'Estimated Total Cost: Approximately 160,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetIslamicAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicAlger({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Exploration of Islamic Civilization in Algiers',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Visit the historic Casbah of Algiers, a UNESCO World Heritage site known for its Islamic architecture and heritage.\n'
              'Explore the Ketchaoua Mosque, a symbol of Algiers\' Islamic heritage, with its intricate design and rich history.\n'
              'Discover the National Museum of Antiquities and Islamic Arts, showcasing artifacts and artworks from Algeria\'s Islamic past.\n'
              'Accommodation: El Djazair Hotel (5-star) in Algiers.\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Desert Camping Experience in Tassili n\'Ajjer',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to Tassili n\'Ajjer for an immersive desert camping adventure.\n'
              'Camp under the starlit skies amidst the breathtaking rock formations and ancient rock art of the Tassili n\'Ajjer National Park.\n'
              'Enjoy guided hikes and camel treks to explore the unique geological features, rock paintings, and natural beauty of the desert landscape.\n'
              'Accommodation: Tassili n\'Ajjer Desert Camp.\n'
              'Transport: Domestic flight from Algiers to Tassili n\'Ajjer.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Nautical Exploration in Algiers',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Experience nautical activities along the Algiers coastline, such as sailing, jet skiing, and boat tours.\n'
              'Explore the historic Algiers Harbor and its iconic lighthouse, witnessing the city\'s maritime heritage.\n'
              'Accommodation: El Djazair Hotel (5-star) in Algiers.\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Rural Excursion to Kabylie',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Embark on a scenic journey to the Kabylie region to explore its rural villages and stunning natural landscapes.\n'
              'Visit traditional Berber villages like Tizi Ouzou and Bejaia, experiencing the unique culture and hospitality of the local communities.\n'
              'Accommodation: Guesthouses or boutique hotels in Kabylie villages.\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 80,000 DA (including domestic flights).\n'
              'Accommodation: Approximately 70,000 DA.\n'
              'Meals and Activities: Approximately 40,000 DA.\n'
              'Miscellaneous: Approximately 10,000 DA.\n'
              'Estimated Total Cost: Approximately 200,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetIslamicOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicOran({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Exploration of Islamic Civilization in Oran',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Visit the Great Mosque of Oran, a landmark with stunning architecture and rich history.\n'
              'Explore the Santa Cruz Fort, offering panoramic views of the city and the Mediterranean Sea.\n'
              'Discover the Ahmed Zabana Museum, which showcases artifacts related to Algeria\'s Islamic heritage.\n'
              'Accommodation: Le Méridien Oran Hotel & Convention Centre (5-star).\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Desert Camping Experience in El Oued',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to El Oued for an authentic desert camping adventure.\n'
              'Camp amidst the tranquil sand dunes of the Sahara Desert.\n'
              'Explore the local markets and experience traditional desert hospitality.\n'
              'Accommodation: Desert Camp in El Oued.\n'
              'Transport: Domestic flight from Oran to El Oued.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Nautical Exploration in Oran',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Engage in various nautical activities along the Oran at Madagh Plage.\n'
              'Explore the Port of Oran and its bustling waterfront, with opportunities for boat rides and sea excursions.\n'
              'Accommodation: Le Méridien Oran Hotel & Convention Centre (5-star).\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Historical Exploration of Kalaa of Beni Hammad',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to the Kalaa of Beni Hammad and explore the ruins of the fortress, including its mosques, palaces, and walls, which offer insight into the region\'s medieval Islamic history.\n'
              'Accommodation: Stay at Hotel Beni Hammad.\n'
              'Transport: Private vehicles with chauffeur for travel to and from the site.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Rural Excursion to Tlemcen',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to Tlemcen to explore its rural villages and historical landmarks.\n'
              'Visit the Grand Mosque of Tlemcen, an architectural masterpiece known for its intricate designs and Islamic heritage.\n'
              'Explore the El Mechouar Palace and Gardens, a UNESCO World Heritage site showcasing the region\'s rich history and culture.\n'
              'Accommodation: Renaissance Tlemcen Hotel (5-star).\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 90,000 DA (including domestic flights).\n'
              'Accommodation: Approximately 80,000 DA.\n'
              'Meals and Activities: Approximately 50,000 DA.\n'
              'Miscellaneous: Approximately 10,000 DA.\n'
              'Estimated Total Cost: Approximately 230,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetIslamicAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicAnnaba({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Exploration of Islamic Civilization in Annaba',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Explore The Salah Bey Mosque.\n'
              'Explore the Basilica of St. Augustine, an important historical site blending Islamic and Roman influences.\n'
              'Discover the Hippo Regius ruins, showcasing the rich history of the region.\n'
              'Accommodation: Sheraton Annaba Hotel (5-star).\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Desert Camping Experience in Illizi',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to Illizi for an authentic desert camping adventure.\n'
              'Set up camp amidst the tranquil sand dunes of the Sahara Desert and enjoy the peaceful surroundings.\n'
              'Explore the local markets and experience traditional desert hospitality.\n'
              'Accommodation: Desert Camp in Illizi.\n'
              'Transport: Domestic flight from Annaba to Illizi.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Nautical Exploration in Annaba',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Engage in a variety of nautical activities along the Annaba coastline, including sailing, windsurfing, and boat tours.\n'
              'Visit djenen El Bey, a popular beach destination for swimming and water sports.\n'
              'Accommodation: Sheraton Annaba Hotel (5-star).\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Historical Exploration of the M\'Zab Valley',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Journey to the M\'Zab Valley.\n'
              'Explore the fortified cities, mosques, and traditional houses that offer a glimpse into the medieval Islamic civilization.\n'
              'Accommodation: Hotel El Mzab in Ghardaia.\n'
              'Transport: Private vehicles with chauffeur for travel to and from the site, with domestic flights as needed.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Rural Excursion to the Villages of Ghardaia',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to Ghardaia to explore its rural villages and historical landmarks.\n'
              'Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.\n'
              'Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.\n'
              'Accommodation: Hotel El Mzab in Ghardaia.\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 120,000 DA (including domestic flights).\n'
              'Accommodation: Approximately 100,000 DA.\n'
              'Meals and Activities: Approximately 70,000 DA.\n'
              'Miscellaneous: Approximately 15,000 DA.\n'
              'Estimated Total Cost: Approximately 305,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetIslamicBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicBejaia({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Exploration of Islamic Civilization in Tlemcen',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Visit the Palais de la Culture de Tlemcen - Imama.\n'
              'Explore the ruins of Mansourah, an ancient city that showcases the rich history of the region.\n'
              'Discover the El Mechouar Palace, a historical palace complex that provides insights into Tlemcen\'s Islamic heritage.\n'
              'Accommodation: Renaissance Tlemcen Hotel (5-star).\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Desert Camping Experience in Tindouf',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to Tindouf for an authentic desert camping adventure.\n'
              'Set up camp amidst the tranquil sand dunes of the Sahara Desert and enjoy the peaceful surroundings.\n'
              'Explore the local markets and experience traditional desert hospitality.\n'
              'Accommodation: Desert Camp in Tindouf.\n'
              'Transport: Domestic flight from Tlemcen to Tindouf.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Nautical Exploration in Bejaia',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Visit Les Aiguades Beach to enjoy the stunning views and relax by the sea.\n'
              'Accommodation: Hôtel du Lac (4-star) in Bejaia.\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Historical Exploration of the Casbah of Algiers',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Journey to Algiers to explore the Casbah of Algiers.\n'
              'Visit historical sites such as the Palace of the Dey and the Martyrs\' Memorial.\n'
              'Stroll through the narrow streets and experience the vibrant local culture.\n'
              'Accommodation: Sofitel Algiers Hamma Garden (5-star).\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Rural Excursion to the Villages of Ghardaia',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to Ghardaia to explore its rural villages and historical landmarks.\n'
              'Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.\n'
              'Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.\n'
              'Accommodation: Hotel El Mzab in Ghardaia.\n'
              'Transport: Private vehicles with chauffeur for local travel, with domestic flights as needed.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 150,000 DA (including domestic flights).\n'
              'Accommodation: Approximately 120,000 DA.\n'
              'Meals and Activities: Approximately 90,000 DA.\n'
              'Miscellaneous: Approximately 20,000 DA.\n'
              'Estimated Total Cost: Approximately 380,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetNumidianNORuralAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNumidianNORuralAlger({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Exploration of Numidian Civilization in Constantine',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Visit the Cirta Museum, which houses a rich collection of artifacts from the Numidian civilization.\n'
              'Explore the ancient ruins of Tiddis, a significant Numidian archaeological site.\n'
              'Discover the historical landmarks and architecture of Constantine, known as the "City of Bridges."\n'
              'Accommodation: Marriott Constantine (5-star).\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Desert Camping Experience in Tindouf',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to Tindouf for an authentic desert camping adventure.\n'
              'Set up camp amidst the tranquil sand dunes of the Sahara Desert and enjoy the peaceful surroundings.\n'
              'Explore the local markets and experience traditional desert hospitality.\n'
              'Accommodation: Desert Camp in Tindouf.\n'
              'Transport: Domestic flight from Constantine to Tindouf.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Nautical Exploration in Algiers',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Visit El Kadous, a scenic coastal area ideal for swimming and water sports.\n'
              'Accommodation: Sofitel Algiers Hamma Garden (5-star).\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 90,000 DA (including domestic flights).\n'
              'Accommodation: Approximately 90,000 DA.\n'
              'Meals and Activities: Approximately 90,000 DA.\n'
              'Miscellaneous: Approximately 20,000 DA.\n'
              'Estimated Total Cost: Approximately 290,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetNumidianNORuralOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNumidianNORuralOran({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Exploration of Numidian Civilization in Constantine',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Visit the Cirta Museum, which houses a rich collection of artifacts from the Numidian civilization.\n'
              'Explore the ancient ruins of Tiddis, a significant Numidian archaeological site.\n'
              'Discover the historical landmarks and architecture of Constantine, known as the "City of Bridges."\n'
              'Accommodation: Marriott Constantine (5-star).\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Desert Camping Experience in Ilizi',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to Ilizi for an authentic desert camping adventure.\n'
              'Set up camp amidst the tranquil sand dunes of the Sahara Desert and enjoy the peaceful surroundings.\n'
              'Explore the local markets and experience traditional desert hospitality.\n'
              'Accommodation: Desert Camp in Ilizi.\n'
              'Transport: Domestic flight from Constantine to Ilizi.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Nautical Exploration in Oran',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Enjoy nautical activities such as swimming, sunbathing, and beach sports at Canastel Beach.\n'
              'Accommodation: Le Méridien Oran Hotel.\n'
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 100,000 DA (including domestic flights).\n'
              'Accommodation: Approximately 90,000 DA.\n'
              'Meals and Activities: Approximately 90,000 DA.\n'
              'Miscellaneous: Approximately 20,000 DA.\n'
              'Estimated Total Cost: Approximately 300,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetNumidianNORuralAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNumidianNORuralAnnaba({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Discover Timgad',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Discover the fascinating history of Timgad by visiting its archaeological ruins, temples, theaters, and baths.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transportation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Flight: Take a flight to Batna Airport, the nearest airport to Timgad.\n'
              'Taxi/Rental Car: From the airport, take a taxi or rent a car to reach Timgad (approximately 35 km).',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Spend your day at the Tardjan Hotel, a 5-star hotel offering luxurious services and relaxation after your exploration.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Desert Discovery',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Discover the desert by exploring the Hoggar National Park.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transportation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Flight: Take a flight from Batna to Tamanrasset Airport.\n'
              'Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.\n'
              'Excursion: Arrange an excursion with a local guide for an immersive desert experience.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Exploration of Nautical Places',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Enjoy the Corniche of Annaba and don\'t forget to visit Rizi Omar Beach.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transportation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Flight: Take a flight from Tamanrasset to Annaba.\n'
              'Taxi/Rental Car: Use a taxi or rent a car for local travel in Annaba.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Spend the night at the Sheraton Hotel, a 5-star hotel in Annaba.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 90,000 DA (including domestic flights).\n'
              'Accommodation: Approximately 80,000 DA.\n'
              'Meals and Activities: Approximately 30,000 DA.\n'
              'Miscellaneous: Approximately 10,000 DA.\n'
              'Estimated Total Cost: Approximately 210,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetNumidianNORuralBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNumidianNORuralBejaia({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Discovering Numidian Civilization in Annaba',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Head to Hippo Regius in Annaba to delve into the history of the Numidian civilization. Visit the ancient ruins, museums, and learn more about this historical period.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Rural Sites:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Enjoy the rural landscapes of Seraïdi, a picturesque village in the Edough mountains, offering panoramic views and hiking trails.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Nautical Place:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Enjoy the Corniche of Annaba and don\'t forget to visit Rizi Omar Beach.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Spend the night at the Sheraton Hotel, a 5-star hotel in Annaba.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transportation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Taxi/Rental Car: Use a taxi or rent a car for local travel in Annaba and to Seraïdi (about 13 km from Annaba).',
            ),
            SizedBox(height: 20.0),
            Text(
              'Desert Camping Experience in Tassili n\'Ajjer',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to Tassili n\'Ajjer for an immersive desert camping adventure.',
            ),
            Text(
              'Camp under the starlit skies amidst the breathtaking rock formations and ancient rock art of the Tassili n\'Ajjer National Park.',
            ),
            Text(
              'Enjoy guided hikes and camel treks to explore the unique geological features, rock paintings, and natural beauty of the desert landscape.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Tassili n\'Ajjer Desert Camp.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Domestic flight from Annaba to Tassili n\'Ajjer.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Nautical Exploration in Bejaia',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Visit Les Aiguades Beach to enjoy the stunning views and relax by the sea.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Hôtel du Lac (4-star) in Bejaia.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 90,000 DA (including domestic flights).\n'
              'Accommodation: Approximately 90,000 DA.\n'
              'Meals and Activities: Approximately 40,000 DA.\n'
              'Miscellaneous: Approximately 10,000 DA.\n'
              'Estimated Total Cost: Approximately 230,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetRomanNORuralAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanNORuralAlger({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Exploration of Roman Sites in Timgad and Djemila',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Journey to Timgad to explore the well-preserved Roman ruins. '
              'Visit Djemila to discover the ancient Roman city and its architectural marvels.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Hotel El Kenz in Sétif (4-star).',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Private vehicles with chauffeur for travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Desert Camping Experience in Ilizi',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to Ilizi for an authentic desert camping adventure. '
              'Explore the local markets and experience traditional desert hospitality.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Desert Camp in Ilizi.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Domestic flight from Sétif to Ilizi.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Nautical Exploration in Algiers',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Visit El Kadous, a scenic coastal area ideal for swimming and water sports.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Sofitel Algiers Hamma Garden (5-star).',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 100,000 DA (including domestic flights).\n'
              'Accommodation: Approximately 90,000 DA.\n'
              'Meals and Activities: Approximately 90,000 DA.\n'
              'Miscellaneous: Approximately 20,000 DA.\n'
              'Estimated Total Cost: Approximately 300,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetRomanNORuralOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanNORuralOran({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Discover the Roman Ruins of Tipaza',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Discover the fascinating history of Tipaza by visiting its archaeological ruins, temples, theaters, and baths.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transportation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Flight: Take a flight to Algiers Airport, the nearest airport to Tipaza.\n'
              'Taxi/Rental Car: From the airport, take a taxi or rent a car to reach Tipaza (approximately 70 km).',
            ),
            SizedBox(height: 20.0),
            Text(
              'Desert Discovery in Hoggar National Park',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Discover the desert by exploring the Hoggar National Park.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transportation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Flight: Take a flight from Tipaza to Tamanrasset Airport.\n'
              'Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.\n'
              'Excursion: Arrange an excursion with a local guide for an immersive desert experience.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Nautical Exploration in Oran',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Enjoy nautical activities such as swimming, sunbathing, and beach sports at Canastel Beach.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Le Méridien Oran Hotel.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 89,000 DA (including domestic flights).\n'
              'Accommodation: Approximately 90,000 DA.\n'
              'Meals and Activities: Approximately 90,000 DA.\n'
              'Miscellaneous: Approximately 20,000 DA.\n'
              'Estimated Total Cost: Approximately 289,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetRomanNORuralAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanNORuralAnnaba({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Romain Civilization Discovery in Guelma',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Visit the Arc de Trajan (Trajan\'s Arch), one of the most iconic landmarks in Guelma. Explore the Archaeological Museum of Guelma to learn more about the Roman history.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transportation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Taxi/Rental Car: Use a taxi or rent a car for local travel in Guelma.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Spend the night at Bouchahrine Thermes.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Desert Discovery in Hoggar National Park',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Discover the desert by exploring the Hoggar National Park.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transportation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Flight: Take a flight from Guelma to Tamanrasset Airport.\n'
              'Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.\n'
              'Excursion: Arrange an excursion with a local guide for an immersive desert experience.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Nautical Exploration in Annaba',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Enjoy the Corniche of Annaba and don\'t forget to visit Rizi Omar Beach.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transportation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Flight: Take a flight from Tamanrasset to Annaba.\n'
              'Taxi/Rental Car: Use a taxi or rent a car for local travel in Annaba.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Spend the night at the Sheraton Hotel, a 5-star hotel in Annaba.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 80,000 DA (including domestic flights).\n'
              'Accommodation: Approximately 70,000 DA.\n'
              'Meals and Activities: Approximately 30,000 DA.\n'
              'Miscellaneous: Approximately 10,000 DA.\n'
              'Estimated Total Cost: Approximately 190,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetRomanNORuralBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanNORuralBejaia({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Exploration of Roman Sites in Timgad and Djemila',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Journey to Timgad to explore the well-preserved Roman ruins. Visit Djemila to discover the ancient Roman city and its architectural marvels.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Hotel El Kenz in Sétif (4-star).',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Private vehicles with chauffeur for travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Desert Camping Experience in Tassili n\'Ajjer',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to Tassili n\'Ajjer for an immersive desert camping adventure. Camp under the starlit skies amidst the breathtaking rock formations and ancient rock art of the Tassili n\'Ajjer National Park. Enjoy guided hikes and camel treks to explore the unique geological features, rock paintings, and natural beauty of the desert landscape.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Tassili n\'Ajjer Desert Camp.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Domestic flight from Setif to Tassili n\'Ajjer.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Nautical Exploration in Bejaia',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Visit Les Aiguades Beach to enjoy the stunning views and relax by the sea.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Hôtel du Lac (4-star) in Bejaia.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 79,000 DA (including domestic flights).\n'
              'Accommodation: Approximately 76,000 DA.\n'
              'Meals and Activities: Approximately 40,000 DA.\n'
              'Miscellaneous: Approximately 10,000 DA.\n'
              'Estimated Total Cost: Approximately 205,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetIslamicNORuralAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicNORuralAlger({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Exploration of Islamic Civilization in Algiers',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Explore the Grand Mosque of Algiers, also known as the Djamaa el Kebir, an iconic religious and architectural landmark in the capital city of Algeria. '
              'Visit the Ketchaoua Mosque, a symbol of Algiers\' Islamic heritage, with its intricate design and rich history. '
              'Discover the National Museum of Antiquities and Islamic Arts, showcasing artifacts and artworks from Algeria\'s Islamic past.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'El Djazair Hotel (5-star) in Algiers.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Nautical Exploration in Algiers',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Enjoy leisure time at Sidi Fredj Port and Vigie Beach.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Sofitel Algiers Hamma Garden (5-star).',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Desert Camping Experience in Ilizi',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Travel to Ilizi for an authentic desert camping adventure. '
              'Explore the local markets and experience traditional desert hospitality.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Accommodation:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Desert Camp in Ilizi.',
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Domestic flight from Algiers to Ilizi.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              'Transport: Approximately 70,000 DA (including domestic flights).\n'
              'Accommodation: Approximately 70,000 DA.\n'
              'Meals and Activities: Approximately 60,000 DA.\n'
              'Miscellaneous: Approximately 20,000 DA.\n'
              'Estimated Total Cost: Approximately 220,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetIslamicNORuralOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicNORuralOran({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Best Plan:',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Exploration of Islamic Civilization in Oran:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              '- Visit the Great Mosque of Mosque Abdelhamid Ben Badis, a landmark with stunning architecture and rich history.',
            ),
            Text(
              '- Discover the Ahmed Zabana Museum, which showcases artifacts related to Algeria\'s Islamic heritage.',
            ),
            Text(
              'Accommodation: Le Méridien Oran Hotel & Convention Centre (5-star).',
            ),
            Text(
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Nautical Exploration in Oran:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              '- Enjoy nautical activities such as swimming, sunbathing, and beach sports at Canastel Beach.',
            ),
            Text(
              'Accommodation: Le Méridien Oran Hotel',
            ),
            Text(
              'Transport: Private vehicles with chauffeur for local travel.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Desert Discovery:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Discover the desert by exploring the Hoggar National Park.',
            ),
            Text(
              'Transportation:',
            ),
            Text(
              '- Flight: Take a flight from Oran to Tamanrasset Airport.',
            ),
            Text(
              '- Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.',
            ),
            Text(
              '- Excursion: Arrange an excursion with a local guide for an immersive desert experience.',
            ),
            SizedBox(height: 20.0),
            Text(
              'Estimated Total Cost:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              '- Transport: Approximately 70,000 DA (including domestic flights).',
            ),
            Text(
              '- Accommodation: Approximately 60,000 DA.',
            ),
            Text(
              '- Meals and Activities: Approximately 60,000 DA.',
            ),
            Text(
              '- Miscellaneous: Approximately 20,000 DA.',
            ),
            Text(
              'Estimated Total Cost: Approximately 210,000 DA.',
            ),
          ],
        ),
      ),
    );
  }
}

class BigbudgetIslamicNORuralAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicNORuralAnnaba({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Explore the Grand Mosque of Algiers, also known as the Djamaa el Kebir, an iconic religious and architectural landmark.',
              ),
              Text(
                '- Explore the Ketchaoua Mosque, a symbol of Algiers\' Islamic heritage, with its intricate design and rich history.',
              ),
              Text(
                '- Discover the National Museum of Antiquities and Islamic Arts, showcasing artifacts and artworks from Algeria\'s Islamic past.',
              ),
              Text(
                'Accommodation: El Djazair Hotel (5-star) in Algiers.',
              ),
              Text(
                'Transport: Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Desert Discovery:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Discover the desert by exploring the Hoggar National Park.',
              ),
              Text(
                'Transportation:',
              ),
              Text(
                '- Flight: Take a flight from Guelma to Tamanrasset Airport.',
              ),
              Text(
                '- Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.',
              ),
              Text(
                '- Excursion: Arrange an excursion with a local guide for an immersive desert experience.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Exploration of Nautical Places in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Enjoy the Corniche of Annaba and visit Rizi Omar Beach.',
              ),
              Text(
                'Transportation:',
              ),
              Text(
                '- Flight: Take a flight from Tamanrasset to Annaba.',
              ),
              Text(
                '- Taxi/Rental Car: Use a taxi or rent a car for local travel in Annaba.',
              ),
              Text(
                'Accommodation: Spend the night at the Sheraton Hotel, a 5-star hotel in Annaba.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Transport: Approximately 69,000 DA (including domestic flights).',
              ),
              Text(
                '- Accommodation: Approximately 60,000 DA.',
              ),
              Text(
                '- Meals and Activities: Approximately 30,000 DA.',
              ),
              Text(
                '- Miscellaneous: Approximately 10,000 DA.',
              ),
              Text(
                'Estimated Total Cost: Approximately 169,000 DA.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetIslamicNORuralBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicNORuralBejaia({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Tlemcen:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit the Palais de la Culture de Tlemcen - Imama.',
              ),
              Text(
                '- Explore the ruins of Mansourah, an ancient city that showcases the rich history of the region.',
              ),
              Text(
                '- Discover the El Mechouar Palace, a historical palace complex that provides insights into Tlemcen\'s Islamic heritage.',
              ),
              Text(
                'Accommodation: Renaissance Tlemcen Hotel (5-star).',
              ),
              Text(
                'Transport: Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in Tassili n\'Ajjer:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Travel to Tassili n\'Ajjer for an immersive desert camping adventure.',
              ),
              Text(
                '- Camp under the starlit skies amidst the breathtaking rock formations and ancient rock art of the Tassili n\'Ajjer National Park.',
              ),
              Text(
                '- Enjoy guided hikes and camel treks to explore the unique geological features, rock paintings, and natural beauty of the desert landscape.',
              ),
              Text(
                'Accommodation: Tassili n\'Ajjer Desert Camp.',
              ),
              Text(
                'Transport: Domestic flight from Telemcen to Tassili n\'Ajjer.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit Les Aiguades Beach to enjoy the stunning views and relax by the sea.',
              ),
              Text(
                'Accommodation: Hôtel du Lac (4-star) in Bejaia.',
              ),
              Text(
                'Transport: Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Transport: Approximately 60,000 DA (including domestic flights).',
              ),
              Text(
                '- Accommodation: Approximately 70,000 DA.',
              ),
              Text(
                '- Meals and Activities: Approximately 40,000 DA.',
              ),
              Text(
                '- Miscellaneous: Approximately 10,000 DA.',
              ),
              Text(
                'Estimated Total Cost: Approximately 180,000 DA.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNONauticalNumidian extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNONauticalNumidian({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover Numidian Civilization in Timgad:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Discover the fascinating history of Timgad by visiting its archaeological ruins, temples, theaters, and baths.',
              ),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '- Flight: Take a flight to Batna Airport, the nearest airport to Timgad.',
              ),
              Text(
                '- Taxi/Rental Car: From the airport, take a taxi or rent a car to reach Timgad (approximately 35 km).',
              ),
              Text(
                'Accommodation: Spend your day at the Tardjan Hotel, a 5-star hotel offering luxurious services and relaxation after your exploration.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Discovering Numidian Civilization in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Head to Hippo Regius in Annaba to delve into the history of the Numidian civilization. Visit the ancient ruins, museums, and learn more about this historical period.',
              ),
              Text(
                '- Enjoy the rural landscapes of Seraïdi, a picturesque village in the Edough mountains, offering panoramic views and hiking trails.',
              ),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '- Flight: Take a flight from Batna to Annaba.',
              ),
              Text(
                '- Taxi/Rental Car: Use a taxi or rent a car for local travel in Annaba and to Seraïdi (about 13 km from Annaba).',
              ),
              Text(
                'Accommodation: Spend the night at the Sheraton Hotel in Annaba, a luxury hotel offering exceptional comfort and top-notch services.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Desert Discovery:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Discover the desert by exploring the Hoggar National Park.',
              ),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '- Flight: Take a flight from Annaba to Tamanrasset Airport.',
              ),
              Text(
                '- Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.',
              ),
              Text(
                '- Excursion: Arrange an excursion with a local guide for an immersive desert experience.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Transport: Approximately 80,000 DA (including domestic flights).',
              ),
              Text(
                '- Accommodation: Approximately 50,000 DA.',
              ),
              Text(
                '- Meals and Activities: Approximately 40,000 DA.',
              ),
              Text(
                '- Miscellaneous: Approximately 20,000 DA.',
              ),
              Text(
                'Estimated Total Cost: Approximately 190,000 DA.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNONauticalRoman extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNONauticalRoman({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover the Roman Ruins of Tipaza:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Discover the fascinating history of Tipaza by visiting its archaeological ruins, temples, theaters, and baths.',
              ),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                '- Flight: Take a flight to Algiers Airport, the nearest airport to Tipaza.',
              ),
              Text(
                '- Taxi/Rental Car: From the airport, take a taxi or rent a car to reach Tipaza (approximately 70 km).',
              ),
              Text(
                'Accommodation: Stay at Hotel Ben Aouda & Spa.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in Tassili n\'Ajjer:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Travel to Tassili n\'Ajjer for an immersive desert camping adventure.',
              ),
              Text(
                '- Camp under the starlit skies amidst the breathtaking rock formations and ancient rock art of the Tassili n\'Ajjer National Park.',
              ),
              Text(
                '- Enjoy guided hikes and camel treks to explore the unique geological features, rock paintings, and natural beauty of the desert landscape.',
              ),
              Text(
                'Accommodation: Tassili n\'Ajjer Desert Camp.',
              ),
              Text(
                'Transport: Domestic flight from Tipaza to Tassili n\'Ajjer.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to Kabylie:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Embark on a scenic journey to the Kabylie region to explore its rural villages and stunning natural landscapes.',
              ),
              Text(
                '- Visit traditional Berber villages like Tizi Ouzou and Bejaia, experiencing the unique culture and hospitality of the local communities.',
              ),
              Text(
                'Accommodation: Guesthouses or boutique hotels in Kabylie villages.',
              ),
              Text(
                'Transport: Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Transport: Approximately 75,000 DA (including domestic flights).',
              ),
              Text(
                '- Accommodation: Approximately 60,000 DA.',
              ),
              Text(
                '- Meals and Activities: Approximately 20,000 DA.',
              ),
              Text(
                '- Miscellaneous: Approximately 10,000 DA.',
              ),
              Text(
                'Estimated Total Cost: Approximately 200,000 DA.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNONauticalIslamic extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNONauticalIslamic({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Explore the Grand Mosque of Algiers, also known as Djamaa el Kebir, an iconic religious and architectural landmark in Algiers.',
              ),
              Text(
                '- Visit the Ketchaoua Mosque, a symbol of Algiers\' Islamic heritage with its intricate design and rich history.',
              ),
              Text(
                '- Discover the National Museum of Antiquities and Islamic Arts, showcasing artifacts and artworks from Algeria\'s Islamic past.',
              ),
              Text(
                'Accommodation: El Djazair Hotel (5-star) in Algiers.',
              ),
              Text(
                'Transport: Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Desert Discovery:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Discover the desert by exploring the Hoggar National Park.',
              ),
              Text(
                'Transportation:',
              ),
              Text(
                '- Flight: Take a flight from Algiers to Tamanrasset Airport.',
              ),
              Text(
                '- Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.',
              ),
              Text(
                '- Excursion: Arrange an excursion with a local guide for an immersive desert experience.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to the Villages of Ghardaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Travel to Ghardaia to explore its rural villages and historical landmarks.',
              ),
              Text(
                '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.',
              ),
              Text(
                '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.',
              ),
              Text(
                'Accommodation: Hotel El Mzab in Ghardaia.',
              ),
              Text(
                'Transport: Private vehicles with chauffeur for local travel, with domestic flights as needed.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Transport: Approximately 70,000 DA (including domestic flights).',
              ),
              Text(
                '- Accommodation: Approximately 60,000 DA.',
              ),
              Text(
                '- Meals and Activities: Approximately 40,000 DA.',
              ),
              Text(
                '- Miscellaneous: Approximately 10,000 DA.',
              ),
              Text(
                'Estimated Total Cost: Approximately 180,000 DA.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNumdianNODesertAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNumdianNODesertAlger({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Numidian Sites in Djemila and Timgad:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Journey to Djemila to explore well-preserved Numidian ruins.',
              ),
              Text(
                '- Visit Timgad to discover the ancient Numidian city and its remarkable architecture.',
              ),
              Text(
                'Accommodation: Hotel Numidie Centre in Sétif (4-star).',
              ),
              Text(
                'Transport: Private vehicles with chauffeur for travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Relaxation and nautical activities at Sidi Fredj Port.',
              ),
              Text(
                '- Boat excursion to discover the bay of Algiers.',
              ),
              Text(
                'Accommodation: El-Aurassi Hotel in Algiers (5-star).',
              ),
              Text(
                'Transport: Private vehicles with chauffeur for travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Discovery of Rural Areas:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Excursion to rural villages in the Kabylie mountains.',
              ),
              Text(
                '- Tasting of local products and immersion in Berber culture.',
              ),
              Text(
                'Accommodation: Rural gîte in the Kabylie region.',
              ),
              Text(
                'Transport: Private vehicles with chauffeur for travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Transport: Approximately 40,000 DA.',
              ),
              Text(
                '- Accommodation: Approximately 50,000 DA.',
              ),
              Text(
                '- Meals and Activities: Approximately 90,000 DA.',
              ),
              Text(
                '- Miscellaneous: Approximately 90,000 DA.',
              ),
              Text(
                'Estimated Total Cost: Approximately 108,000 DA.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNumdianNODesertOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNumdianNODesertOran({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discovering Timgad:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Start your journey by exploring Timgad, a well-preserved ancient Roman city.',
              ),
              Text(
                '- Discover its fascinating history by visiting the archaeological ruins, temples, theaters, and baths.',
              ),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Flight: Take a flight to Batna Airport, which is the nearest airport to Timgad.',
              ),
              Text(
                '- Taxi/Rental Car: From the airport, take a taxi or rent a car to reach Timgad (approximately 35 km).',
              ),
              Text(
                'Accommodation: Spend your day at the Tardjan Hotel, a 5-star hotel offering luxurious services and relaxation after your exploration.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Discovering Numidian Civilization in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Head to Hippo Regius in Annaba to delve into the history of the Numidian civilization.',
              ),
              Text(
                '- Visit the ancient ruins, museums, and learn more about this historical period.',
              ),
              Text(
                '- Enjoy the rural landscapes of Seraïdi, a picturesque village in the Edough mountains, offering panoramic views and hiking trails.',
              ),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Flight: Take a flight from Batna to Annaba.',
              ),
              Text(
                '- Taxi/Rental Car: Use a taxi or rent a car for local travel in Annaba and to Seraïdi (about 13 km from Annaba).',
              ),
              Text(
                'Accommodation: Spend the night at the Sheraton Hotel in Annaba, a luxury hotel offering exceptional comfort and top-notch services.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Ending the Trip in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Enjoy a relaxing day at Les Andalouses Beach, known for its crystal-clear waters and fine sand.',
              ),
              Text(
                '- Visit the Basilica of Notre-Dame de Santa Cruz, perched on Mount Murdjadjo, offering panoramic views of Oran and its surroundings.',
              ),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Flight: Take a flight from Annaba to Oran.',
              ),
              Text(
                '- Taxi/Rental Car: Use a taxi or rent a car for local travel in Oran and to Les Andalouses Beach (about 25 km from the city center).',
              ),
              Text(
                'Accommodation: Spend the night at the Les Andalouses Tourist Complex, a resort offering top-notch leisure and relaxation facilities.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Transport: Approximately 60,000 DA (including domestic flights).',
              ),
              Text(
                '- Accommodation: Approximately 60,000 DA.',
              ),
              Text(
                '- Meals and Activities: Approximately 20,000 DA.',
              ),
              Text(
                '- Miscellaneous: Approximately 10,000 DA.',
              ),
              Text(
                'Estimated Total Cost: Approximately 150,000 DA.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNumdianNODesertAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNumdianNODesertAnnaba({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover Timgad:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Discover the fascinating history of Timgad by visiting its archaeological ruins, temples, theaters, and baths.',
              ),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Flight: Take a flight to Batna Airport, the nearest airport to Timgad.',
              ),
              Text(
                '- Taxi/Rental Car: From the airport, take a taxi or rent a car to reach Timgad (approximately 35 km).',
              ),
              Text(
                'Accommodation: Spend your day at the Tardjan Hotel, a 5-star hotel offering luxurious services and relaxation after your exploration.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Discovering Numidian Civilization in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Head to Hippo Regius in Annaba to delve into the history of the Numidian civilization. Visit the ancient ruins, museums, and learn more about this historical period.',
              ),
              Text(
                '- Rural Sites: Enjoy the rural landscapes of Seraïdi, a picturesque village in the Edough mountains, offering panoramic views and hiking trails.',
              ),
              Text(
                '- Nautical Places: Enjoy the Corniche of Annaba and don\'t forget to visit Rizi Omar Beach.',
              ),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Flight: Take a flight from Batna to Annaba.',
              ),
              Text(
                '- Taxi/Rental Car: Use a taxi or rent a car for local travel in Annaba and to Seraïdi (about 13 km from Annaba).',
              ),
              Text(
                'Accommodation: Spend the night at the Sheraton Hotel, a 5-star hotel in Annaba.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Transport: Approximately 40,000 DA (including domestic flights).',
              ),
              Text(
                '- Accommodation: Approximately 40,000 DA.',
              ),
              Text(
                '- Meals and Activities: Approximately 10,000 DA.',
              ),
              Text(
                '- Miscellaneous: Approximately 10,000 DA.',
              ),
              Text(
                'Estimated Total Cost: Approximately 100,000 DA.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNumdianNODesertBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNumdianNODesertBejaia({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover the Roman Ruins of Tipaza:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Discover the fascinating history of Tipaza by visiting its archaeological ruins, temples, theaters, and baths.',
              ),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Flight: Take a flight to Algiers Airport, the nearest airport to Tipaza.',
              ),
              Text(
                '- Taxi/Rental Car: From the airport, take a taxi or rent a car to reach Tipaza (approximately 70 km).',
              ),
              Text(
                'Accommodation: Spend your day at Hotel Ben Aouda & Spa, a 5-star hotel offering luxurious services and relaxation after your exploration.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Discovering Numidian Civilization in Constantine (Cirta):',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Explore the Numidian heritage in Constantine, once known as Cirta. Visit the ancient ruins and delve into the rich history of the region.',
              ),
              Text(
                'Rural Sites:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Take a trip to the Kabyle village to explore rural sites such as Tala Hiba.',
              ),
              Text(
                'Nautical Places:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Enjoy the nautical attractions in Bejaia, including a visit to Tichy Beach.',
              ),
              Text(
                'Accommodation: Spend your night at Hôtel Atlantis Béjaïa Aéroport.',
              ),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Flight: Take a flight to Constantine.',
              ),
              Text(
                '- Taxi/Rental Car: Use a taxi or rent a car for local travel in Tala Hiba and to Tichy (about 13 km from Bejaia).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Transport: Approximately 40,000 DA (including domestic flights).',
              ),
              Text(
                '- Accommodation: Approximately 50,000 DA.',
              ),
              Text(
                '- Meals and Activities: Approximately 30,000 DA.',
              ),
              Text(
                '- Miscellaneous: Approximately 20,000 DA.',
              ),
              Text(
                'Estimated Total Cost: Approximately 140,000 DA.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetRomanNODesertAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanNODesertAlger({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Roman Sites in Timgad and Djemila:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Journey to Timgad to explore the well-preserved Roman ruins.',
              ),
              Text(
                '- Visit Djemila to discover the ancient Roman city and its architectural marvels.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Hotel El Kenz in Sétif (4-star).',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to the Villages of Ghardaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Travel to Ghardaia to explore its rural villages and historical landmarks.',
              ),
              Text(
                '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.',
              ),
              Text(
                '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Hotel El Mzab in Ghardaia.',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for local travel, with domestic flights as needed.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit El Kadous, a scenic coastal area ideal for swimming and water sports.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Sofitel Algiers Hamma Garden (5-star).',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Transport: Approximately 82,000 DA (including domestic flights).',
              ),
              Text(
                '- Accommodation: Approximately 78,000 DA.',
              ),
              Text(
                '- Meals and Activities: Approximately 50,000 DA.',
              ),
              Text(
                '- Miscellaneous: Approximately 20,000 DA.',
              ),
              Text(
                'Estimated Total Cost: Approximately 230,000 DA.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetRomanNODesertOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanNODesertOran({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discovery of Oran and Surroundings:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit the Fort Santa Cruz and learn about its historical significance.',
              ),
              Text(
                '- Explore the Great Mosque of Oran, showcasing ancient Roman influences.',
              ),
              Text(
                '- Discover the Museum of Modern Art of Oran for insights into Roman civilization.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Le Méridien Oran Hotel & Convention Centre (5-star).',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Exploration of Roman Sites in Timgad and Djemila:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Journey to Timgad to explore the well-preserved Roman ruins.',
              ),
              Text(
                '- Visit Djemila to discover the ancient Roman city and its architectural marvels.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Hotel El Kenz in Sétif (4-star).',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Relax and indulge in nautical activities at Ain El Turk Beach.',
              ),
              Text(
                '- Explore the Corniche area for seaside leisure and dining options.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Le Méridien Oran Hotel & Convention Centre (5-star).',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Discovery of Rural Areas:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Embark on a rural excursion to explore the picturesque villages of the Oran countryside.',
              ),
              Text(
                '- Immerse in the local culture and traditions of rural Algeria.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Rural guesthouse in the Oran countryside.',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Transport: Approximately 40,000 DA.',
              ),
              Text(
                '- Accommodation: Approximately 30,000 DA.',
              ),
              Text(
                '- Meals and Activities: Approximately 10,000 DA.',
              ),
              Text(
                '- Miscellaneous: Approximately 90,000 DA.',
              ),
              Text(
                'Estimated Total Cost: Approximately 160,000 DA.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetRomanNODesertAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanNODesertAnnaba({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discovery of Annaba and Surroundings:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit the ruins of Hippo Regius, an ancient Roman city.',
              ),
              Text(
                '- Explore the Basilica of Saint Augustine, showcasing Roman and Christian history.',
              ),
              Text(
                '- Discover the Museum of Antiquities for insights into Roman civilization.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Sabri Hotel Annaba (5-star).',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Exploration of Roman Sites in Constantine and Tiddis:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Journey to Constantine to explore the ancient Roman ruins and the iconic suspension bridges.',
              ),
              Text(
                '- Visit Tiddis to discover the Roman archaeological site overlooking breathtaking landscapes.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Hotel Novotel Constantine (4-star).',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Domestic flight from Annaba to Constantine.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Relax and indulge in nautical activities at Ain Achir Beach.',
              ),
              Text(
                '- Explore the coastal area for seaside leisure and dining options.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Sabri Hotel Annaba (5-star).',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Discovery of Rural Areas:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Embark on a rural adventure to discover the charming villages scattered throughout the picturesque countryside surrounding Annaba, such as the quaint village of Seraidi.',
              ),
              Text(
                '- Immerse in the local culture and traditions of rural Algeria.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Rural guesthouse in the Annaba countryside.',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Transport: Approximately 38,000 DA.',
              ),
              Text(
                '- Accommodation: Approximately 50,000 DA.',
              ),
              Text(
                '- Meals and Activities: Approximately 20,000 DA.',
              ),
              Text(
                '- Miscellaneous: Approximately 10,000 DA.',
              ),
              Text(
                'Estimated Total Cost: Approximately 118,000 DA.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetRomanNODesertBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanNODesertBejaia({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discovery of Bejaia and Surroundings:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit the Kasbah of Bejaia, a historical fortress overlooking the Mediterranean Sea.',
              ),
              Text(
                '- Explore the Roman ruins of Toudja and the ancient city of Saldae.',
              ),
              Text(
                '- Discover the Bejaia Museum to learn about Roman civilization and local history.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Hôtel Royal Bejaia (5-star).',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Exploration of Roman Sites in Timgad and Djemila:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Journey to Timgad to explore the well-preserved Roman ruins.',
              ),
              Text(
                '- Visit Djemila to discover the ancient Roman city and its architectural marvels.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Hotel El Kenz in Sétif (4-star).',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Nautical Activities in Béjaïa:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Indulge in nautical activities at Tichy Beach, including swimming, snorkeling, and diving.',
              ),
              Text(
                '- Explore the Cap Carbon coastline by boat, visiting sea caves and hidden coves.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Hôtel Royal Bejaia (5-star).',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Exploration of Rural Areas:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Embark on a rural excursion to picturesque villages like Tifra, Ighzer Amokrane, and Souk El Khemis.',
              ),
              Text(
                '- Immerse yourself in the tranquility and authenticity of rural Algerian life.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Guesthouses in rural villages.',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Transport: Approximately 40,000 DA.',
              ),
              Text(
                '- Accommodation: Approximately 40,000 DA.',
              ),
              Text(
                '- Meals and Activities: Approximately 20,000 DA.',
              ),
              Text(
                '- Miscellaneous: Approximately 10,000 DA.',
              ),
              Text(
                'Estimated Total Cost: Approximately 110,000 DA.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetIslamicNODesertAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicNODesertAlger({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit the historic Casbah of Algiers, a UNESCO World Heritage site known for its Islamic architecture and heritage.',
              ),
              Text(
                '- Explore the Ketchaoua Mosque, a symbol of Algiers\' Islamic heritage, with its intricate design and rich history.',
              ),
              Text(
                '- Discover the National Museum of Antiquities and Islamic Arts, showcasing artifacts and artworks from Algeria\'s Islamic past.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- El Djazair Hotel (5-star) in Algiers.',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit La Vigie Beach.',
              ),
              Text(
                '- Explore the historic Algiers Harbor and its iconic lighthouse, witnessing the city\'s maritime heritage.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- El Djazair Hotel (5-star) in Algiers.',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to Kabylie:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Embark on a scenic journey to the Kabylie region to explore its rural villages and stunning natural landscapes.',
              ),
              Text(
                '- Visit traditional Berber villages like Tizi Ouzou and Bejaia, experiencing the unique culture and hospitality of the local communities.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Guesthouses or boutique hotels in Kabylie villages.',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Transport: Approximately 30,000 DA (including domestic flights).',
              ),
              Text(
                '- Accommodation: Approximately 40,000 DA.',
              ),
              Text(
                '- Meals and Activities: Approximately 20,000 DA.',
              ),
              Text(
                '- Miscellaneous: Approximately 10,000 DA.',
              ),
              Text(
                'Estimated Total Cost: Approximately 100,000 DA.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetIslamicNODesertOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicNODesertOran({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit the Great Mosque of Oran, a landmark with stunning architecture and rich history.',
              ),
              Text(
                '- Explore the Santa Cruz Fort, offering panoramic views of the city and the Mediterranean Sea.',
              ),
              Text(
                '- Discover the Ahmed Zabana Museum, which showcases artifacts related to Algeria\'s Islamic heritage.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Le Méridien Oran Hotel & Convention Centre (5-star).',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Engage in various nautical activities along the Oran at Madagh Plage.',
              ),
              Text(
                '- Explore the Port of Oran and its bustling waterfront, with opportunities for boat rides and sea excursions.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Le Méridien Oran Hotel & Convention Centre (5-star).',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Historical Exploration of Kalaa of Beni Hammad:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Travel to the Kalaa of Beni Hammad and explore the ruins of the fortress, including its mosques, palaces, and walls, which offer insight into the region\'s medieval Islamic history.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Stay at Hotel Beni Hammad.',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for travel to and from the site.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to Tlemcen:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Travel to Tlemcen to explore its rural villages and historical landmarks.',
              ),
              Text(
                '- Visit the Grand Mosque of Tlemcen, an architectural masterpiece known for its intricate designs and Islamic heritage.',
              ),
              Text(
                '- Explore the El Mechouar Palace and Gardens, a UNESCO World Heritage site showcasing the region\'s rich history and culture.',
              ),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Renaissance Tlemcen Hotel (5-star).',
              ),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Transport: Approximately 60,000 DA.',
              ),
              Text(
                '- Accommodation: Approximately 50,000 DA.',
              ),
              Text(
                '- Meals and Activities: Approximately 50,000 DA.',
              ),
              Text(
                '- Miscellaneous: Approximately 10,000 DA.',
              ),
              Text(
                'Estimated Total Cost: Approximately 170,000 DA.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetIslamicNODesertAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicNODesertAnnaba({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Explore The Salah Bey Mosque.'),
              Text(
                  '- Explore the Basilica of St. Augustine, an important historical site blending Islamic and Roman influences.'),
              Text(
                  '- Discover the Hippo Regius ruins, showcasing the rich history of the region.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Sheraton Annaba Hotel (5-star).'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for local travel.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Engage in a variety of nautical activities along the Annaba coastline, including sailing, windsurfing, and boat tours.'),
              Text(
                  '- Visit Djenen El Bey, a popular beach destination for swimming and water sports.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Sheraton Annaba Hotel (5-star).'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for local travel.'),
              SizedBox(height: 20.0),
              Text(
                'Historical Exploration of the M\'Zab Valley:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Journey to the M\'Zab Valley.'),
              Text(
                  '- Explore the fortified cities, mosques, and traditional houses that offer a glimpse into the medieval Islamic civilization.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel El Mzab in Ghardaia.'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                  '- Private vehicles with chauffeur for travel to and from the site, with domestic flights as needed.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to the Villages of Ghardaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Ghardaia to explore its rural villages and historical landmarks.'),
              Text(
                  '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.'),
              Text(
                  '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel El Mzab in Ghardaia.'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for local travel.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 80,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 60,000 DA.'),
              Text('- Meals and Activities: Approximately 40,000 DA.'),
              Text('- Miscellaneous: Approximately 15,000 DA.'),
              Text('Estimated Total Cost: Approximately 195,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetIslamicNODesertBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicNODesertBejaia({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Tlemcen:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Visit the Palais de la Culture de Tlemcen - Imama.'),
              Text(
                  '- Explore the ruins of Mansourah, an ancient city that showcases the rich history of the region.'),
              Text(
                  '- Discover the El Mechouar Palace, a historical palace complex that provides insights into Tlemcen\'s Islamic heritage.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Renaissance Tlemcen Hotel (5-star).'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for local travel.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit Les Aiguades Beach to enjoy the stunning views and relax by the sea.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hôtel du Lac (4-star) in Bejaia.'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for local travel.'),
              SizedBox(height: 20.0),
              Text(
                'Historical Exploration of the Casbah of Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Journey to Algiers to explore the Casbah of Algiers.'),
              Text(
                  '- Visit historical sites such as the Palace of the Dey and the Martyrs\' Memorial.'),
              Text(
                  '- Stroll through the narrow streets and experience the vibrant local culture.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Sofitel Algiers Hamma Garden (5-star).'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for local travel.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to the Villages of Ghardaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Ghardaia to explore its rural villages and historical landmarks.'),
              Text(
                  '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.'),
              Text(
                  '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel El Mzab in Ghardaia.'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                  '- Private vehicles with chauffeur for local travel, with domestic flights as needed.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 90,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 80,000 DA.'),
              Text('- Meals and Activities: Approximately 50,000 DA.'),
              Text('- Miscellaneous: Approximately 20,000 DA.'),
              Text('Estimated Total Cost: Approximately 222,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNOHistoricalNODesertAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNOHistoricalNODesertAlger({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rural Excursion to the Villages of Ghardaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Ghardaia to explore its rural villages and historical landmarks.'),
              Text(
                  '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.'),
              Text(
                  '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel El Mzab in Ghardaia.'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                  '- Private vehicles with chauffeur for local travel, with domestic flights as needed.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit Sidi Fradj, a scenic coastal area ideal for swimming and water sports.'),
              Text('- Explore La Vigie Beach.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Sofitel Algiers Hamma Garden (5-star).'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for local travel.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 60,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 40,000 DA.'),
              Text('- Miscellaneous: Approximately 20,000 DA.'),
              Text('Estimated Total Cost: Approximately 160,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNOHistoricalNODesertOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNOHistoricalNODesertOran({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rural Excursion to the Atlas Mountains:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Embark on a scenic journey to the Atlas Mountains to explore its rural landscapes and traditional Berber villages.'),
              Text(
                  '- Visit picturesque villages such as Chréa, where you can enjoy hiking and breathtaking views of the mountains.'),
              Text(
                  '- Experience the unique culture and hospitality of the Berber people, and visit local markets to purchase traditional crafts.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                  '- Local guesthouses or boutique hotels in the Atlas Mountains region.'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                  '- Private vehicles with chauffeur for local travel, with domestic flights as needed.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Relax and indulge in nautical activities at Ain El Turk Beach.'),
              Text(
                  '- Explore the Corniche area for seaside leisure and dining options.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Le Méridien Oran Hotel & Convention Centre (5-star).'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for travel.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 40,000 DA.'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 9,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 980,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNOHistoricalNODesertAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNOHistoricalNODesertAnnaba({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Relaxation and Nautical Activities in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Relax and indulge in nautical activities at Ain achir Beach.'),
              Text(
                  '- Explore the coastal area for seaside leisure and dining options.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Sabri Hotel Annaba (5-star).'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for local travel.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to the Villages of Ghardaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Ghardaia to explore its rural villages and historical landmarks.'),
              Text(
                  '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.'),
              Text(
                  '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel El Mzab in Ghardaia.'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                  '- Private vehicles with chauffeur for local travel, with domestic flights as needed.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 50,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 50,000 DA.'),
              Text('- Meals and Activities: Approximately 20,000 DA.'),
              Text('- Miscellaneous: Approximately 10,000 DA.'),
              Text('Estimated Total Cost: Approximately 130,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNOHistoricalNODesertBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNOHistoricalNODesertBejaia({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nautical Places in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Enjoy the nautical attractions in Bejaia, including a visit to Tichy Beach.'),
              Text(
                  '- You can also visit Mellbou Beach and Ait Mendil to fully experience the area\'s natural beauty.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Spend your night at Hôtel Atlantis Béjaïa Aéroport.'),
              SizedBox(height: 10.0),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Take a flight to the Atlas Mountains.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to the Atlas Mountains:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Embark on a scenic journey to the Atlas Mountains to explore its rural landscapes and traditional Berber villages.'),
              Text(
                  '- Visit picturesque villages such as Chréa, where you can enjoy hiking and breathtaking views of the mountains.'),
              Text(
                  '- Experience the unique culture and hospitality of the Berber people, and visit local markets to purchase traditional crafts.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                  '- Local guesthouses or boutique hotels in the Atlas Mountains region.'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                  '- Private vehicles with chauffeur for local travel, with domestic flights as needed.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 40,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 20,000 DA.'),
              Text('- Miscellaneous: Approximately 20,000 DA.'),
              Text('Estimated Total Cost: Approximately 110,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNOHistoricalNONautical extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNOHistoricalNONautical({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rural Excursion to the Atlas Mountains:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Embark on a scenic journey to the Atlas Mountains to explore its rural landscapes and traditional Berber villages.'),
              Text(
                  '- Visit picturesque villages such as Chréa, where you can enjoy hiking and breathtaking views of the mountains.'),
              Text(
                  '- Experience the unique culture and hospitality of the Berber people, and visit local markets to purchase traditional crafts.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel Kasbah Tamadot.'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                  '- Private vehicles with chauffeur for local travel, with domestic flights as needed.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in Tassili n\'Ajjer:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Tassili n\'Ajjer for an immersive desert camping adventure.'),
              Text(
                  '- Camp under the starlit skies amidst the breathtaking rock formations and ancient rock art of the Tassili n\'Ajjer National Park.'),
              Text(
                  '- Enjoy guided hikes and camel treks to explore the unique geological features, rock paintings, and natural beauty of the desert landscape.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Tassili n\'Ajjer Desert Camp.'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                  '- Domestic flight from Atlas mountains to Tassili n\'Ajjer.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 50,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 50,000 DA.'),
              Text('- Meals and Activities: Approximately 30,000 DA.'),
              Text('- Miscellaneous: Approximately 20,000 DA.'),
              Text('Estimated Total Cost: Approximately 150,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNOHisNORuralAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNOHisNORuralAlger({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nautical Exploration in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit Sidi Fradj, a scenic coastal area ideal for swimming and water sports.'),
              Text('- Explore La Vigie Beach for seaside leisure activities.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Sofitel Algiers Hamma Garden (5-star).'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for local travel.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in Tassili n\'Ajjer:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Tassili n\'Ajjer for an immersive desert camping adventure.'),
              Text(
                  '- Camp under the starlit skies amidst the breathtaking rock formations and ancient rock art of the Tassili n\'Ajjer National Park.'),
              Text(
                  '- Enjoy guided hikes and camel treks to explore the unique geological features, rock paintings, and natural beauty of the desert landscape.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Tassili n\'Ajjer Desert Camp.'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Domestic flight from Algiers to Tassili n\'Ajjer.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 60,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 20,000 DA.'),
              Text('- Miscellaneous: Approximately 20,000 DA.'),
              Text('Estimated Total Cost: Approximately 140,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNOHisNORuralOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNOHisNORuralOran({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Relaxation and Nautical Activities in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Enjoy nautical activities at Ain El Turk Beach.'),
              Text(
                  '- Explore the Corniche area for seaside leisure and dining options.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Le Méridien Oran Hotel & Convention Centre (5-star).'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for travel.'),
              SizedBox(height: 20.0),
              Text(
                'Discovering the Desert in Hoggar National Park:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Explore Hoggar National Park for an immersive desert experience.'),
              Text('- Take a flight from Oran to Tamanrasset Airport.'),
              Text(
                  '- From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.'),
              Text(
                  '- Arrange an excursion with a local guide for an immersive desert experience.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 60,000 DA.'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 9,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 108,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNOHisNORuralAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNOHisNORuralAnnaba({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Relaxation and Nautical Activities in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Enjoy nautical activities at Ain Achir Beach.'),
              Text(
                  '- Explore the coastal area for seaside leisure and dining options.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Sabri Hotel Annaba (5-star).'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for local travel.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Discovery in Hoggar National Park:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Explore Hoggar National Park for an immersive desert experience.'),
              Text('- Take a flight from Annaba to Tamanrasset Airport.'),
              Text(
                  '- From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.'),
              Text(
                  '- Arrange an excursion with a local guide for an immersive desert experience.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 50,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 50,000 DA.'),
              Text('- Meals and Activities: Approximately 20,000 DA.'),
              Text('- Miscellaneous: Approximately 10,000 DA.'),
              Text('Estimated Total Cost: Approximately 130,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNOHisNORuralBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNOHisNORuralBejaia({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nautical Places in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Enjoy nautical attractions at Tichy Beach.'),
              Text(
                  '- Visit Mellbou Beach and Ait Mendil for more natural beauty.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Spend your night at Hôtel Atlantis Béjaïa Aéroport.'),
              SizedBox(height: 10.0),
              Text(
                'Desert Camping Experience in Tassili n\'Ajjer:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Embark on an immersive desert camping adventure in Tassili n\'Ajjer National Park.'),
              Text(
                  '- Camp under the starlit skies amidst breathtaking rock formations and ancient rock art.'),
              Text(
                  '- Enjoy guided hikes and camel treks to explore the unique geological features and natural beauty.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 60,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 20,000 DA.'),
              Text('- Miscellaneous: Approximately 20,000 DA.'),
              Text('Estimated Total Cost: Approximately 130,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNumidianNODesertNORuralAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNumidianNODesertNORuralAlger({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Numidian Sites in Djemila and Timgad:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Journey to Djemila to explore well-preserved Numidian ruins.'),
              Text(
                  '- Visit Timgad to discover the ancient Numidian city and its remarkable architecture.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel Numidie Centre in Sétif (4-star).'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for travel.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Relaxation and nautical activities at Sidi Fredj Port.'),
              Text('- Boat excursion to discover the bay of Algiers.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- El-Aurassi Hotel in Algiers (5-star).'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for travel.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 30,000 DA.'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 7,000 DA.'),
              Text('- Miscellaneous: Approximately 6,000 DA.'),
              Text('Estimated Total Cost: Approximately 83,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNumidianNODesertNORuralOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNumidianNODesertNORuralOran({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discovering Numidian Civilization in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Head to Hippo Regius in Annaba to delve into the history of the Numidian civilization.',
              ),
              Text(
                '- Visit the ancient ruins, museums, and learn more about this historical period.',
              ),
              Text(
                '- Enjoy the rural landscapes of Seraïdi, a picturesque village in the Edough mountains, offering panoramic views and hiking trails.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Taxi/Rental Car: Use a taxi or rent a car for local travel in Annaba.',
              ),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Spend the night at the Sheraton Hotel in Annaba, a luxury hotel offering exceptional comfort and top-notch services.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Ending the Trip in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Enjoy a relaxing day at Les Andalouses Beach, known for its crystal-clear waters and fine sand.',
              ),
              Text(
                '- Visit the Basilica of Notre-Dame de Santa Cruz, perched on Mount Murdjadjo, offering panoramic views of Oran and its surroundings.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Flight: Take a flight from Annaba to Oran.',
              ),
              Text(
                '- Taxi/Rental Car: Use a taxi or rent a car for local travel in Oran and to Les Andalouses Beach (about 25 km from the city center).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Spend the night at the Les Andalouses Tourist Complex, a resort offering top-notch leisure and relaxation facilities.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 40,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 10,000 DA.'),
              Text('Estimated Total Cost: Approximately 100,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNumidianNODesertNORuralAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNumidianNODesertNORuralAnnaba({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover Timgad:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Discover the fascinating history of Timgad by visiting its archaeological ruins, temples, theaters, and baths.',
              ),
              SizedBox(height: 10.0),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Flight: Take a flight to Batna Airport, the nearest airport to Timgad.',
              ),
              Text(
                '- Taxi/Rental Car: From the airport, take a taxi or rent a car to reach Timgad (approximately 35 km).',
              ),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Spend your day at the Tardjan Hotel, a 5-star hotel offering luxurious services and relaxation after your exploration.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Nautical Places:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Enjoy the Corniche of Annaba and don\'t forget to visit Rizi Omar Beach.',
              ),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Spend the night at the Sheraton Hotel, a 5-star hotel in Annaba.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Flight: Take a flight from Batna to Annaba.',
              ),
              Text(
                '- Taxi/Rental Car: Use a taxi or rent a car for local travel in Annaba.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 39,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 10,000 DA.'),
              Text('Estimated Total Cost: Approximately 99,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNumidianNODesertNORuralBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNumidianNODesertNORuralBejaia({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discovering Numidian Civilization in Constantine (Cirta):',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Explore the Numidian heritage in Constantine, once known as Cirta.',
              ),
              Text(
                '- Visit the ancient ruins and delve into the rich history of the region.',
              ),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at hotel Mariotte (5 stars).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Nautical Places:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Enjoy the nautical attractions in Bejaia, including a visit to Tichy Beach.',
              ),
              Text(
                '- Spend your night at Hôtel Atlantis Béjaïa Aéroport.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Flight: Take a flight from Constantine to Bejaia.',
              ),
              Text(
                '- Taxi/Rental Car: Use a taxi or rent a car for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 50,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 50,000 DA.'),
              Text('- Meals and Activities: Approximately 9,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 180,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetRomanNODesertNORuralAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanNODesertNORuralAlger({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Roman Sites in Constantine and Tiddis:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Journey to Constantine to explore the ancient Roman ruins and the iconic suspension bridges.',
              ),
              Text(
                '- Visit Tiddis to discover the Roman archaeological site overlooking breathtaking landscapes.',
              ),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Hotel Novotel Constantine (4-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit Sidi Fradj, a scenic coastal area ideal for swimming and water sports.',
              ),
              Text(
                '- Explore la Vigie Beach.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Sofitel Algiers Hamma Garden (5-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel in Algiers.',
              ),
              Text(
                '- Domestic flight from Constantine to Algiers.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 30,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 9,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 89,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetRomanNODesertNORuralOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanNODesertNORuralOran({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Roman Sites in Timgad and Djemila:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Journey to Timgad to explore the well-preserved Roman ruins.',
              ),
              Text(
                '- Visit Djemila to discover the ancient Roman city and its architectural marvels.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Hotel El Kenz in Sétif (4-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                '.Relaxation and Nautical Activities in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Relax and indulge in nautical activities at Ain El Turk Beach.',
              ),
              Text(
                '- Explore the Corniche area for seaside leisure and dining options.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Le Méridien Oran Hotel & Convention Centre (5-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for travel.',
              ),
              Text(
                '- Flight: Take a flight from Sétif to Oran.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 40,000 DA.'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 8,000 DA.'),
              Text('- Miscellaneous: Approximately 8,000 DA.'),
              Text('Estimated Total Cost: Approximately 86,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetRomanNODesertNORuralAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanNODesertNORuralAnnaba({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Roman Sites in Constantine and Tiddis:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Journey to Constantine to explore the ancient Roman ruins and the iconic suspension bridges.',
              ),
              Text(
                '- Visit Tiddis to discover the Roman archaeological site overlooking breathtaking landscapes.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Hotel Novotel Constantine (4-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                '.Relaxation and Nautical Activities in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Relax and indulge in nautical activities at Ain Achir Beach.',
              ),
              Text(
                '- Explore the coastal area for seaside leisure and dining options.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Sabri Hotel Annaba (5-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              Text(
                '- Flight: From Constantine to Annaba.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 30,000 DA.'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 10,000 DA.'),
              Text('Estimated Total Cost: Approximately 90,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetRomanNODesertNORuralBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanNODesertNORuralBejaia({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Roman Sites in Timgad and Djemila:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Journey to Timgad to explore the well-preserved Roman ruins.',
              ),
              Text(
                '- Visit Djemila to discover the ancient Roman city and its architectural marvels.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Hotel El Kenz in Sétif (4-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Nautical Activities in Béjaïa:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Activities:',
              ),
              Text(
                '- Indulge in nautical activities at Tichy Beach, including swimming, snorkeling, and diving.',
              ),
              Text(
                '- Explore the Cap Carbon coastline by boat, visiting sea caves and hidden coves.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Hôtel Royal Bejaia (5-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              Text(
                '- Take a flight from Setif to Bejaia.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 30,000 DA.'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 89,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetIslamicNODesertNORuralAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicNODesertNORuralAlger({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit the historic Casbah of Algiers, a UNESCO World Heritage site known for its Islamic architecture and heritage.',
              ),
              Text(
                '- Explore the Ketchaoua Mosque, a symbol of Algiers\' Islamic heritage, with its intricate design and rich history.',
              ),
              Text(
                '- Discover the National Museum of Antiquities and Islamic Arts, showcasing artifacts and artworks from Algeria\'s Islamic past.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at El Djazair Hotel (5-star) in Algiers.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit la vigie beach.',
              ),
              Text(
                '- Explore the historic Algiers Harbor and its iconic lighthouse, witnessing the city\'s maritime heritage.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at El Djazair Hotel (5-star) in Algiers.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 10,000 DA.'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 10,000 DA.'),
              Text('Estimated Total Cost: Approximately 60,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetIslamicNODesertNORuralOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicNODesertNORuralOran({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit the Great Mosque of Oran, a landmark with stunning architecture and rich history.',
              ),
              Text(
                '- Discover the Ahmed Zabana Museum, which showcases artifacts related to Algeria\'s Islamic heritage.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Le Méridien Oran Hotel & Convention Centre (5-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Engage in various nautical activities along the Oran at Madagh Plage.',
              ),
              Text(
                '- Explore the Port of Oran and its bustling waterfront, with opportunities for boat rides and sea excursions.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Le Méridien Oran Hotel & Convention Centre (5-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 20,000 DA.'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 9,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 78,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetIslamicNODesertNORuralAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicNODesertNORuralAnnaba({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit the historic Casbah of Algiers, a UNESCO World Heritage site known for its Islamic architecture and heritage.',
              ),
              Text(
                '- Explore the Ketchaoua Mosque, a symbol of Algiers\' Islamic heritage, with its intricate design and rich history.',
              ),
              Text(
                '- Discover the National Museum of Antiquities and Islamic Arts, showcasing artifacts and artworks from Algeria\'s Islamic past.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at El Djazair Hotel (5-star) in Algiers.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Engage in a variety of nautical activities along the Annaba coastline, including sailing, windsurfing, and boat tours.',
              ),
              Text(
                '- Visit Djenen El Bey, a popular beach destination for swimming and water sports.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Sheraton Annaba Hotel (5-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 10.0),
              Text(
                '- Flight: Take a flight from Algiers to Annaba.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 35,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 9,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 93,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetIslamicNODesertNORuralBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicNODesertNORuralBejaia({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Tlemcen:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit the Palais de la Culture de Tlemcen - Imama.',
              ),
              Text(
                '- Explore the ruins of Mansourah, an ancient city that showcases the rich history of the region.',
              ),
              Text(
                '- Discover the El Mechouar Palace, a historical palace complex that provides insights into Tlemcen\'s Islamic heritage.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Renaissance Tlemcen Hotel (5-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit Les Aiguades Beach to enjoy the stunning views and relax by the sea.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Hôtel du Lac (4-star) in Bejaia.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 40,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 9,000 DA.'),
              Text('- Miscellaneous: Approximately 90,000 DA.'),
              Text('Estimated Total Cost: Approximately 260,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNOHistoricalNODesertNONautical extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNOHistoricalNODesertNONautical({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Rural Excursion to the Villages of Ghardaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Travel to Ghardaia to explore its rural villages and historical landmarks.',
              ),
              Text(
                '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.',
              ),
              Text(
                '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Hotel El Mzab in Ghardaia.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel, with domestic flights as needed.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 20,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 20,000 DA.'),
              Text('- Meals and Activities: Approximately 50,000 DA.'),
              Text('- Miscellaneous: Approximately 50,000 DA.'),
              Text('Estimated Total Cost: Approximately 140,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNOHistoricalNONauticalNORural extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNOHistoricalNONauticalNORural({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sahara Adventure in Djanet:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Travel to Djanet for an authentic desert camping experience.',
              ),
              Text(
                '- Camp under the stars amidst the Sahara dunes.',
              ),
              Text(
                '- Enjoy 4x4 desert safaris to explore oases and traditional desert villages.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Djanet Desert Camp.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- 4x4 vehicles for desert travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 30,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 20,000 DA.'),
              Text('- Meals and Activities: Approximately 70,000 DA.'),
              Text('- Miscellaneous: Approximately 60,000 DA.'),
              Text('Estimated Total Cost: Approximately 180,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNumidianNODesertNONautical extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNumidianNODesertNONautical({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover Timgad:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Discover the fascinating history of Timgad by visiting its archaeological ruins, temples, theaters, and baths.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Flight: Take a flight to Batna Airport, the nearest airport to Timgad.',
              ),
              Text(
                '- Taxi/Rental Car: From the airport, take a taxi or rent a car to reach Timgad (approximately 35 km).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Spend your day at the Tardjan Hotel, a 5-star hotel offering luxurious services and relaxation after your exploration.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Travel to Ghardaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Explore its rural villages and historical landmarks.',
              ),
              Text(
                '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.',
              ),
              Text(
                '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Hotel El Mzab in Ghardaia.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Use taxis for transportation.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 50,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 90,000 DA.'),
              Text('- Miscellaneous: Approximately 70,000 DA.'),
              Text('Estimated Total Cost: Approximately 106,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetRomanNODesertNONautical extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanNODesertNONautical({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Roman Sites in Timgad and Djemila:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Journey to Timgad to explore the well-preserved Roman ruins.',
              ),
              Text(
                '- Visit Djemila to discover the ancient Roman city and its architectural marvels.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Hotel El Kenz in Sétif (4-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Exploration of Rural Areas:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Embark on a rural excursion to picturesque villages like Tifra, Ighzer Amokrane, and Souk El Khemis.',
              ),
              Text(
                '- Immerse yourself in the tranquility and authenticity of rural Algerian life.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at guesthouses in rural villages.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              Text(
                '- Take a flight from Sétif to Béjaïa.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 40,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 20,000 DA.'),
              Text('- Miscellaneous: Approximately 10,000 DA.'),
              Text('Estimated Total Cost: Approximately 110,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetIslamicNODesertNONautical extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicNODesertNONautical({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Tlemcen:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit the Palais de la Culture de Tlemcen - Imama.',
              ),
              Text(
                '- Explore the ruins of Mansourah, an ancient city that showcases the rich history of the region.',
              ),
              Text(
                '- Discover the El Mechouar Palace, a historical palace complex that provides insights into Tlemcen\'s Islamic heritage.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Renaissance Tlemcen Hotel (5-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to the Villages of Ghardaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Travel to Ghardaia to explore its rural villages and historical landmarks.',
              ),
              Text(
                '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.',
              ),
              Text(
                '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Hotel El Mzab in Ghardaia.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              Text(
                '- Take a flight from Tlemcen to Ghardaia.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 60,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 90,000 DA.'),
              Text('- Miscellaneous: Approximately 70,000 DA.'),
              Text('Estimated Total Cost: Approximately 116,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetHistoricalNONauticalNumidiann extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetHistoricalNONauticalNumidiann({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discovering Numidian Civilization in Constantine (Cirta):',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Explore the Numidian heritage in Constantine, once known as Cirta.',
              ),
              Text(
                '- Visit the ancient ruins and delve into the rich history of the region.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Spend your night at Hotel Mariotte (5 stars).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in Tassili n\'Ajjer:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Travel to Tassili n\'Ajjer for an immersive desert camping adventure.',
              ),
              Text(
                '- Camp under the starlit skies amidst the breathtaking rock formations and ancient rock art of the Tassili n\'Ajjer National Park.',
              ),
              Text(
                '- Enjoy guided hikes and camel treks to explore the unique geological features, rock paintings, and natural beauty of the desert landscape.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Tassili n\'Ajjer Desert Camp.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Domestic flight from Constantine to Tassili n\'Ajjer.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 50,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 50,000 DA.'),
              Text('- Meals and Activities: Approximately 6,000 DA.'),
              Text('- Miscellaneous: Approximately 6,000 DA.'),
              Text('Estimated Total Cost: Approximately 112,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetHistoricalNONauticalRomann extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetHistoricalNONauticalRomann({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Roman Civilization Discovery in Guelma:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit Arc de Trajan (Trajan\'s Arch), a triumphal arch built in honor of the Roman Emperor Trajan.',
              ),
              Text(
                '- Explore the archaeological Museum of Guelma.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Spend the night at Bouchahrine Thermes.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Desert Discovery in Hoggar National Park:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Explore the desert by visiting Hoggar National Park.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Flight: Take a flight from Guelma to Tamanrasset Airport.',
              ),
              Text(
                '- Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Excursion:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Arrange an excursion with a local guide for an immersive desert experience.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 50,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 50,000 DA.'),
              Text('- Meals and Activities: Approximately 6,000 DA.'),
              Text('- Miscellaneous: Approximately 10,000 DA.'),
              Text('Estimated Total Cost: Approximately 116,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetHistoricalNONauticalIslamicc extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetHistoricalNONauticalIslamicc({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Explore the Grand Mosque of Algiers, also known as the Djamaa el Kebir.',
              ),
              Text(
                '- Explore the Ketchaoua Mosque, a symbol of Algiers\' Islamic heritage.',
              ),
              Text(
                '- Discover the National Museum of Antiquities and Islamic Arts, showcasing artifacts and artworks from Algeria\'s Islamic past.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at El Djazair Hotel (5-star) in Algiers.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Desert Discovery in Hoggar National Park:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Explore the desert by visiting Hoggar National Park.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Flight: Take a flight from Algiers to Tamanrasset Airport.',
              ),
              Text(
                '- Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Excursion:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Arrange an excursion with a local guide for an immersive desert experience.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 50,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 60,000 DA.'),
              Text('- Meals and Activities: Approximately 9,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 128,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetNudmidianEverNO extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetNudmidianEverNO({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Numidian Sites in Djemila and Timgad:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Journey to Djemila to explore well-preserved Numidian ruins.',
              ),
              Text(
                '- Visit Timgad to discover the ancient Numidian city and its remarkable architecture.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Hotel Numidie Centre in Sétif (4-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 15,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 20,000 DA.'),
              Text('- Meals and Activities: Approximately 5,000 DA.'),
              Text('- Miscellaneous: Approximately 5,000 DA.'),
              Text('Estimated Total Cost: Approximately 45,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetRomanEverNO extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetRomanEverNO({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Roman Sites in Constantine and Tiddis:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Journey to Constantine to explore the ancient Roman ruins and the iconic suspension bridges.',
              ),
              Text(
                '- Visit Tiddis to discover the Roman archaeological site overlooking breathtaking landscapes.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Hotel Novotel Constantine (4-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transportation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 15,000 DA.'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 5,000 DA.'),
              Text('- Miscellaneous: Approximately 5,000 DA.'),
              Text('Estimated Total Cost: Approximately 550,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetIslamicEverNO extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetIslamicEverNO({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Tlemcen:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Visit the Palais de la Culture de Tlemcen - Imama.',
              ),
              Text(
                '- Explore the ruins of Mansourah, an ancient city that showcases the rich history of the region.',
              ),
              Text(
                '- Discover the El Mechouar Palace, a historical palace complex that provides insights into Tlemcen\'s Islamic heritage.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Renaissance Tlemcen Hotel (5-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 15,000 DA.'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 5,000 DA.'),
              Text('- Miscellaneous: Approximately 6,000 DA.'),
              Text('Estimated Total Cost: Approximately 56,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetAlgerEverNO extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetAlgerEverNO({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Relaxation and Nautical Activities in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Relaxation and nautical activities at Sidi Fredj Port.',
              ),
              Text(
                '- Boat excursion to discover the bay of Algiers.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at El-Aurassi Hotel in Algiers (5-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 20,000 DA.'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 5,000 DA.'),
              Text('- Miscellaneous: Approximately 5,000 DA.'),
              Text('Estimated Total Cost: Approximately 70,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetOranEverNO extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetOranEverNO({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Relaxation and Nautical Activities in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Relax and indulge in nautical activities at Ain El Turk Beach.',
              ),
              Text(
                '- Explore the Corniche area for seaside leisure and dining options.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Le Méridien Oran Hotel & Convention Centre (5-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 15,000 DA.'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 8,000 DA.'),
              Text('- Miscellaneous: Approximately 8,000 DA.'),
              Text('Estimated Total Cost: Approximately 61,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetAnnabaEverNO extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetAnnabaEverNO({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nautical Exploration in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Engage in a variety of nautical activities along the Annaba coastline, including sailing, windsurfing, and boat tours.',
              ),
              Text(
                '- Visit Djenen El Bey, a popular beach destination for swimming and water sports.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Sheraton Annaba Hotel (5-star).',
              ),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Private vehicles with chauffeur for local travel.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 15,000 DA.'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 5,000 DA.'),
              Text('- Miscellaneous: Approximately 5,000 DA.'),
              Text('Estimated Total Cost: Approximately 55,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class BigbudgetBejaiaEverNO extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const BigbudgetBejaiaEverNO({
    required this.budget,
    required this.tripDuration,
    required this.historicalPlaces,
    required this.ancientCivilization,
    required this.desertCamping,
    required this.nauticalPlaces,
    required this.ruralPlaces,
    required this.provincePreference,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Your Best Plan:',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nautical Places in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Enjoy the nautical attractions in Bejaia, including a visit to Tichy Beach.',
              ),
              Text(
                '- Visit Mellbou Beach and Ait Mendil to fully experience the area\'s natural beauty.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Stay at Hôtel Atlantis Béjaïa Aéroport.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 15,000 DA.'),
              Text('- Accommodation: Approximately 20,000 DA.'),
              Text('- Meals and Activities: Approximately 50,000 DA.'),
              Text('- Miscellaneous: Approximately 50,000 DA.'),
              Text('Estimated Total Cost: Approximately 450,00 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

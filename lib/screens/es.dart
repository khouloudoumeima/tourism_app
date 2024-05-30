import 'package:flutter/material.dart';
import 'dart:ui' show lerpDouble;

class ItineraryScreen extends StatelessWidget {
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Morning:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '- Begin your day by visiting the Ketchaoua Mosque, an impressive example of Algerian Islamic architecture, located inside the Casbah.',
              ),
              Text(
                '- Explore the famous Casbah of Algiers. Wander through its narrow streets.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Lunch:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Indulge in Algerian cuisine by having lunch at a restaurant Dar essoltane offering traditional dishes such as couscous, tajine, or seafood specialties.',
              ),
              Text(
                '- Budget approximately 4000 DA for lunch.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Afternoon:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '- After lunch, head to the Jardin d\'Essai du Hamma in Algiers by taxi (it takes 18 mins).',
              ),
              Text(
                '- Then, end your day by strolling along the Corniche by bus, which provides stunning views of the Mediterranean Sea. Enjoy the sunset over the Bay of Algiers and soak in the lively atmosphere of the city.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Night:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'For your overnight stay, book a room at the Holiday Inn. The cost for one night is approximately 16400 DA.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Taking these into account, the total cost of this plan for a day and a night would be around 21600 DA, including entrance fees for tourist sites, lunch, transportation costs, and accommodation at the Holiday Inn.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Of course, a single day won\'t uncover all of Algeria\'s treasures, but this plan will give you a fascinating insight into the country\'s rich history, vibrant culture, and picturesque landscapes. Be sure to plan ahead and take into account the opening hours of tourist sites to maximize your time.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItineraryScreen1 extends StatelessWidget {
  final String budget;

  ItineraryScreen1({required this.budget});

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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Morning:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Begin your day by exploring the famous Casbah of Algiers, a UNESCO World Heritage site. Wander through its narrow streets, admire the Moorish architecture, and discover its lively bazaars and traditional houses. Don\'t miss visiting the Ketchaoua Mosque, an impressive example of Algerian Islamic architecture, located inside the Casbah.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Lunch:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Indulge in Algerian cuisine by having lunch at a local restaurant offering traditional dishes such as couscous, tajine, or seafood specialties. Budget approximately 2500 DA for lunch.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Afternoon:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'After lunch, head to the Jardin d\'Essai du Hamma in Algiers. This spectacular botanical garden offers a peaceful escape in the heart of the city, with a wide variety of plants, flowers, and trees. Then, end your day by strolling along the Corniche, which provides stunning views of the Mediterranean Sea. Enjoy the sunset over the Bay of Algiers and soak in the lively atmosphere of the city.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Night:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'For your overnight stay, book a room at hotel du Moulin. The cost for one night is approximately 7000 DA.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Taking these into account, the total cost of this plan for a day and a night would be around 15000 DA, including entrance fees for tourist sites, lunch, transportation costs, and accommodation at hotel du Moulin.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Of course, a single day won\'t uncover all of Algeria\'s treasures, but this plan will give you a fascinating insight into the country\'s rich history, vibrant culture, and picturesque landscapes. Be sure to plan ahead and take into account the opening hours of tourist sites to maximize your time.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItineraryScreen2 extends StatelessWidget {
  final String budget;

  ItineraryScreen2({required this.budget});

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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Morning:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Begin your day by exploring the famous Casbah of Algiers, a UNESCO World Heritage site. Wander through its narrow streets, admire the Moorish architecture, and discover its lively bazaars and traditional houses. Don\'t miss visiting the Ketchaoua Mosque, an impressive example of Algerian Islamic architecture, located inside the Casbah.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Lunch:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Indulge in Algerian cuisine by having lunch at a local restaurant offering traditional dishes such as couscous, tajine, or seafood specialties. Budget approximately 2500 DA for lunch.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Afternoon:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                ' This spectacular botanical garden offers a peaceful escape in the heart of the city, with a wide variety of plants, flowers, and trees. Then, end your day by strolling along the Corniche, which provides stunning views of the Mediterranean Sea. Enjoy the sunset over the Bay of Algiers and soak in the lively atmosphere of the city.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Night:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'For your overnight stay, book a room at hotel du Moulin. The cost for one night is approximately 7000 DA.',
              ),
              SizedBox(height: 20.0),
              Text(
                'Taking these into account, the total cost of this plan for a day and a night would be around 15000 DA, including entrance fees for tourist sites, lunch, transportation costs, and accommodation at hotel du Moulin.',
              ),
              SizedBox(height: 20.0),
              Text(
                ' treasures, but this plan will give you a fascinating insight into the country\'s rich history, vibrant culture, and picturesque landscapes. Be sure to plan ahead and take into account the opening hours of tourist sites to maximize your time.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class BigBudgetMultipleDaysScreen extends StatefulWidget {
  late String budget;
  late String ancientCivilization;

  late String historicalPlaces;

  late final String tripDuration;

  late final String desertCamping;

  late String nauticalPlaces;

  late String ruralPlaces;

  late String provincePreference;
  BigBudgetMultipleDaysScreen(
      {required this.budget,
      required String tripDuration,
      required String historicalPlaces,
      required String ancientCivilization,
      required String desertCamping,
      required String nauticalPlaces,
      required String provincePreference});

  @override
  State<BigBudgetMultipleDaysScreen> createState() =>
      _BigBudgetMultipleDaysScreenState();
}

class _BigBudgetMultipleDaysScreenState
    extends State<BigBudgetMultipleDaysScreen> {
  late String ancientCivilization;

  late String historicalPlaces;

  late final String tripDuration;

  late final String desertCamping;

  late String nauticalPlaces;

  late String ruralPlaces;

  late String provincePreference;

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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Day 1 - Algiers:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                  'Begin your exploration in Algiers with a visit to the Kasbah, followed by the Grand Mosque and the Mosque of El Emir Abdelkader.'),
              Text('Enjoy leisure time at Sidi Fredj Port and Vigie Beach.'),
              Text('Overnight at the Sheraton Hotel.'),
              Text(
                  'Transport: Utilize local taxis or hire a car for intra-city travel.'),
              SizedBox(height: 16.0),
              Text(
                'Day 2 - Djemila:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                  'Catch a scheduled flight to Djemila to explore the ancient Roman and Numidian ruins.'),
              Text('Relax at the Azdif Hotel.'),
              Text('Transport: Fly from Algiers to Djemila.'),
              SizedBox(height: 16.0),
              Text(
                'Day 3 - Timimoun:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                  'Conclude your journey in Timimoun, immersing yourself in picturesque oases and local culture.'),
              Text(
                  'Transport: Arrange ground transportation through the Azdif Hotel for local travel.'),
              SizedBox(height: 16.0),
              Text(
                'Estimated Budget:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
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

class MediumbudgetNumidianAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNumidianAlger({
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
      debugShowCheckedModeBanner: false,
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
              Text('Accommodation: Hotel Numidie Centre in Sétif (4-star).'),
              Text('Transport: Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit Sidi Fradj, a scenic coastal area ideal for swimming and water sports.'),
              Text('- Visit La Vigie Beach.'),
              Text('Accommodation: Abbasside Palace (3-star).'),
              Text('Transport: Take a taxi from Sétif to Algiers.'),
              Text('Transport: Use the bus for transportation.'),
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
              Text('Accommodation: Tassili n\'Ajjer Desert Camp.'),
              Text(
                  'Transport: Domestic flight from Algiers to Tassili n\'Ajjer.'),
              SizedBox(height: 20.0),
              Text(
                'Excursion to Rural Villages in the Kabylie Mountains:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Tasting of local products and immersion in Berber culture.'),
              Text('Accommodation: Rural gîte in the Kabylie region.'),
              Text('Transport: Private vehicles with chauffeur for travel.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 400,000 DA.'),
              Text('- Accommodation: Approximately 300,000 DA.'),
              Text('- Meals and Activities: Approximately 50,000 DA.'),
              Text('- Miscellaneous: Approximately 40,000 DA.'),
              Text('Estimated Total Cost: Approximately 790,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNumidianOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNumidianOran({
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
      debugShowCheckedModeBanner: false,
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
              Text('Accommodation: Hotel Numidie Centre in Sétif (4-star).'),
              Text('Transport: Private vehicles with chauffeur for travel.'),
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
              Text('Accommodation: Hotel Miami Beach (3 stars).'),
              Text('Transport: Use the bus for transportation.'),
              Text('Transport: Take a taxi from Sétif to Oran.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Exploration in Hoggar National Park:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Discover the desert by exploring Hoggar National Park.'),
              Text('Transportation:'),
              Text('- Flight: Take a flight from Oran to Tamanrasset Airport.'),
              Text(
                  '- Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.'),
              Text(
                  '- Excursion: Arrange an excursion with a local guide for an immersive desert experience.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Exploration in the M\'Zab Valley:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Ghardaia to explore its rural villages and historical landmarks.'),
              Text(
                  '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.'),
              Text(
                  '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.'),
              Text('Accommodation: Hotel El Mzab in Ghardaia.'),
              Text('Transport: Use taxi for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 500,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 400,000 DA.'),
              Text('- Meals and Activities: Approximately 200,000 DA.'),
              Text('- Miscellaneous: Approximately 100,000 DA.'),
              Text('Estimated Total Cost: Approximately 1,200,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNumidianAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNumidianAnnaba({
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
      debugShowCheckedModeBanner: false,
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
                  '- Head to Hippo Regius in Annaba to delve into the history of the Numidian civilization. Visit the ancient ruins, museums, and learn more about this historical period.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Sites:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Enjoy the rural landscapes of Seraïdi, a picturesque village in the Edough mountains, offering panoramic views and hiking trails.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Relax and indulge in nautical activities at Ain Achir Beach.'),
              Text(
                  '- Explore the coastal area for seaside leisure and dining options.'),
              Text('Accommodation: Hotel Rim El Djamil (3 stars).'),
              Text('Transport: Use taxi for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Discovery:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Discover the desert by exploring Hoggar National Park.'),
              Text('Transportation:'),
              Text(
                  '- Flight: Take a flight from Annaba to Tamanrasset Airport.'),
              Text(
                  '- Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.'),
              Text(
                  '- Excursion: Arrange an excursion with a local guide for an immersive desert experience.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 400,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 300,000 DA.'),
              Text('- Meals and Activities: Approximately 100,000 DA.'),
              Text('- Miscellaneous: Approximately 90,000 DA.'),
              Text('Estimated Total Cost: Approximately 890,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNumidianBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNumidianBejaia({
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
      debugShowCheckedModeBanner: false,
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
                  '- Explore the Numidian heritage in Constantine, once known as Cirta.'),
              Text(
                  '- Visit the ancient ruins and delve into the rich history of the region.'),
              Text('Accommodation: Spend your night at Hotel Cirta (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Rural Sites:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Take a trip to the Kabyle village to explore rural sites such as Tala Hiba.'),
              Text('Transport: Take a taxi from Constantine to Bejaia.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Places:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Enjoy the nautical attractions in Bejaia, including a visit to Tichy Beach.'),
              Text(
                  '- Visit Mellbou Beach and Ait Mendil to fully experience the area\'s natural beauty.'),
              Text(
                  'Accommodation: Spend your night at HOTEL DU NORD (3 stars).'),
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
              Text('Accommodation: Tassili n\'Ajjer Desert Camp.'),
              Text(
                  'Transport: Domestic flight from Bejaia to Tassili n\'Ajjer.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 370,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 320,000 DA.'),
              Text('- Meals and Activities: Approximately 100,000 DA.'),
              Text('- Miscellaneous: Approximately 100,000 DA.'),
              Text('Estimated Total Cost: Approximately 890,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetRomanAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetRomanAlger({
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
      debugShowCheckedModeBanner: false,
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
                'Exploration of Roman Sites in Djemila and Timgad:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Journey to Djemila to explore well-preserved Roman ruins.'),
              Text(
                  '- Visit Timgad to discover the ancient Roman city and its remarkable architecture.'),
              Text('Accommodation: Hotel Numidie Centre in Sétif (4-star).'),
              Text('Transport: Private vehicles with chauffeur for travel.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Relaxation and nautical activities at Sidi Fredj Port.'),
              Text('- Boat excursion to discover the bay of Algiers.'),
              Text('Accommodation: Abbasside Palace (3-stars).'),
              Text('Transport: Use the bus for transportation.'),
              Text('Take a taxi from Sétif to Algiers.'),
              SizedBox(height: 20.0),
              Text(
                'Discovery of Rural Areas:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Excursion to rural villages in the Kabylie mountains.'),
              Text(
                  '- Tasting of local products and immersion in Berber culture.'),
              Text('Accommodation: Rural gîte in the Kabylie region.'),
              SizedBox(height: 20.0),
              Text(
                'Sahara Adventure in Timimoun:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Travel to Timimoun for an authentic desert experience.'),
              Text('- Camping in the desert for a night under the stars.'),
              Text(
                  '- 4x4 excursion to explore oases, sand dunes, and traditional villages.'),
              Text('Accommodation: Saharaoui Camp in Timimoun.'),
              Text('Transport: Internal flight to Timimoun from Algiers.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 500,000 DA.'),
              Text('- Accommodation: Approximately 500,000 DA.'),
              Text('- Meals and Activities: Approximately 100,000 DA.'),
              Text('- Miscellaneous: Approximately 100,000 DA.'),
              Text('Estimated Total Cost: Approximately 1,200,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetRomanOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetRomanOran({
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
      debugShowCheckedModeBanner: false,
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
                  '- Visit the Fort Santa Cruz and learn about its historical significance.'),
              Text(
                  '- Explore the Great Mosque of Oran, showcasing ancient Roman influences.'),
              Text(
                  '- Discover the Museum of Modern Art of Oran for insights into Roman civilization.'),
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
              Text('Accommodation: Miami Beach (3-star).'),
              Text('Transport: Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Discovery of Rural Areas:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Embark on a rural excursion to explore the picturesque villages of the Oran countryside.'),
              Text(
                  '- Immerse in the local culture and traditions of rural Algeria.'),
              Text('Accommodation: Rural guesthouse in the Oran countryside.'),
              Text('Transport: Private vehicles with chauffeur for travel.'),
              SizedBox(height: 20.0),
              Text(
                'Sahara Adventure in Djanet:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Djanet for an authentic desert camping experience.'),
              Text('- Camp under the stars amidst the Sahara dunes.'),
              Text(
                  '- Enjoy 4x4 desert safaris to explore oases and traditional desert villages.'),
              Text('Accommodation: Djanet Desert Camp.'),
              Text(
                  'Transport: Internal flight to Djanet from Oran and 4x4 vehicles for desert travel.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 500,000 DA.'),
              Text('- Accommodation: Approximately 500,000 DA.'),
              Text('- Meals and Activities: Approximately 100,000 DA.'),
              Text('- Miscellaneous: Approximately 100,000 DA.'),
              Text('Estimated Total Cost: Approximately 1,200,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetRomanAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetRomanAnnaba({
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
      debugShowCheckedModeBanner: false,
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
              Text('- Visit the ruins of Hippo Regius, an ancient Roman city.'),
              Text(
                  '- Explore the Basilica of Saint Augustine, showcasing Roman and Christian history.'),
              Text(
                  '- Discover the Museum of Antiquities for insights into Roman civilization.'),
              Text('Accommodation: L\'Orient Hotel (4 stars).'),
              Text('Transport: Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Relax and indulge in nautical activities at Ain Achir Beach.'),
              Text(
                  '- Explore the coastal area for seaside leisure and dining options.'),
              SizedBox(height: 20.0),
              Text(
                'Discovery of Rural Areas:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Embark on a rural adventure to discover the charming villages scattered throughout the picturesque countryside surrounding Annaba, such as the quaint village of Seraidi.'),
              Text(
                  '- Immerse in the local culture and traditions of rural Algeria.'),
              Text(
                  'Accommodation: Rural guesthouse in the Annaba countryside.'),
              SizedBox(height: 20.0),
              Text(
                'Sahara Adventure in Taghit:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Taghit for an authentic desert camping experience.'),
              Text('- Camp under the stars amidst the Sahara dunes.'),
              Text(
                  '- Enjoy 4x4 desert safaris to explore oases and traditional desert villages.'),
              Text('Accommodation: Taghit Desert Camp.'),
              Text('Transport: Domestic flight from Annaba to Taghit.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 400,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 400,000 DA.'),
              Text('- Meals and Activities: Approximately 90,000 DA.'),
              Text('- Miscellaneous: Approximately 90,000 DA.'),
              Text('Estimated Total Cost: Approximately 980,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetRomanBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetRomanBejaia({
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
      debugShowCheckedModeBanner: false,
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
                'Discovery of Bejaïa and Surroundings:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit the Kasbah of Bejaïa, a historical fortress overlooking the Mediterranean Sea.'),
              Text(
                  '- Explore the Roman ruins of Toudja and the ancient city of Saldae.'),
              Text(
                  '- Discover the Béjaïa Museum to learn about Roman civilization and local history.'),
              Text('Accommodation: Les Hammadites Hotel (3-star).'),
              Text('Transport: Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Activities in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Indulge in nautical activities at Tichy Beach, including swimming, snorkeling, and diving.'),
              Text(
                  '- Explore the Cap Carbon coastline by boat, visiting sea caves and hidden coves.'),
              SizedBox(height: 20.0),
              Text(
                'Exploration of Rural Areas:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Embark on a rural excursion to picturesque villages like Tifra, Ighzer Amokrane, and Souk El Khemis.'),
              Text(
                  '- Immerse yourself in the tranquility and authenticity of rural Algerian life.'),
              Text('Accommodation: Guesthouses in rural villages.'),
              Text(
                  'Transport: Private vehicles with chauffeur for local travel.'),
              SizedBox(height: 20.0),
              Text(
                'Sahara Desert Exploration in Tamanrasset:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Venture to Tamanrasset for an immersive Sahara Desert experience.'),
              Text(
                  '- Set up camp beneath the shimmering stars amidst the vast expanse of the Sahara dunes.'),
              Text(
                  '- Embark on thrilling 4x4 desert safaris to discover hidden oases, towering sand dunes, and traditional desert settlements.'),
              Text('Accommodation: Tamanrasset Desert Camp.'),
              Text('Transport: Domestic flight from Bejaïa to Tamanrasset.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 600,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 500,000 DA.'),
              Text('- Meals and Activities: Approximately 100,000 DA.'),
              Text('- Miscellaneous: Approximately 90,000 DA.'),
              Text('Estimated Total Cost: Approximately 1,290,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetIslamicAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetIslamicAlger({
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Your Best Plan:',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discovery of Algiers and Surroundings:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Visit the Kasbah of Algiers and historical mosques.'),
              Text(
                  '- Explore the National Museum of Antiquities and Islamic Arts for Roman artifacts.'),
              Text(
                  '- Excursion to Tipasa to explore Roman ruins and enjoy the Mediterranean coast.'),
              Text('Accommodation: Hotel Lella Doudja (4 stars).'),
              Text('Transport: Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Travel to Timimoun for an Authentic Desert Experience:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Camping in the desert for a night under the stars.'),
              Text(
                  '- 4x4 excursion to explore oases, sand dunes, and traditional villages.'),
              Text('Accommodation: Saharaoui Camp in Timimoun.'),
              Text('Transport: Internal flight to Timimoun from Algiers.'),
              SizedBox(height: 15.0),
              Text(
                'Relaxation and Nautical Activities in Algiers:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Relaxation and nautical activities at Sidi Fredj Port.'),
              Text('- Boat excursion to discover the bay of Algiers.'),
              Text('Accommodation: Abasside Hotel (3 stars).'),
              Text('Transport: Use the bus for transportation.'),
              SizedBox(height: 15.0),
              Text(
                'Discovery of Rural Areas:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Excursion to rural villages in the Kabylie mountains for tasting local products and immersion in Berber culture.'),
              Text('Accommodation: Rural gîte in the Kabylie region.'),
              Text('Transport: Take a taxi from Algiers to Tizi Ouzou.'),
              SizedBox(height: 15.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 6,0000 DA.'),
              Text('- Accommodation: Approximately 4,0000 DA.'),
              Text('- Meals and Activities: Approximately 2,0000 DA.'),
              Text('- Miscellaneous: Approximately 8,0000 DA.'),
              Text('Estimated Total Cost: Approximately 11,7000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetIslamicOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetIslamicOran({
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
      debugShowCheckedModeBanner: false,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit the Great Mosque of Oran, a landmark with stunning architecture and rich history.'),
              Text(
                  '- Discover the Ahmed Zabana Museum, which showcases artifacts related to Algeria\'s Islamic heritage.'),
              Text('Accommodation: Miami Beach (3 stars).'),
              Text('Transport: Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Oran:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Engage in various nautical activities along the Oran at Madagh Plage.'),
              Text(
                  '- Explore the Port of Oran and its bustling waterfront, with opportunities for boat rides and sea excursions.'),
              Text('Accommodation: Miami Beach (3 stars).'),
              Text('Transport: Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to Tlemcen:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Tlemcen to explore its rural villages and historical landmarks.'),
              Text(
                  '- Visit the Grand Mosque of Tlemcen, an architectural masterpiece known for its intricate designs and Islamic heritage.'),
              Text(
                  '- Explore the El Mechouar Palace and Gardens, a UNESCO World Heritage site showcasing the region\'s rich history and culture.'),
              Text('Accommodation: Hôtel Stambouli (3 stars).'),
              Text('Transport: Take a taxi from Oran to Tlemcen.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in El Oued:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to El Oued for an authentic desert camping adventure.'),
              Text(
                  '- Camp amidst the tranquil sand dunes of the Sahara Desert.'),
              Text(
                  '- Explore the local markets and experience traditional desert hospitality.'),
              Text('Accommodation: Desert Camp in El Oued.'),
              Text('Transport: Domestic flight from Tlemcen to El Oued.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 5,0000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 5,0000 DA.'),
              Text('- Meals and Activities: Approximately 9,000 DA.'),
              Text('- Miscellaneous: Approximately 10,000 DA.'),
              Text('Estimated Total Cost: Approximately 119,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetIslamicAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetIslamicAnnaba({
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
      debugShowCheckedModeBanner: false,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Explore The Salah Bey Mosque.'),
              Text(
                  '- Explore Mosque of Sidi Bou Merouane, an important historical site blending Islamic and Roman influences.'),
              Text(
                  '- Discover the Hippo Regius ruins, showcasing the rich history of the region.'),
              Text('Accommodation: Sheraton Annaba Hotel (5-star).'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Annaba:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Engage in a variety of nautical activities along the Annaba coastline, including sailing, windsurfing, and boat tours.'),
              Text(
                  '- Visit Djenen El Bey, a popular beach destination for swimming and water sports.'),
              Text('Accommodation: El Rim El Djamil Hotel (3-star).'),
              Text('Transport: Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Sites:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Enjoy the rural landscapes of Seraïdi, a picturesque village in the Edough mountains, offering panoramic views and hiking trails.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in Illizi:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Illizi for an authentic desert camping adventure.'),
              Text(
                  '- Set up camp amidst the tranquil sand dunes of the Sahara Desert and enjoy the peaceful surroundings.'),
              Text(
                  '- Explore the local markets and experience traditional desert hospitality.'),
              Text('Accommodation: Desert Camp in Illizi.'),
              Text('Transport: Domestic flight from Annaba to Illizi.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 50,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 50,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 15,000 DA.'),
              Text('Estimated Total Cost: Approximately 125,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetIslamicBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetIslamicBejaia({
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Your Best Plan:',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Tlemcen:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Visit the Palais de la Culture de Tlemcen - Imama.'),
              Text(
                  '- Explore the ruins of Mansourah, an ancient city that showcases the rich history of the region.'),
              Text(
                  '- Discover the El Mechouar Palace, a historical palace complex that provides insights into Tlemcen\'s Islamic heritage.'),
              Text('Accommodation: Les Zianides Hotel (3-star).'),
              Text('Transport: Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Bejaia:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit Les Aiguades Beach to enjoy the stunning views and relax by the sea.'),
              Text('Accommodation: Hôtel du Lac (4-star) in Bejaia.'),
              Text('Transport: Take a taxi from Tlemcen to Bejaia.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to the Villages of Ghardaia:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Ghardaia to explore its rural villages and historical landmarks.'),
              Text(
                  '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.'),
              Text(
                  '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.'),
              Text('Accommodation: Hotel El Mzab in Ghardaia.'),
              Text(
                  'Transport: Private vehicles with chauffeur for local travel, with domestic flights as needed.'),
              Text('Flight: Domestic flight from Bejaia to Tindouf.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in Tindouf:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Tindouf for an authentic desert camping adventure.'),
              Text(
                  '- Set up camp amidst the tranquil sand dunes of the Sahara Desert and enjoy the peaceful surroundings.'),
              Text(
                  '- Explore the local markets and experience traditional desert hospitality.'),
              Text('Accommodation: Desert Camp in Tindouf.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 60,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 70,000 DA.'),
              Text('- Meals and Activities: Approximately 20,000 DA.'),
              Text('- Miscellaneous: Approximately 10,000 DA.'),
              Text('Estimated Total Cost: Approximately 160,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNoHisAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoHisAlger({
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
      debugShowCheckedModeBanner: false,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit Sidi Fradj, a scenic coastal area ideal for swimming and water sports.'),
              Text('- Explore La Vigie Beach.'),
              Text('Accommodation: Abbasside Palace (3 stars).'),
              Text('Transport: Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in Tassili n\'Ajjer:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Tassili n\'Ajjer for an immersive desert camping adventure.'),
              Text(
                  '- Camp under the starlit skies amidst the breathtaking rock formations and ancient rock art of the Tassili n\'Ajjer National Park.'),
              Text(
                  '- Enjoy guided hikes and camel treks to explore the unique geological features, rock paintings, and natural beauty of the desert landscape.'),
              Text('Accommodation: Tassili n\'Ajjer Desert Camp.'),
              Text(
                  'Transport: Domestic flight from Algiers to Tassili n\'Ajjer.'),
              SizedBox(height: 20.0),
              Text(
                'Excursion to Rural Villages in the Kabylie Mountains:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Tasting of local products and immersion in Berber culture.'),
              Text('Accommodation: Rural gîte in the Kabylie region.'),
              Text('Transport: Private vehicles with chauffeur for travel.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 30,000 DA.'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 5,000 DA.'),
              Text('- Miscellaneous: Approximately 4,000 DA.'),
              Text('Estimated Total Cost: Approximately 69,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNoHisOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoHisOran({
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
      debugShowCheckedModeBanner: false,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Relax and indulge in nautical activities at Ain El Turk Beach.'),
              Text(
                  '- Explore the Corniche area for seaside leisure and dining options.'),
              Text('Accommodation: Hotel Miami Beach (3 stars).'),
              Text('Transport: Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Exploration in Hoggar National Park:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Discover the desert by exploring Hoggar National Park.'),
              Text('Transport:'),
              Text('- Flight: Take a flight from Oran to Tamanrasset Airport.'),
              Text(
                  '- Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.'),
              Text(
                  '- Excursion: Arrange an excursion with a local guide for an immersive desert experience.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to Ghardaia:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Ghardaia to explore its rural villages and historical landmarks.'),
              Text(
                  '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.'),
              Text(
                  '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.'),
              Text('Accommodation: Hotel El Mzab in Ghardaia.'),
              Text('Transport: Use taxis for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 50,000 DA (including domestic flights).'),
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

class MediumbudgetNoHisAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoHisAnnaba({
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
      debugShowCheckedModeBanner: false,
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
                'Rural Sites:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Enjoy the rural landscapes of Seraïdi, a picturesque village in the Edough mountains, offering panoramic views and hiking trails.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Annaba:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Relax and indulge in nautical activities at Ain Achir Beach.'),
              Text(
                  '- Explore the coastal area for seaside leisure and dining options.'),
              Text('Accommodation: Hotel Rim El Djamil (3 stars).'),
              Text('Transport: Use taxis for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Discovery:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Discover the desert by exploring Hoggar National Park.'),
              Text(
                'Transport:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              Text(
                  '- Flight: Take a flight from Annaba to Tamanrasset Airport.'),
              Text(
                  '- Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.'),
              Text(
                  '- Excursion: Arrange an excursion with a local guide for an immersive desert experience.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 400,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 300,000 DA.'),
              Text('- Meals and Activities: Approximately 90,000 DA.'),
              Text('- Miscellaneous: Approximately 90,000 DA.'),
              Text('Estimated Total Cost: Approximately 719,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNoHisBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoHisBejaia({
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
      debugShowCheckedModeBanner: false,
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
                'Nautical Places:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Enjoy the nautical attractions in Bejaia, including a visit to Tichy Beach.'),
              Text(
                  '- Visit Mellbou Beach and Ait Mendil to fully experience the area\'s natural beauty.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Sites:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Take a trip to the Kabyle village to explore rural sites such as Tala Hiba.'),
              Text(
                  'Accommodation: Spend your night at HOTEL DU NORD (3 stars).'),
              Text('Transport: Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in Tassili n\'Ajjer:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Tassili n\'Ajjer for an immersive desert camping adventure.'),
              Text(
                  '- Camp under the starlit skies amidst the breathtaking rock formations and ancient rock art of the Tassili n\'Ajjer National Park.'),
              Text(
                  '- Enjoy guided hikes and camel treks to explore the unique geological features, rock paintings, and natural beauty of the desert landscape.'),
              Text('Accommodation: Tassili n\'Ajjer Desert Camp.'),
              Text(
                  'Transport: Domestic flight from Bejaia to Tassili n\'Ajjer.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 30,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 90,000 DA.'),
              Text('Estimated Total Cost: Approximately 709,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNodesertNumidianAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNodesertNumidianAlger({
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Your Best Plan:',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Numidian Sites in Djemila and Timgad:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Journey to Djemila to explore well-preserved Numidian ruins.'),
              Text(
                  '- Visit Timgad to discover the ancient Numidian city and its remarkable architecture.'),
              Text('Accommodation: Hotel Numidie Centre in Sétif (4-star).'),
              Text('Transport: Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Algiers:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit Sidi Fradj, a scenic coastal area ideal for swimming and water sports.'),
              Text('- Explore La Vigie Beach.'),
              Text('Accommodation: Abbasside Palace (3 stars).'),
              Text('Transport: Take a taxi from Sétif to Algiers.'),
              Text('Transport: Use the bus for transportation in Algiers.'),
              SizedBox(height: 20.0),
              Text(
                'Excursion to Rural Villages in the Kabylie Mountains:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Tasting of local products and immersion in Berber culture.'),
              Text('Accommodation: Rural gîte in the Kabylie region.'),
              Text('Transport: Private vehicles with chauffeur for travel.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 30,000 DA.'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 5,000 DA.'),
              Text('- Miscellaneous: Approximately 40,000 DA.'),
              Text('Estimated Total Cost: Approximately 690,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNodesertNumidianOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNodesertNumidianOran({
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
      debugShowCheckedModeBanner: false,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Journey to Djemila to explore well-preserved Numidian ruins.'),
              Text(
                  '- Visit Timgad to discover the ancient Numidian city and its remarkable architecture.'),
              Text('Accommodation: Hotel Numidie Centre in Sétif (4-star).'),
              Text('Transport: Private vehicles with chauffeur for travel.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Oran:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Relax and indulge in nautical activities at Ain El Turk Beach.'),
              Text(
                  '- Explore the Corniche area for seaside leisure and dining options.'),
              Text('Accommodation: Hotel Miami Beach (3 stars).'),
              Text('Transport: Use the bus for transportation.'),
              Text('Transport: Take a taxi from Sétif to Oran.'),
              SizedBox(height: 20.0),
              Text(
                'Travel to Ghardaia to Explore its Rural Villages and Historical Landmarks:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.'),
              Text(
                  '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.'),
              Text('Accommodation: Hotel El Mzab in Ghardaia.'),
              Text('Transport: Use taxi for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 40,000 DA (including domestic flights).'),
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

class MediumbudgetNodesertNumidianAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNodesertNumidianAnnaba({
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
      debugShowCheckedModeBanner: false,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Head to Hippo Regius in Annaba to delve into the history of the Numidian civilization.'),
              Text(
                  '- Visit the ancient ruins, museums, and learn more about this historical period.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Sites:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Enjoy the rural landscapes of Seraïdi, a picturesque village in the Edough mountains, offering panoramic views and hiking trails.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Annaba:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Relax and indulge in nautical activities at Ain Achir Beach.'),
              Text(
                  '- Explore the coastal area for seaside leisure and dining options.'),
              Text('Accommodation: Hotel Rim El Djamil (3 stars).'),
              Text('Transport: Use taxi for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 30,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 90,000 DA.'),
              Text('- Miscellaneous: Approximately 90,000 DA.'),
              Text('Estimated Total Cost: Approximately 78,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNodesertNumidianBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNodesertNumidianBejaia({
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Your Best Plan:',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discovering Numidian Civilization in Constantine (Cirta):',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Explore the Numidian heritage in Constantine, once known as Cirta.'),
              Text(
                  '- Visit the ancient ruins and delve into the rich history of the region.'),
              Text('Accommodation: Spend your night at Hotel Cirta (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Rural Sites:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Take a trip to the Kabyle village to explore rural sites such as Tala Hiba.'),
              Text('Transport: Take a taxi from Constantine to Bejaia.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Places:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Enjoy the nautical attractions in Bejaia, including a visit to Tichy Beach.'),
              Text(
                  '- You can also visit Mellbou Beach and Ait Mendil to fully experience the area\'s natural beauty.'),
              Text(
                  'Accommodation: Spend your night at Du Nord Hotel (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 30,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 10,000 DA.'),
              Text('Estimated Total Cost: Approximately 80,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNodesertRomanAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNodesertRomanAlger({
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
      debugShowCheckedModeBanner: false,
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
                'Exploration of Roman Sites in Djemila and Timgad:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Journey to Djemila to explore well-preserved Roman ruins.'),
              Text(
                  '- Visit Timgad to discover the ancient Roman city and its remarkable architecture.'),
              Text('Accommodation: Hotel Numidie Centre in Sétif (4-star).'),
              Text('Transport: Private vehicles with chauffeur for travel.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Algiers:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Relaxation and nautical activities at Sidi Fredj Port.'),
              Text('- Boat excursion to discover the bay of Algiers.'),
              Text('Accommodation: Abbasside Palace (3 stars).'),
              Text('Transport: Use the bus for transportation.'),
              Text('Take a taxi from Sétif to Algiers.'),
              SizedBox(height: 20.0),
              Text(
                'Discovery of Rural Areas:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Excursion to rural villages in the Kabylie mountains.'),
              Text(
                  '- Tasting of local products and immersion in Berber culture.'),
              Text('Accommodation: Rural gîte in the Kabylie region.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 40,000 DA.'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 99,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNodesertRomanOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNodesertRomanOran({
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
      debugShowCheckedModeBanner: false,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Journey to Djemila to explore well-preserved Numidian ruins.'),
              Text(
                  '- Visit Timgad to discover the ancient Numidian city and its remarkable architecture.'),
              Text('Accommodation: Hotel Numidie Centre in Sétif (4-star).'),
              Text('Transport: Private vehicles with chauffeur for travel.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Oran:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Relax and indulge in nautical activities at Ain El Turk Beach.'),
              Text(
                  '- Explore the Corniche area for seaside leisure and dining options.'),
              Text('Accommodation: Hotel Miami Beach (3 stars).'),
              Text('Transport: Use the bus for transportation.'),
              Text('Take a taxi from Sétif to Oran.'),
              SizedBox(height: 20.0),
              Text(
                'Travel to Ghardaia:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Explore rural villages and historical landmarks in Ghardaia.'),
              Text(
                  '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.'),
              Text(
                  '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.'),
              Text('Accommodation: Hotel El Mzab in Ghardaia.'),
              Text('Transport: Use taxi for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 50,000 DA (including domestic flights).'),
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

class MediumbudgetNodesertRomanAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNodesertRomanAnnaba({
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
      debugShowCheckedModeBanner: false,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Head to Hippo Regius in Annaba to delve into the history of the Numidian civilization.'),
              Text(
                  '- Visit the ancient ruins, museums, and learn more about this historical period.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Sites:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Enjoy the rural landscapes of Seraïdi, a picturesque village in the Edough mountains, offering panoramic views and hiking trails.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Relax and indulge in nautical activities at Ain Achir Beach.'),
              Text(
                  '- Explore the coastal area for seaside leisure and dining options.'),
              Text('Accommodation: Hotel Rim El Djamil (3 stars).'),
              Text('Transport: Use taxi for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 25,000 DA'),
              Text('- Accommodation: Approximately 30,000 DA'),
              Text('- Meals and Activities: Approximately 10,000 DA'),
              Text('- Miscellaneous: Approximately 9,000 DA'),
              Text('Estimated Total Cost: Approximately 69,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNodesertRomanBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNodesertRomanBejaia({
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Your Best Plan:',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discovery of Bejaïa and Surroundings:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit the Kasbah of Bejaïa, a historical fortress overlooking the Mediterranean Sea.'),
              Text(
                  '- Explore the Roman ruins of Toudja and the ancient city of Saldae.'),
              Text(
                  '- Discover the Béjaïa Museum to learn about Roman civilization and local history.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Activities in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Indulge in nautical activities at Tichy Beach, including swimming, snorkeling, and diving.'),
              Text(
                  '- Explore the Cap Carbon coastline by boat, visiting sea caves and hidden coves.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Les Hammadites hotel (3-star).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Exploration of Rural Areas:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Embark on a rural excursion to picturesque villages like Tifra, Ighzer Amokrane, and Souk El Khemis.'),
              Text(
                  '- Immerse yourself in the tranquility and authenticity of rural Algerian life.'),
              Text('- Accommodation: Guesthouses in rural villages.'),
              Text(
                  '- Transport: Private vehicles with chauffeur for local travel.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 20,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 79,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNodesertIslamicAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNodesertIslamicAlger({
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
      debugShowCheckedModeBanner: false,
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
                'Discovery of Algiers and Surroundings:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Visit the Kasbah of Algiers and historical mosques.'),
              Text(
                  '- Explore the National Museum of Antiquities and Islamic Arts for Roman artifacts.'),
              Text(
                  '- Excursion to Tipasa to explore Roman ruins and enjoy the Mediterranean coast.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Hotel Lella Doudja (4 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Algiers:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Relaxation and nautical activities at Sidi Fredj Port.'),
              Text('- Boat excursion to discover the bay of Algiers.'),
              SizedBox(height: 20.0),
              Text(
                'Discovery of Rural Areas:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Excursion to rural villages in the Kabylie mountains.'),
              Text(
                  '- Tasting of local products and immersion in Berber culture.'),
              Text('- Accommodation: Rural gîte in the Kabylie region.'),
              Text('- Transport: Take a taxi from Algiers to Tizi Ouzou.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 40,000 DA.'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 9,000 DA.'),
              Text('- Miscellaneous: Approximately 8,000 DA.'),
              Text('Estimated Total Cost: Approximately 87,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNodesertIslamicOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNodesertIslamicOran({
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
      debugShowCheckedModeBanner: false,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit the Great Mosque of Oran and the Ahmed Zabana Museum.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Oran:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Engage in various nautical activities along the Oran at Madagh Plage.'),
              Text('- Explore the Port of Oran and its bustling waterfront.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Miami Beach Hotel (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to Tlemcen:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit the Grand Mosque of Tlemcen and the El Mechouar Palace and Gardens.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Hôtel Stambouli (3 star).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation within Oran.'),
              Text('- Take a taxi from Oran to Tlemcen.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 25,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 9,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 73,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNodesertIslamicAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNodesertIslamicAnnaba({
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Your Best Plan:',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Annaba:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Explore The Salah Bey Mosque.'),
              Text('- Explore Mosque of Sidi Bou Merouane.'),
              Text('- Discover the Hippo Regius ruins.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Annaba:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Engage in a variety of nautical activities along the Annaba coastline.'),
              Text('- Visit Djenen El Bey beach.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- EL Rim El Djamil Hotel (3-star).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Sites:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Enjoy the rural landscapes of Seraïdi.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 20,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 20,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 59,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNodesertIslamicBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNodesertIslamicBejaia({
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Your Best Plan:',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Islamic Civilization in Tlemcen:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Visit the Palais de la Culture de Tlemcen - Imama.'),
              Text('- Explore the ruins of Mansourah.'),
              Text('- Discover the El Mechouar Palace.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Les Zianides Hotel (3-star).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Bejaia:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Visit Les Aiguades Beach.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Hôtel du Lac (4-star) in Bejaia.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Take a taxi from Tlemcen to Bejaia.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to the Villages of Ghardaia:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Ghardaia to explore its rural villages and historical landmarks.'),
              Text('- Visit the five historic villages of the M\'Zab Valley.'),
              Text('- Experience the traditional architecture and lifestyle.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Hotel El Mzab in Ghardaia.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
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
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 9,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 81,800 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNoNauticalNumidian extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoNauticalNumidian({
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Your Best Plan:',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discovering Numidian Civilization in Constantine (Cirta):',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Explore the Numidian heritage in Constantine, once known as Cirta.'),
              Text(
                  '- Visit the ancient ruins and delve into the rich history of the region.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Spend your night at Hotel Cirta (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Rural Sites:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Take a trip to the Kabyle village to explore rural sites such as Tala Hiba.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Spend your night at Hotel du Nord (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in Tassili n\'Ajjer:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Tassili n\'Ajjer for an immersive desert camping adventure.'),
              Text(
                  '- Camp under the starlit skies amidst the breathtaking rock formations and ancient rock art.'),
              Text(
                  '- Enjoy guided hikes and camel treks to explore the unique geological features and rock paintings.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Tassili n\'Ajjer Desert Camp.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Domestic flight from Bejaia to Tassili n\'Ajjer.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 40,000 DA.'),
              Text('- Accommodation: Approximately 35,000 DA.'),
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

class MediumbudgetNoNauticalRoman extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoNauticalRoman({
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
      debugShowCheckedModeBanner: false,
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
                'Exploration of Roman Sites in Djemila and Timgad:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Journey to Djemila to explore well-preserved Roman ruins.'),
              Text(
                  '- Visit Timgad to discover the ancient Roman city and its remarkable architecture.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Hotel Numidie Centre in Sétif (4-star).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Private vehicles with chauffeur for travel.'),
              SizedBox(height: 20.0),
              Text(
                'Exploration of Rural Areas:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Embark on a rural excursion to picturesque villages like Tifra, Ighzer Amokrane, and Souk El Khemis.'),
              Text(
                  '- Immerse yourself in the tranquility and authenticity of rural Algerian life.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Guesthouses in rural villages.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Use taxi for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Sahara Desert Exploration in Tamanrasset:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Venture to Tamanrasset for an immersive Sahara Desert experience.'),
              Text(
                  '- Set up camp beneath the shimmering stars amidst the vast expanse of the Sahara dunes.'),
              Text(
                  '- Embark on thrilling 4x4 desert safaris to discover hidden oases, towering sand dunes, and traditional desert settlements.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Tamanrasset Desert Camp.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Domestic flight from Bejaïa to Tamanrasset.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 50,000 DA.'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 109,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNoNauticalIslamic extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoNauticalIslamic({
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
      debugShowCheckedModeBanner: false,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Visit the Palais de la Culture de Tlemcen - Imama.'),
              Text(
                  '- Explore the ruins of Mansourah, an ancient city that showcases the rich history of the region.'),
              Text(
                  '- Discover the El Mechouar Palace, a historical palace complex that provides insights into Tlemcen\'s Islamic heritage.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Les Zianides Hotel (3-star).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to the Villages of Ghardaia:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Ghardaia to explore its rural villages and historical landmarks.'),
              Text(
                  '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.'),
              Text(
                  '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Hotel El Mzab in Ghardaia.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Private vehicles with chauffeur for local travel, with domestic flights as needed.'),
              Text('- Domestic flight from Telemcen to Ghardaia.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in Tindouf:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Tindouf for an authentic desert camping adventure.'),
              Text(
                  '- Set up camp amidst the tranquil sand dunes of the Sahara Desert and enjoy the peaceful surroundings.'),
              Text(
                  '- Explore the local markets and experience traditional desert hospitality.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Desert Camp in Tindouf.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 50,000 DA.'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 10,000 DA.'),
              Text('Estimated Total Cost: Approximately 110,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNoNauticalNoHistorical extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoNauticalNoHistorical({
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
      debugShowCheckedModeBanner: false,
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
                'Discover the desert by exploring the Hoggar National Park:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '- Transportation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              Text(
                  '  - Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.'),
              Text(
                  '  - Excursion: Arrange an excursion with a local guide for an immersive desert experience.'),
              SizedBox(height: 20.0),
              Text(
                'Travel to Ghardaia to explore its rural villages and historical landmarks:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.'),
              Text(
                  '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Hotel El Mzab in Ghardaia.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Use taxi for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 20,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 15,000 DA.'),
              Text('- Meals and Activities: Approximately 5,000 DA.'),
              Text('- Miscellaneous: Approximately 6,000 DA.'),
              Text('Estimated Total Cost: Approximately 46,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNNoRuralAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNNoRuralAlger({
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Your Best Plan:',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Exploration of Numidian Sites in Djemila and Timgad:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Journey to Djemila to explore well-preserved Numidian ruins.'),
              Text(
                  '- Visit Timgad to discover the ancient Numidian city and its remarkable architecture.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Hotel Numidie Centre in Sétif (4-star).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Algiers:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit Sidi Fradj, a scenic coastal area ideal for swimming and water sports.'),
              Text('- Visit La Vigie Beach.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Abbasside Palace (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Take a taxi from Sétif to Algiers.'),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in Tassili n\'Ajjer:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Tassili n\'Ajjer for an immersive desert camping adventure.'),
              Text(
                  '- Camp under the starlit skies amidst the breathtaking rock formations and ancient rock art of the Tassili n\'Ajjer National Park.'),
              Text(
                  '- Enjoy guided hikes and camel treks to explore the unique geological features, rock paintings, and natural beauty of the desert landscape.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Tassili n\'Ajjer Desert Camp.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Domestic flight from Algiers to Tassili n\'Ajjer.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 35,000 DA.'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 5,000 DA.'),
              Text('- Miscellaneous: Approximately 4,000 DA.'),
              Text('Estimated Total Cost: Approximately 74,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNNoRuralOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNNoRuralOran({
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
      debugShowCheckedModeBanner: false,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Journey to Djemila to explore well-preserved Numidian ruins.'),
              Text(
                  '- Visit Timgad to discover the ancient Numidian city and its remarkable architecture.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Hotel Numidie Centre in Sétif (4-star).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Private vehicles with chauffeur for travel.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Oran:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Relax and indulge in nautical activities at Ain El Turk Beach.'),
              Text(
                  '- Explore the Corniche area for seaside leisure and dining options.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Hotel Miami Beach (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation.'),
              Text('- Take a taxi from Sétif to Oran.'),
              SizedBox(height: 20.0),
              Text(
                'Discover the Desert by Exploring the Hoggar National Park:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Take a flight from Oran to Tamanrasset Airport.'),
              Text(
                  '- From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.'),
              Text(
                  '- Arrange an excursion with a local guide for an immersive desert experience.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 40,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 99,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNNoRuralAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNNoRuralAnnaba({
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
      debugShowCheckedModeBanner: false,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Head to Hippo Regius in Annaba to delve into the history of the Numidian civilization.'),
              Text(
                  '- Visit the ancient ruins, museums, and learn more about this historical period.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Annaba:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Relax and indulge in nautical activities at Ain Achir Beach.'),
              Text(
                  '- Explore the coastal area for seaside leisure and dining options.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Hotel Rim El Djamil (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Use taxi for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Discovery in Hoggar National Park:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Discover the desert by exploring the Hoggar National Park.'),
              SizedBox(height: 20.0),
              Text(
                'Transportation:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Flight: Take a flight from Annaba to Tamanrasset Airport.'),
              Text(
                  '- Taxi/Rental Car: From Tamanrasset, take a taxi or rent a car to reach Hoggar National Park.'),
              Text(
                  '- Excursion: Arrange an excursion with a local guide for an immersive desert experience.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 35,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 48,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNNoRuralBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNNoRuralBejaia({
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
      debugShowCheckedModeBanner: false,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Explore the Numidian heritage in Constantine, once known as Cirta.'),
              Text(
                  '- Visit the ancient ruins and delve into the rich history of the region.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Constantine:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Hotel Cirta (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Places in Bejaia:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Enjoy the nautical attractions in Bejaia, including a visit to Tichy Beach.'),
              Text(
                  '- Visit Mellbou Beach and Ait Mendil to fully experience the area\'s natural beauty.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Bejaia:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- HOTEL DU NORD (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in Tassili n\'Ajjer:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Tassili n\'Ajjer for an immersive desert camping adventure.'),
              Text(
                  '- Camp under the starlit skies amidst the breathtaking rock formations and ancient rock art of the Tassili n\'Ajjer National Park.'),
              Text(
                  '- Enjoy guided hikes and camel treks to explore the unique geological features, rock paintings, and natural beauty of the desert landscape.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Tassili n\'Ajjer:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Tassili n\'Ajjer Desert Camp.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Domestic flight from Bejaia to Tassili n\'Ajjer.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 30,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 10,000 DA.'),
              Text('Estimated Total Cost: Approximately 80,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetRNoRuralAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetRNoRuralAlger({
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
      debugShowCheckedModeBanner: false,
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
                'Exploration of Roman Sites in Djemila and Timgad:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Journey to Djemila to explore well-preserved Roman ruins.'),
              Text(
                  '- Visit Timgad to discover the ancient Roman city and its remarkable architecture.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Sétif:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Hotel Numidie Centre (4-star).'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Algiers:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Relaxation and nautical activities at Sidi Fredj Port.'),
              Text('- Boat excursion to discover the bay of Algiers.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Algiers:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Abbasside Palace (3-stars).'),
              SizedBox(height: 20.0),
              Text(
                'Sahara Adventure in Timimoun:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Travel to Timimoun for an authentic desert experience:'),
              Text('- Camping in the desert for a night under the stars.'),
              Text(
                  '- 4x4 excursion to explore oases, sand dunes, and traditional villages.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Timimoun:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Saharaoui Camp in Timimoun.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Private vehicles with chauffeur for travel to Djemila and Timgad.'),
              Text('- Use the bus for transportation within Algiers.'),
              Text('- Take a taxi from Setif to Algiers.'),
              Text('- Internal flight to Timimoun from Algiers.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 40,000 DA.'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 81,900 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetRNoRuralOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetRNoRuralOran({
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
      debugShowCheckedModeBanner: false,
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit the Fort Santa Cruz and learn about its historical significance.'),
              Text(
                  '- Explore the Great Mosque of Oran, showcasing ancient Roman influences.'),
              Text(
                  '- Discover the Museum of Modern Art of Oran for insights into Roman civilization.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Oran:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 13, 58, 95),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Relax and indulge in nautical activities at Ain El Turk Beach.'),
              Text(
                  '- Explore the Corniche area for seaside leisure and dining options.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Miami Beach (3-star).'),
              SizedBox(height: 20.0),
              Text(
                'Discovery of Rural Areas:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Embark on a rural excursion to explore the picturesque villages of the Oran countryside.'),
              Text(
                  '- Immerse in the local culture and traditions of rural Algeria.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Rural Areas:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Rural guesthouse in the Oran countryside.'),
              SizedBox(height: 20.0),
              Text(
                'Sahara Adventure in Djanet:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Djanet for an authentic desert camping experience:'),
              Text('- Camp under the stars amidst the Sahara dunes.'),
              Text(
                  '- Enjoy 4x4 desert safaris to explore oases and traditional desert villages.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Djanet:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Djanet Desert Camp.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation in Oran.'),
              Text('- Internal flight to Djanet from Oran.'),
              Text('- 4x4 vehicles for desert travel in Djanet.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 40,000 DA.'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 99,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetRNoRuralAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetRNoRuralAnnaba({
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
      debugShowCheckedModeBanner: false,
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
              Text('- Visit the ruins of Hippo Regius, an ancient Roman city.'),
              Text(
                  '- Explore the Basilica of Saint Augustine, showcasing Roman and Christian history.'),
              Text(
                  '- Discover the Museum of Antiquities for insights into Roman civilization.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- L\'Orient Hotel (4 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Relax and indulge in nautical activities at Ain Achir Beach.'),
              Text(
                  '- Explore the coastal area for seaside leisure and dining options.'),
              SizedBox(height: 20.0),
              Text(
                'Sahara Adventure in Taghit:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Taghit for an authentic desert camping experience:'),
              Text('- Camp under the stars amidst the Sahara dunes.'),
              Text(
                  '- Enjoy 4x4 desert safaris to explore oases and traditional desert villages.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Taghit:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Taghit Desert Camp.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation in Annaba.'),
              Text('- Domestic flight from Annaba to Taghit.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 30,000 DA.'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 9,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 88,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetRNoRuralBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetRNoRuralBejaia({
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
      debugShowCheckedModeBanner: false,
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
                'Discovery of Bejaïa and Surroundings:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit the Kasbah of Bejaïa, a historical fortress overlooking the Mediterranean Sea.'),
              Text(
                  '- Explore the Roman ruins of Toudja and the ancient city of Saldae.'),
              Text(
                  '- Discover the Béjaïa Museum to learn about Roman civilization and local history.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Activities in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Indulge in nautical activities at Tichy Beach, including swimming, snorkeling, and diving.'),
              Text(
                  '- Explore the Cap Carbon coastline by boat, visiting sea caves and hidden coves.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Les Hammadites Hotel (3-star).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Sahara Desert Exploration in Tamanrasset:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Venture to Tamanrasset for an immersive Sahara Desert experience:'),
              Text(
                  '- Set up camp beneath the shimmering stars amidst the vast expanse of the Sahara dunes.'),
              Text(
                  '- Embark on thrilling 4x4 desert safaris to discover hidden oases, towering sand dunes, and traditional desert settlements.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Tamanrasset:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Tamanrasset Desert Camp.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Domestic flight from Bejaïa to Tamanrasset.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 40,000 DA.'),
              Text('- Accommodation: Approximately 30,000 DA.'),
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

class MediumbudgetINoRuralAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetINoRuralAlger({
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
      debugShowCheckedModeBanner: false,
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
                'Discovery of Algiers and Surroundings:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Visit the Kasbah of Algiers and historical mosques.'),
              Text(
                  '- Explore the National Museum of Antiquities and Islamic Arts for Roman artifacts.'),
              Text(
                  '- Excursion to Tipasa to explore Roman ruins and enjoy the Mediterranean coast.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Hotel Lella Doudja (4 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Travel to Timimoun for a Desert Experience:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Camping in the desert for a night under the stars.'),
              Text(
                  '- 4x4 excursion to explore oases, sand dunes, and traditional villages.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Timimoun:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Saharaoui Camp in Timimoun.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Internal flight to Timimoun from Algiers.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Relaxation and nautical activities at Sidi Fredj Port.'),
              Text('- Boat excursion to discover the bay of Algiers.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Abasside Hotel (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 40,000 DA.'),
              Text('- Accommodation: Approximately 40,000 DA.'),
              Text('- Meals and Activities: Approximately 9,000 DA.'),
              Text('- Miscellaneous: Approximately 8,000 DA.'),
              Text('Estimated Total Cost: Approximately 97,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetINoRuralOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetINoRuralOran({
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
      debugShowCheckedModeBanner: false,
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
                  '- Visit the Great Mosque of Oran, a landmark with stunning architecture and rich history.'),
              Text(
                  '- Discover the Ahmed Zabana Museum, showcasing artifacts related to Algeria\'s Islamic heritage.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Engage in various nautical activities along the Oran at Madagh Plage.'),
              Text(
                  '- Explore the Port of Oran and its bustling waterfront, with opportunities for boat rides and sea excursions.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Miami Beach (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in El Oued:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to El Oued for an authentic desert camping adventure.'),
              Text(
                  '- Camp amidst the tranquil sand dunes of the Sahara Desert.'),
              Text(
                  '- Explore the local markets and experience traditional desert hospitality.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in El Oued:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Desert Camp in El Oued.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Domestic flight from Oran to El Oued.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 400,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 400,000 DA.'),
              Text('- Meals and Activities: Approximately 90,000 DA.'),
              Text('- Miscellaneous: Approximately 100,000 DA.'),
              Text('Estimated Total Cost: Approximately 990,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetINoRuralAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetINoRuralAnnaba({
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
      debugShowCheckedModeBanner: false,
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
                  '- Explore Mosque of Sidi Bou Merouane, an important historical site blending Islamic and Roman influences.'),
              Text(
                  '- Discover the Hippo Regius ruins, showcasing the rich history of the region.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Sheraton Annaba Hotel (5-star).'),
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
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- EL Rim El Djamil Hotel (3-star).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in Illizi:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Illizi for an authentic desert camping adventure.'),
              Text(
                  '- Set up camp amidst the tranquil sand dunes of the Sahara Desert and enjoy the peaceful surroundings.'),
              Text(
                  '- Explore the local markets and experience traditional desert hospitality.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Illizi:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Desert Camp in Illizi.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Domestic flight from Annaba to Illizi.'),
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
              Text('- Miscellaneous: Approximately 9,500 DA.'),
              Text('Estimated Total Cost: Approximately 95,500 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetINoRuralBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetINoRuralBejaia({
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
      debugShowCheckedModeBanner: false,
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
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Tlemcen:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Les Zianides Hotel (3-star).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit Les Aiguades Beach to enjoy the stunning views and relax by the sea.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Hôtel du Lac (4-star) in Bejaia.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Take a taxi from Tlemcen to Bejaia.'),
              SizedBox(height: 20.0),
              Text(
                'Desert Camping Experience in Tindouf:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Travel to Tindouf for an authentic desert camping adventure.'),
              Text(
                  '- Set up camp amidst the tranquil sand dunes of the Sahara Desert and enjoy the peaceful surroundings.'),
              Text(
                  '- Explore the local markets and experience traditional desert hospitality.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Tindouf:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Desert Camp in Tindouf.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 450,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 400,000 DA.'),
              Text('- Meals and Activities: Approximately 9,000 DA.'),
              Text('- Miscellaneous: Approximately 10,000 DA.'),
              Text('Estimated Total Cost: Approximately 869,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNoHisNoDesertAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoHisNoDesertAlger({
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
      debugShowCheckedModeBanner: false,
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
                  '- Visit Sidi Fredj, a scenic coastal area ideal for swimming and water sports.'),
              Text('- Visit La Vigie Beach.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Abbasside Palace (3-star).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Excursion to Rural Villages in the Kabylie Mountains:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Tasting of local products and immersion in Berber culture.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Kabylie:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Rural gîte in the Kabylie region.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Private vehicles with chauffeur for travel.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 25,000 DA.'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 5,000 DA.'),
              Text('- Miscellaneous: Approximately 4,000 DA.'),
              Text('Estimated Total Cost: Approximately 64,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNoHisNoDesertOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoHisNoDesertOran({
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
      debugShowCheckedModeBanner: false,
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
                  '- Relax and indulge in nautical activities at Ain El Turk Beach.'),
              Text(
                  '- Explore the Corniche area for seaside leisure and dining options.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Hotel Miami Beach (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Travel to Ghardaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.'),
              Text(
                  '- Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Ghardaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Hotel El Mzab in Ghardaia.'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use a taxi for transportation in Ghardaia.'),
              Text('- Take a flight from Oran to Ghardaia.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 30,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 30,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 79,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNoHisNoDesertAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoHisNoDesertAnnaba({
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
      debugShowCheckedModeBanner: false,
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
                'Rural Sites:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Enjoy the rural landscapes of Seraïdi, a picturesque village in the Edough mountains, offering panoramic views and hiking trails.'),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Relax and indulge in nautical activities at Ain Achir Beach.'),
              Text(
                  '- Explore the coastal area for seaside leisure and dining options.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Hotel Rim El Djamil (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use a taxi for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 10,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 20,000 DA.'),
              Text('- Meals and Activities: Approximately 50,000 DA.'),
              Text('- Miscellaneous: Approximately 60,000 DA.'),
              Text('Estimated Total Cost: Approximately 140,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNoHisNoDesertBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoHisNoDesertBejaia({
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
      debugShowCheckedModeBanner: false,
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
                'Nautical Places:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Enjoy the nautical attractions in Bejaia, including a visit to Tichy Beach.'),
              Text(
                  '- Visit Mellbou Beach and Ait Mendil to fully experience the area\'s natural beauty.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Sites:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Take a trip to the Kabyle village to explore rural sites such as Tala Hiba.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- HOTEL DU NORD (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 250,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 250,000 DA.'),
              Text('- Meals and Activities: Approximately 10,000 DA.'),
              Text('- Miscellaneous: Approximately 9,000 DA.'),
              Text('Estimated Total Cost: Approximately 519,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetINoRuralNoHisNoNau extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetINoRuralNoHisNoNau({
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
      debugShowCheckedModeBanner: false,
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
                'Nautical Places:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Enjoy the nautical attractions in Bejaia, including a visit to Tichy Beach.'),
              Text(
                  '- Visit Mellbou Beach and Ait Mendil to fully experience the area\'s natural beauty.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Sites:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Take a trip to the Kabyle village to explore rural sites such as Tala Hiba.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- HOTEL DU NORD (3 stars).'),
              SizedBox(height: 20.0),
              Text(
                'Desert Exploration in Hoggar National Park:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Discover the desert by exploring the Hoggar National Park.'),
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
                  '- Transport: Approximately 270,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 260,000 DA.'),
              Text('- Meals and Activities: Approximately 16,000 DA.'),
              Text('- Miscellaneous: Approximately 15,000 DA.'),
              Text('Estimated Total Cost: Approximately 561,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNoeverButRural extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoeverButRural({
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
      debugShowCheckedModeBanner: false,
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
                'Travel to Ghardaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Explore the Five Historic Villages of the M\'Zab Valley:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Ghardaia'),
              Text('- Melika'),
              Text('- Beni Isguen'),
              Text('- Bou Noura'),
              Text('- El Atteuf'),
              SizedBox(height: 20.0),
              Text(
                'Activities:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Experience the traditional architecture and lifestyle.'),
              Text('- Visit local markets.'),
              Text(
                  '- Learn about the cultural heritage of the Mozabite people.'),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Hotel El Mzab in Ghardaia'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Use taxi for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 15,000 DA (including domestic flights).'),
              Text('- Accommodation: Approximately 10,000 DA.'),
              Text('- Meals and Activities: Approximately 5,000 DA.'),
              Text('- Miscellaneous: Approximately 5,000 DA.'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 35,000 DA.'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetINoDesertNoNauNumidian extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetINoDesertNoNauNumidian({
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
      debugShowCheckedModeBanner: false,
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
                'Explore the Numidian heritage in Constantine, once known as Cirta.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                  'Visit the ancient ruins and delve into the rich history of the region.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Spend your night at Hotel Cirta (3 stars)'),
              SizedBox(height: 20.0),
              Text(
                'Rural Sites:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Take a trip to the Kabyle village to explore rural sites such as Tala Hiba.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Take a taxi from Constantine to Bejaia.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Spend your night at HOTEL DU NORD (3 stars)'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 20,000 DA'),
              Text('- Accommodation: Approximately 20,000 DA'),
              Text('- Meals and Activities: Approximately 9,000 DA'),
              Text('- Miscellaneous: Approximately 8,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 57,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetINoDesertNoNauRoman extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetINoDesertNoNauRoman({
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
      debugShowCheckedModeBanner: false,
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
                'Exploration of Roman Sites in Djemila and Timgad:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Journey to Djemila to explore well-preserved Roman ruins.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                  'Visit Timgad to discover the ancient Roman city and its remarkable architecture.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel Numidie Centre in Sétif (4-star)'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for travel'),
              SizedBox(height: 20.0),
              Text(
                'Exploration of Rural Areas:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Embark on a rural excursion to picturesque villages like Tifra, Ighzer Amokrane, and Souk El Khemis.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                  'Immerse yourself in the tranquility and authenticity of rural Algerian life.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Guesthouses in rural villages'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Use taxi for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 25,000 DA (including domestic flights)'),
              Text('- Accommodation: Approximately 25,000 DA'),
              Text('- Meals and Activities: Approximately 6,000 DA'),
              Text('- Miscellaneous: Approximately 6,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 62,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetINoDesertNoNauIslamic extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetINoDesertNoNauIslamic({
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
      debugShowCheckedModeBanner: false,
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
                'Visit the Palais de la Culture de Tlemcen - Imama.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                  'Explore the ruins of Mansourah, an ancient city that showcases the rich history of the region.'),
              Text(
                  'Discover the El Mechouar Palace, a historical palace complex that provides insights into Tlemcen\'s Islamic heritage.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Les Zianides Hotel (3-star)'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Use the bus for transportation.'),
              SizedBox(height: 20.0),
              Text(
                'Rural Excursion to the Villages of Ghardaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Travel to Ghardaia to explore its rural villages and historical landmarks.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                  'Visit the five historic villages of the M\'Zab Valley: Ghardaia, Melika, Beni Isguen, Bou Noura, and El Atteuf.'),
              Text(
                  'Experience the traditional architecture and lifestyle, visit local markets, and learn about the cultural heritage of the Mozabite people.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel El Mzab in Ghardaia'),
              SizedBox(height: 10.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text(
                  '- Private vehicles with chauffeur for local travel, with domestic flights as needed.'),
              Text('- Domestic flight from Tlemcen to Ghardaia.'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 30,000 DA (including domestic flights)'),
              Text('- Accommodation: Approximately 25,000 DA'),
              Text('- Meals and Activities: Approximately 9,000 DA'),
              Text('- Miscellaneous: Approximately 9,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 68,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetINoDesertNoNauNumidianNOR extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetINoDesertNoNauNumidianNOR({
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
      debugShowCheckedModeBanner: false,
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
                'Explore the Numidian heritage in Constantine, once known as Cirta.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                  'Visit the ancient ruins and delve into the rich history of the region.'),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Spend your night at Hotel Cirta (3 stars)'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 10,000 DA'),
              Text('- Accommodation: Approximately 20,000 DA'),
              Text('- Meals and Activities: Approximately 5,000 DA'),
              Text('- Miscellaneous: Approximately 5,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 40,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetINoDesertNoNauRomanNOR extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetINoDesertNoNauRomanNOR({
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
      debugShowCheckedModeBanner: false,
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
                'Exploration of Roman Sites in Djemila and Timgad:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Journey to Djemila to explore well-preserved Roman ruins.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Visit Timgad to discover the ancient Roman city and its remarkable architecture.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel Numidie Centre in Sétif (4-star)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for travel'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 10,000 DA (including domestic flights)'),
              Text('- Accommodation: Approximately 15,000 DA'),
              Text('- Meals and Activities: Approximately 5,000 DA'),
              Text('- Miscellaneous: Approximately 5,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 35,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetINoDesertNoNauIslamicNOR extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetINoDesertNoNauIslamicNOR({
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
      debugShowCheckedModeBanner: false,
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
                'Visit the Palais de la Culture de Tlemcen - Imama.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Explore the ruins of Mansourah, an ancient city that showcases the rich history of the region.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Discover the El Mechouar Palace, a historical palace complex that provides insights into Tlemcen\'s Islamic heritage.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Les Zianides Hotel (3-star)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Use the bus for transportation'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 10,000 DA (including domestic flights)'),
              Text('- Accommodation: Approximately 15,000 DA'),
              Text('- Meals and Activities: Approximately 5,000 DA'),
              Text('- Miscellaneous: Approximately 4,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 34,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNoeverButAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoeverButAlger({
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
      debugShowCheckedModeBanner: false,
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
                'Relaxation and nautical activities at Sidi Fredj Port.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Boat excursion to discover the bay of Algiers.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Abasside Hotel (3 stars)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Use the bus for transportation'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 7,000 DA'),
              Text('- Accommodation: Approximately 15,000 DA'),
              Text('- Meals and Activities: Approximately 5,000 DA'),
              Text('- Miscellaneous: Approximately 6,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 33,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNoeverButOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoeverButOran({
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
      debugShowCheckedModeBanner: false,
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
                'Nautical Exploration in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Engage in various nautical activities along the Oran at Madagh Plage.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Explore the Port of Oran and its bustling waterfront, with opportunities for boat rides and sea excursions.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Miami Beach Hotel (3 stars)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Use the bus for transportation'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 6,000 DA (including domestic flights)'),
              Text('- Accommodation: Approximately 10,000 DA'),
              Text('- Meals and Activities: Approximately 5,000 DA'),
              Text('- Miscellaneous: Approximately 5,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 26,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNoeverButAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoeverButAnnaba({
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
      debugShowCheckedModeBanner: false,
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
                'Engage in a variety of nautical activities along the Annaba coastline, including sailing, windsurfing, and boat tours.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Visit Djenen El Bey, a popular beach destination for swimming and water sports.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- EL Rim El Djamil Hotel (3-star)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Use the bus for transportation'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 5,000 DA'),
              Text('- Accommodation: Approximately 15,000 DA'),
              Text('- Meals and Activities: Approximately 5,000 DA'),
              Text('- Miscellaneous: Approximately 5,500 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 30,500 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetNoeverButBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetNoeverButBejaia({
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
      debugShowCheckedModeBanner: false,
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
                'Nautical Exploration in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Visit Les Aiguades Beach to enjoy the stunning views and relax by the sea.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hôtel du Lac (4-star) in Bejaia'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Take taxi from Telemcen to Bejaia'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 5,000 DA (including domestic flights)'),
              Text('- Accommodation: Approximately 10,000 DA'),
              Text('- Meals and Activities: Approximately 5,000 DA'),
              Text('- Miscellaneous: Approximately 5,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 25,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetnoNnoRNumidian extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetnoNnoRNumidian({
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
      debugShowCheckedModeBanner: false,
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
                'Explore the Numidian heritage in Constantine, once known as Cirta.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Visit the ancient ruins and delve into the rich history of the region.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel Cirta (3 stars)'),
              SizedBox(height: 40.0), // Space between itineraries
              Text(
                'Desert Camping Experience in Tassili n\'Ajjer:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Travel to Tassili n\'Ajjer for an immersive desert camping adventure.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Camp under the starlit skies amidst the breathtaking rock formations and ancient rock art of the Tassili n\'Ajjer National Park.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Enjoy guided hikes and camel treks to explore the unique geological features, rock paintings, and natural beauty of the desert landscape.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Tassili n\'Ajjer Desert Camp'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Domestic flight from Constantine to Tassili n\'Ajjer'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 25,000 DA'),
              Text('- Accommodation: Approximately 17,800 DA'),
              Text('- Meals and Activities: Approximately 5,500 DA'),
              Text('- Miscellaneous: Approximately 6,300 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 54,600 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetnoNnoRRoman extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetnoNnoRRoman({
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
      debugShowCheckedModeBanner: false,
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
                'Exploration of Roman Sites in Djemila and Timgad:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Journey to Djemila to explore well-preserved Roman ruins.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Visit Timgad to discover the ancient Roman city and its remarkable architecture.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel Numidie Centre in Sétif (4-star)'),
              SizedBox(height: 40.0), // Space between itineraries
              Text(
                'Sahara Desert Exploration in Tamanrasset:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Venture to Tamanrasset for an immersive Sahara Desert experience.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Set up camp beneath the shimmering stars amidst the vast expanse of the Sahara dunes.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Embark on thrilling 4x4 desert safaris to discover hidden oases, towering sand dunes, and traditional desert settlements.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Tamanrasset Desert Camp'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Domestic flight from Setif to Tamanrasset'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 30,000 DA'),
              Text('- Accommodation: Approximately 15,000 DA'),
              Text('- Meals and Activities: Approximately 6,000 DA'),
              Text('- Miscellaneous: Approximately 6,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 57,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetnoNnoRIslamic extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetnoNnoRIslamic({
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
      debugShowCheckedModeBanner: false,
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
                'Visit the Palais de la Culture de Tlemcen - Imama.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Explore the ruins of Mansourah, an ancient city that showcases the rich history of the region.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Discover the El Mechouar Palace, a historical palace complex that provides insights into Tlemcen\'s Islamic heritage.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Les Zianides Hotel (3-star)'),
              SizedBox(height: 40.0), // Space between itineraries
              Text(
                'Desert Camping Experience in Tindouf:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Travel to Tindouf for an authentic desert camping adventure.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Set up camp amidst the tranquil sand dunes of the Sahara Desert and enjoy the peaceful surroundings.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Explore the local markets and experience traditional desert hospitality.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Desert Camp in Tindouf'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Domestic flight from Tlemcen to Tindouf'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 25,000 DA'),
              Text('- Accommodation: Approximately 15,000 DA'),
              Text('- Meals and Activities: Approximately 5,000 DA'),
              Text('- Miscellaneous: Approximately 5,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 50,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetnodesnoruralNumidianAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetnodesnoruralNumidianAlger({
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
      debugShowCheckedModeBanner: false,
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
                'Journey to Djemila to explore well-preserved Numidian ruins.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Visit Timgad to discover the ancient Numidian city and its remarkable architecture.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel Numidie Centre in Sétif (4-star)'),
              SizedBox(height: 40.0), // Space between itineraries
              Text(
                'Nautical Exploration in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Visit Sidi Fradj, a scenic coastal area ideal for swimming and water sports.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Visit La Vigie Beach.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Abbasside Palace (3 stars)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Take taxi from Sétif to Algiers'),
              Text('- Use the bus for transportation within Algiers'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 20,000 DA'),
              Text('- Accommodation: Approximately 20,000 DA'),
              Text('- Meals and Activities: Approximately 5,000 DA'),
              Text('- Miscellaneous: Approximately 5,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 50,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetnodesnoruralNumidianOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetnodesnoruralNumidianOran({
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
      debugShowCheckedModeBanner: false,
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
                'Journey to Djemila to explore well-preserved Numidian ruins.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Visit Timgad to discover the ancient Numidian city and its remarkable architecture.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel Numidie Centre in Sétif (4-star)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for travel'),
              SizedBox(height: 40.0), // Space between itineraries
              Text(
                'Relaxation and Nautical Activities in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Relax and indulge in nautical activities at Ain El Turk Beach.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Explore the Corniche area for seaside leisure and dining options.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel Miami Beach (3 stars)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Take a taxi from Sétif to Oran'),
              Text('- Use the bus for transportation within Oran'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 15,000 DA'),
              Text('- Accommodation: Approximately 20,000 DA'),
              Text('- Meals and Activities: Approximately 5,000 DA'),
              Text('- Miscellaneous: Approximately 5,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 45,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetnodesnoruralNumidianAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetnodesnoruralNumidianAnnaba({
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
      debugShowCheckedModeBanner: false,
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
                'Head to Hippo Regius in Annaba to delve into the history of the Numidian civilization.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Visit the ancient ruins, museums, and learn more about this historical period.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Relax and indulge in nautical activities at Ain Achir Beach.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Explore the coastal area for seaside leisure and dining options.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel Rim El Djamil (3 stars)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Use taxi for transportation'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 10,000 DA'),
              Text('- Accommodation: Approximately 15,000 DA'),
              Text('- Meals and Activities: Approximately 5,000 DA'),
              Text('- Miscellaneous: Approximately 5,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 35,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetnodesnoruralNumidianBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetnodesnoruralNumidianBejaia({
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
      debugShowCheckedModeBanner: false,
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
                'Explore the Numidian heritage in Constantine, once known as Cirta.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Visit the ancient ruins and delve into the rich history of the region.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Spend your night at Hotel Cirta (3 stars)'),
              SizedBox(height: 40.0), // Space between itineraries
              Text(
                'Nautical Places in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Enjoy the nautical attractions in Bejaia, including a visit to Tichy Beach.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'You can also visit Mellbou Beach and Ait Mendil to fully experience the area\'s natural beauty.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Spend your night at Du Nord Hotel (3 stars)'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 20,000 DA'),
              Text('- Accommodation: Approximately 20,000 DA'),
              Text('- Meals and Activities: Approximately 6,000 DA'),
              Text('- Miscellaneous: Approximately 6,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 52,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetnodesnoruralRomanAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetnodesnoruralRomanAlger({
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
      debugShowCheckedModeBanner: false,
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
                'Exploration of Roman Sites in Djemila and Timgad:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Journey to Djemila to explore well-preserved Roman ruins.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Visit Timgad to discover the ancient Roman city and its remarkable architecture.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel Numidie Centre in Sétif (4-star)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for travel'),
              SizedBox(height: 40.0), // Space between itineraries
              Text(
                'Relaxation and Nautical Activities in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Relaxation and nautical activities at Sidi Fredj Port.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Boat excursion to discover the bay of Algiers.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Abbasside Palace (3-stars)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Use the bus for transportation'),
              Text('- Take a taxi from Sétif to Algiers'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 20,000 DA'),
              Text('- Accommodation: Approximately 20,000 DA'),
              Text('- Meals and Activities: Approximately 6,000 DA'),
              Text('- Miscellaneous: Approximately 5,500 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 61,500 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetnodesnoruralRomanOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetnodesnoruralRomanOran({
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
      debugShowCheckedModeBanner: false,
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
                'Journey to Djemila to explore well-preserved Numidian ruins.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Visit Timgad to discover the ancient Numidian city and its remarkable architecture.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel Numidie Centre in Sétif (4-star)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Private vehicles with chauffeur for travel'),
              SizedBox(height: 40.0), // Space between itineraries
              Text(
                'Relaxation and Nautical Activities in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Relax and indulge in nautical activities at Ain El Turk Beach.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Explore the Corniche area for seaside leisure and dining options.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel Miami Beach (3 stars)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Use the bus for transportation'),
              Text('- Take a taxi from Sétif to Oran'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 20,000 DA'),
              Text('- Accommodation: Approximately 20,000 DA'),
              Text('- Meals and Activities: Approximately 6,000 DA'),
              Text('- Miscellaneous: Approximately 5,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 51,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetnodesnoruralRomanAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetnodesnoruralRomanAnnaba({
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
      debugShowCheckedModeBanner: false,
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
                'Head to Hippo Regius in Annaba to delve into the history of the Numidian civilization.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Visit the ancient ruins, museums, and learn more about this historical period.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Relaxation and Nautical Activities in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Relax and indulge in nautical activities at Ain Achir Beach.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Explore the coastal area for seaside leisure and dining options.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel Rim El Djamil (3 stars)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Use taxi for transportation'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 6,000 DA'),
              Text('- Accommodation: Approximately 10,000 DA'),
              Text('- Meals and Activities: Approximately 5,000 DA'),
              Text('- Miscellaneous: Approximately 5,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 26,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetnodesnoruralRomanBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetnodesnoruralRomanBejaia({
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
      debugShowCheckedModeBanner: false,
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
                'Discovery of Bejaïa and Surroundings:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Visit the Kasbah of Bejaïa, a historical fortress overlooking the Mediterranean Sea.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Explore the Roman ruins of Toudja and the ancient city of Saldae.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Discover the Béjaïa Museum to learn about Roman civilization and local history.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Nautical Activities in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Indulge in nautical activities at Tichy Beach, including swimming, snorkeling, and diving.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Explore the Cap Carbon coastline by boat, visiting sea caves and hidden coves.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Les Hammadites hotel (3-star)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Use the bus for transportation'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 10,000 DA'),
              Text('- Accommodation: Approximately 10,000 DA'),
              Text('- Meals and Activities: Approximately 4,000 DA'),
              Text('- Miscellaneous: Approximately 5,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 29,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetnodesnoruralIslamicAlger extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetnodesnoruralIslamicAlger({
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
      debugShowCheckedModeBanner: false,
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
                'Discovery of Algiers and Surroundings:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Visit the Kasbah of Algiers and historical mosques.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Explore the National Museum of Antiquities and Islamic Arts for Roman artifacts.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Excursion to Tipasa to explore Roman ruins and enjoy the Mediterranean coast.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hotel Lella Doudja (4 stars)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Use the bus for transportation'),
              SizedBox(height: 40.0), // Space between itineraries
              Text(
                'Relaxation and Nautical Activities in Algiers:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Relaxation and nautical activities at Sidi Fredj Port.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Boat excursion to discover the bay of Algiers.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 7,000 DA'),
              Text('- Accommodation: Approximately 20,000 DA'),
              Text('- Meals and Activities: Approximately 5,000 DA'),
              Text('- Miscellaneous: Approximately 6,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 38,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetnodesnoruralIslamicOran extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetnodesnoruralIslamicOran({
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
      debugShowCheckedModeBanner: false,
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
                'Visit the Great Mosque of Oran, a landmark with stunning architecture and rich history.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Discover the Ahmed Zabana Museum, which showcases artifacts related to Algeria\'s Islamic heritage.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Oran:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Engage in various nautical activities along the Oran at Madagh Plage.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Explore the Port of Oran and its bustling waterfront, with opportunities for boat rides and sea excursions.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Miami Beach (3 stars)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Use the bus for transportation'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text('- Transport: Approximately 7,000 DA'),
              Text('- Accommodation: Approximately 15,000 DA'),
              Text('- Meals and Activities: Approximately 7,000 DA'),
              Text('- Miscellaneous: Approximately 5,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 34,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetnodesnoruralIslamicAnnaba extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetnodesnoruralIslamicAnnaba({
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
      debugShowCheckedModeBanner: false,
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
              Text(
                'Explore The Salah Bey Mosque.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Explore Mosque of Sidi Bou Merouane, an important historical site blending Islamic and Roman influences.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Discover the Hippo Regius ruins, showcasing the rich history of the region.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Nautical Exploration in Annaba:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Engage in a variety of nautical activities along the Annaba coastline, including sailing, windsurfing, and boat tours.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Visit Djenen El Bey, a popular beach destination for swimming and water sports.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- EL Rim El Djamil Hotel (3-star)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Use the bus for transportation'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 5,000 DA (including domestic flights)'),
              Text('- Accommodation: Approximately 10,000 DA'),
              Text('- Meals and Activities: Approximately 6,000 DA'),
              Text('- Miscellaneous: Approximately 4,000 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 25,000 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

class MediumbudgetnodesnoruralIslamicBejaia extends StatelessWidget {
  final String budget;
  final String tripDuration;
  final String historicalPlaces;
  final String ancientCivilization;
  final String desertCamping;
  final String nauticalPlaces;
  final String ruralPlaces;
  final String provincePreference;

  const MediumbudgetnodesnoruralIslamicBejaia({
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
      debugShowCheckedModeBanner: false,
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
                'Visit the Palais de la Culture de Tlemcen - Imama.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Explore the ruins of Mansourah, an ancient city that showcases the rich history of the region.',
                style: TextStyle(fontSize: 14.0),
              ),
              Text(
                'Discover the El Mechouar Palace, a historical palace complex that provides insights into Tlemcen\'s Islamic heritage.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Les Zianides Hotel (3-star)'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Use the bus for transportation'),
              SizedBox(height: 40.0), // Space between itineraries
              Text(
                'Nautical Exploration in Bejaia:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                'Visit Les Aiguades Beach to enjoy the stunning views and relax by the sea.',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(height: 20.0),
              Text(
                'Accommodation:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Hôtel du Lac (4-star) in Bejaia'),
              SizedBox(height: 20.0),
              Text(
                'Transport:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              Text('- Take taxi from Tlemcen to Bejaia'),
              SizedBox(height: 20.0),
              Text(
                'Estimated Total Cost:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              SizedBox(height: 10.0),
              Text(
                  '- Transport: Approximately 10,000 DA (including domestic flights)'),
              Text('- Accommodation: Approximately 10,000 DA'),
              Text('- Meals and Activities: Approximately 6,000 DA'),
              Text('- Miscellaneous: Approximately 5,500 DA'),
              SizedBox(height: 10.0),
              Text('Estimated Total Cost: Approximately 31,500 DA'),
            ],
          ),
        ),
      ),
    );
  }
}

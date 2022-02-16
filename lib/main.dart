import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final imagePath = [
    'assets/images/land1.jpg',
    'assets/images/land2.jpg',
    'assets/images/land3.jpg',
    'assets/images/land4.jpg',
    'assets/images/land5.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.list)),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          title: const Text('Landscape'),
          backgroundColor: Colors.red),
      body: BodyPage(),
    );
  }
}

class BodyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BodyPageState();
  }
}

class BodyPageState extends State<BodyPage> {
  final List<Map> image = [
    {
      'name': 'Land of Fire',
      'path': 'assets/images/land1.jpg',
      'description':
          'In the land of Fire, heroes born with ability to manpiulate fire'
    },
    {
      'name': 'Land of Wave',
      'path': 'assets/images/land2.jpg',
      'description':
          'In the land of Fire, heroes born with ability to manpiulate fire'
    },
    {
      'name': 'Land of Sand',
      'path': 'assets/images/land3.jpg',
      'description':
          'In the land of Fire, heroes born with ability to manpiulate fire'
    },
    {
      'name': 'Land of Water',
      'path': 'assets/images/land4.jpg',
      'description':
          'In the land of Fire, heroes born with ability to manpiulate fire'
    },
    {
      'name': 'Land of Cloud',
      'path': 'assets/images/land5.jpg',
      'description':
          'In the land of Fire, heroes born with ability to manpiulate fire'
    },
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              image[index]['path'],
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Card(
            color: Colors.red[700],
            elevation: 5.0,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text('${image[index]['name']}: ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w500)),
                  Text(image[index]['description'],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300))
                ],
              ),
            ),
          ),
          Expanded(child: SizedBox()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 120,
                height: 45,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  color: Colors.red,
                  onPressed: () {
                    if (index == 0) return;

                    setState(() {
                      index = index - 1;
                    });
                  },
                  child: const Text(
                    'Back',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: 120,
                height: 45,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  color: Colors.red,
                  onPressed: () {
                    if (index == (image.length - 1)) return;
                    setState(() {
                      index = index + 1;
                    });
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

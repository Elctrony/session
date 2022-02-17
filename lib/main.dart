import 'package:flutter/material.dart';

void main() {
  runApp(RootApp());
}

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List textList = [
    'https://merriam-webster.com/assets/ld/word_of_the_day/images/2540/large.jpg',
    'https://www.celebritycruises.com/blog/content/uploads/2020/12/famous-landmarks-in-europe-eiffel-tower-paris-france-683x1024.jpg',
    'https://www.landmarkhealth.org/wp-content/uploads/2019/04/CA.jpg',
    'https://tourflag.com/wp-content/uploads/2018/05/%D8%B3%D9%8A%D8%A7%D8%AD%D8%A9-%D8%A7%D9%84%D9%85%D8%A7%D9%86%D9%8A%D8%A7-1.jpg',
    'https://wallpaperaccess.com/full/170249.jpg',
    'https://eskipaper.com/images/landscape-wallpaper-hd-32.jpg'
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('IEEE'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Image.network(
                  textList[index],
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    onPressed: () {
                      if (index == 0) return;
                      setState(() {
                        index--;
                      });
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.red,
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (index == (textList.length - 1)) return;
                      setState(() {
                        index++;
                      });
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.red,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

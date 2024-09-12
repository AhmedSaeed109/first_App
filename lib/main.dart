import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: Text(
            'Assignment1',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.black),
          ],
        ),
        body: ListViewBuilder(),
      ),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({super.key});
   List<Color> colors = [
  Colors.cyan,
  Colors.pink,
  Colors.teal,
  Colors.blue,
  Colors.orange,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.purple,
  Colors.yellow,
   ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (conxt, index) {
      return ListViewCard(color: colors[index],);
    });
  }
}
class ListViewCard extends StatelessWidget {
  ListViewCard({super.key, required this.color});
  Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          height: 200,
          width: 200,
          child: Stack(
            children: [
            Positioned(
              top: 20,
              left: 20,
              child: Text('Top Left',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
              Center(child: Text('Center',
                style: TextStyle(color: Colors.white, fontSize: 18)
                ,)
              ),
          Positioned(
            bottom:20,
              right: 20,
              child: Text('Bottom Right',
                style: TextStyle(color: Colors.white,fontSize: 18),
              )
          ),
            ],
          ),
        ),
      ),

    );

  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///This programme how to creat a stateful widget and how it work
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageView();
  }
}

class HomePageView extends State<HomePage> {
  List<String> images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.portrait) {
            return Container(
              padding: EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 140,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              'John Doe',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                                'Lorem ipsum dolor sit amet,consecteture adipicing elit.Sed aliquet turpis eu enim tristique,in iaculis libero porttitor'),
                          ),
                          Expanded(
                            flex: 10,
                            child: Container(
                              child: GridView.builder(
                                itemCount: images.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  //orientation == Orientation.portrait ? 3 : 3,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return Center(
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Image.network(images[index]),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Container(
              padding: EdgeInsets.all(8),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      flex: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 130,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s'),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              'John Doe',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                                'Lorem ipsum dolor sit amet,consecteture adipicing elit.Sed aliquet turpis eu enim tristique,in iaculis porttitor'),
                          ),
                          Expanded(
                            flex: 10,
                            child: Container(
                              child: GridView.builder(
                                itemCount: images.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  //orientation == Orientation.portrait ? 3 : 3,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return Center(
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Image.network(images[index]),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}

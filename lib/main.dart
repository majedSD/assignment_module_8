

///-------------Module-9--Assignment--------
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int c1 = 1, c2 = 1, c3 = 1;
  int amount = 34 + 140 + 50;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth * 0.03;
    double buttonSize = screenWidth * 0.08;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Bag',
          style: TextStyle(
            fontSize: fontSize * 2,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Pullover Card
            buildItemCard(
              'Pullover',
              'Black',
              'L',
              34,
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s',
              c1,
                  () {
                setState(() {
                  c1++;
                  amount += 34;
                });
              },
                  () {
                setState(() {
                  if (c1 > 0) {
                    c1--;
                    amount -= 34;
                  }
                });
              },
              fontSize,
              buttonSize,
            ),
            SizedBox(height: 20),
            // T-Shirt Card
            buildItemCard(
              'T-Shirt',
              'Gray',
              'XL',
              140,
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s',
              c2,
                  () {
                setState(() {
                  c2++;
                  amount += 140;
                });
              },
                  () {
                setState(() {
                  if (c2 > 0) {
                    c2--;
                    amount -= 140;
                  }
                });
              },
              fontSize,
              buttonSize,
            ),
            SizedBox(height: 20),
            // Sport Dress Card
            buildItemCard(
              'Sport Dress',
              'Black',
              'M',
              50,
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkN5hV2XmBVX7ckElXZJAYOLKMBm1v1s6qBkrhaxw&s',
              c3,
                  () {
                setState(() {
                  c3++;
                  amount += 50;
                });
              },
                  () {
                setState(() {
                  if (c3 > 0) {
                    c3--;
                    amount -= 50;
                  }
                });
              },
              fontSize,
              buttonSize,
            ),
            SizedBox(height: 20),
            // Total Amount
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total amount:',
                  style: TextStyle(
                    fontSize: fontSize,
                    color: Colors.black38,
                  ),
                ),
                Text(
                  '$amount\$',
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Checkout Button
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Congratulations!')),
                );
              },
              child: Text(
                'CHECK OUT',
                style: TextStyle(fontSize: fontSize),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.symmetric(
                  vertical: buttonSize / 2,
                  horizontal: buttonSize * 4.5,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(buttonSize * 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItemCard(
      String title,
      String color,
      String size,
      int price,
      String imageUrl,
      int quantity,
      Function() onIncrement,
      Function() onDecrement,
      double fontSize,
      double buttonSize,
      ) {
    return Card(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Image.network(imageUrl),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        'Color:',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: fontSize,
                        ),
                      ),
                      Text(
                        ' $color',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: fontSize,
                        ),
                      ),
                      Text(
                        '      Size:',
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: fontSize,
                        ),
                      ),
                      Text(
                        size,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: fontSize,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: onIncrement,
                        child: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          backgroundColor: Colors.white,
                          shape: CircleBorder(),
                          minimumSize: Size(buttonSize, buttonSize),
                        ),
                      ),
                      Text(
                        ' $quantity  ',
                        style: TextStyle(
                          fontSize: fontSize,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: onDecrement,
                        child: Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          backgroundColor: Colors.white,
                          shape: CircleBorder(),
                          minimumSize: Size(buttonSize, buttonSize),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        '\$$price',
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
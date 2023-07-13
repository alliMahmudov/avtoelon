import 'package:flutter/material.dart';

import '../models/cars_model.dart';
import '../models/cars_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const String id = "main_page";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static List<Cars> list = [
    Cars("assets/images/aston_martin.png", "Aston Martin", "blue", 1958, 45800,
        35687),
    Cars("assets/images/camaro.png", "Chevrolet camaro", "red", 2007, 13000,
        68152),
    Cars("assets/images/ford_1953.png", "Ford Skyliner", "red", 1953, 68999,
        31041),
    Cars("assets/images/hummer.png", "Hummer", "metallic", 2009, 15990, 89241),
    Cars("assets/images/shelby_2008.png", "Shelby GT500", "blue", 2008, 14500,
        52661),
    Cars("assets/images/toyota.png", "Toyota Camry", "white", 2014, 10200,
        64539),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text("Avtoelon"),
          actions: const [
            Icon(Icons.add_circle_outline_rounded),
            SizedBox(
              width: 16,
            ),
            Icon(Icons.price_check),
            SizedBox(
              width: 16,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 16,
            ),
          ],
        ),
        body: ListView(
          children: [
            myCard(list[0]),
            myCard(list[1]),
            myCard(list[2]),
            myCard(list[3]),
            myCard(list[4]),
            myCard(list[5]),
          ],
        ));
  }

  Widget myCard(Cars car) {
    return Card(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(4),
                height: 120,
                width: 160,
                child: Image.asset(
                  car.picture!,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Text(
                      car.model!,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                          text: "year: ",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "${car.year}  ",
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      const TextSpan(
                          text: "color: ",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                        text: "${car.color}",
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                          text: "mileage: ",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "${car.mileage}  ",
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ]),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                          text: "Cost: ",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: "\$${car.cost} ",
                          style: const TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                    ]),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

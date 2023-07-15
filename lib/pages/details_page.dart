import 'package:avtoelon/models/cars_model.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.car});

  static const String id = "details_page";

  final Cars car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          car.model!,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.star_border,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(12),
        child: Column(
          children: [
            SizedBox(
              height: 240,
              child: Image.asset(car.picture!),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "${car.cost}",
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const TextSpan(
                          text: ' y.e.',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Text(car.model!,style: const TextStyle(fontSize: 16),),
                      Text(", ${car.year!} y.",style: const TextStyle(fontSize: 16),),
                    ],
                  ),
                )
              ],
            ),
            const Divider(thickness: 1,color: Colors.grey,),
          ],
        ),
      ),
    );
  }
}

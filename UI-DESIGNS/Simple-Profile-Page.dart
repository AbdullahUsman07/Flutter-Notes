import 'dart:developer';

import 'package:flutter/material.dart';

class SimpleUI extends StatelessWidget {
  const SimpleUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            Positioned(
                child: Container(
              height: 450,
              //color:Colors.red,
              child: Stack(
                children: [
                  Container(
                    height: 400,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/image-5.jpeg'))),
                  )
                ],
              ),
            )),
            const Positioned(
                bottom: 0,
                right: 20,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.green,
                  backgroundImage: AssetImage('assets/images/profile.jpeg'),
                )),
            const Positioned(
                top: 40,
                left: 15,
                child: (Icon(
                  Icons.arrow_back_ios,
                ))),
            const Positioned(
                top: 40, right: 15, child: (Icon(Icons.favorite_outline))),
          ],
        ),
        Container(
          //height: 50,
          padding: EdgeInsets.all(15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Madrid City for Designers Tour',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700),
              ),
              Text('Get your tickets today from the Store',
                  style: TextStyle(fontSize: 15, color: Colors.grey.shade700))
            ],
          ),
        ),
        Container(
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text(
                    '20',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.favorite),
                ],
              ),
              Row(
                children: [
                  Text(
                    '45',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.upload),
                ],
              ),
              Row(
                children: [
                  Text(
                    '77',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.comment),
                ],
              ),
              Row(
                children: [
                  Text(
                    '534',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.people),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
            child: Container(
          padding: const EdgeInsets.all(15),
          child: const Text(
              'Madrid, the capital of Spain, is a vibrant city known for its rich history, stunning architecture, and lively culture. It boasts famous landmarks like the Royal Palace, Plaza Mayor, and Prado Museum. Madrid’s bustling streets, delicious cuisine, and passionate football culture make it a must-visit destination for travelers worldwide'),
        ))
      ]),
    );
  }
}

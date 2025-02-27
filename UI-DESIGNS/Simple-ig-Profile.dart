import 'package:flutter/material.dart';

class InstaPage extends StatelessWidget {
  const InstaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        title: const Text(
          'wanda.s',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
        ),
      ),
      body: Container(
       // color: Colors.red,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
             // color: Colors.green,
              child: Row(
                children: [
                  Container(
                    height: 250,
                    width: 170,
                    //color: Colors.purple,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/images/profile.jpeg'),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Wanda.s',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const Text(
                            'Photographer/NewYork',
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.pink,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                //    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text('90',style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('Posts',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.pink)),
                              ],
                            ),
                            Column(
                              children: [
                                Text('300',style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('Followers',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.pink)),
                              ],
                            ),
                            Column(
                              children: [
                                Text('100',style: TextStyle(fontWeight: FontWeight.bold),),
                                Text('Following',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.pink)),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          ElevatedButton(
                            style:ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              minimumSize: Size(150,40),
                            ),
                            onPressed: (){}, child: const Text('Follow',)),
                            const SizedBox(width: 10,),
                            Icon(Icons.arrow_downward_outlined)
                        ],)
                      ],
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:quizapp/models/questionBank.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var userName=ModalRoute.of(context)?.settings.arguments as String;
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 54, 0, 116),
      body: Container(
        decoration: const BoxDecoration(
         image:DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1688494930098-e88c53c26e3a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
          fit: BoxFit.cover,
          opacity:0.6
         )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Choose Quiz Category! welcome $userName",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(height: 120,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(164, 52, 87, 230),
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, 'questionScreen',arguments:[sportTest,userName]);
                              },
                              child: Container(   //INKWELL
                                width: 150,
                                height: 150,
                                child: Image.network('https://th.bing.com/th/id/R.4699a4685f4aad6d63219b82a03b4eda?rik=XZJZcX3MEMoVJw&riu=http%3a%2f%2fwww.newdesignfile.com%2fpostpic%2f2013%2f09%2fall-sports_236699.png&ehk=JDY%2bm1lZ44oRikMtKAO32h7ygaGH57yQOj%2f9mVrros4%3d&risl=&pid=ImgRaw&r=0&sres=1&sresct=1'),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Sport',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20,color: Colors.white),)
                          ],
                        ),
                      ),
                         Container(   
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(164, 52, 87, 230),
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, 'questionScreen',arguments:[mathTest,userName]);
                              },
                              child: Container(
                                width: 150,
                                height: 150,
                                child: Image.network('https://th.bing.com/th/id/R.3d9cc2c000b5a37d8a17bcf06bdb3f8c?rik=RoTVp7JnmIBNAQ&pid=ImgRaw&r=0'),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Math',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20,color: Colors.white),)
                          ],
                        ),
                      )
                    ],
                  ),
                   SizedBox(height: 60,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          color:Color.fromARGB(164, 52, 87, 230),
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, 'questionScreen',arguments:[historyTest,userName]);
                              },
                              child: Container(
                                width: 150,
                                height: 150,
                                child: Image.network('https://th.bing.com/th/id/R.4a80419ecaa38b89b0abbd8143b48858?rik=iNNp69jh2uHXBQ&riu=http%3a%2f%2ffc06.deviantart.net%2ffs29%2fi%2f2008%2f110%2f6%2fa%2fHistory_book_by_Ayelie_stock.png&ehk=6vzY2qBUt6R43ynWufAhtrd1lcsVco7INn8WKTp3Jpk%3d&risl=&pid=ImgRaw&r=0'),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('History',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20,color: Colors.white),)
                          ],
                        ),
                      ),
                         Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(164, 52, 87, 230),
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, 'questionScreen',arguments:[ScienceTest,userName]);
                              },
                              child: Container(
                                width: 150,
                                height: 150,
                                child: Image.network('https://th.bing.com/th/id/R.29c4c9f3d0dc8d5cc32f619e715c4d72?rik=vLUTThLSq9bpsg&pid=ImgRaw&r=0'),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Science',style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20,color: Colors.white),)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

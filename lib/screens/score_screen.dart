import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var score =ModalRoute.of(context)?.settings.arguments as List;
    int scoreInt=score[0];
    int totalScore=score[1];
    String userName=score[2];
    String CurrStatus= (totalScore/2)<=scoreInt?"Passed":"Failed";

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("${userName}'s Results"),backgroundColor: Color.fromARGB(188, 88, 12, 88),),
      body: Container(
        decoration: const BoxDecoration(
         image:DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1688494930098-e88c53c26e3a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
          fit: BoxFit.cover,
          opacity:0.9
         )
        ),
        child:Center(
          child: Container(
            width: 250,
            height: 300,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 224, 196, 234)
          ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("${CurrStatus}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:CurrStatus=='Passed'?Colors.green:Colors.red ),) , 
              Text("Your Score  ${scoreInt}/${totalScore}!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(height: 15,),
               Container(
                  width: 100,
                  child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(188, 88, 12, 88)),onPressed: (){
                    Navigator.popUntil(context, ModalRoute.withName('categoriesscreen'));
                  }, child: Text("Play Again"))),
                   SizedBox(height: 15,),
                 Container(
                  width: 200,
                  child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(188, 88, 12, 88)),onPressed: (){
                    Navigator.popUntil(context, ModalRoute.withName('loginScreen'));
                  }, child: Text("Change Username"))),
            ],)),
        )
        ),
    );
  }
}
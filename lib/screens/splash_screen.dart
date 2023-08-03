import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});
  
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[700],
      body: Container(
        decoration: const BoxDecoration(
         image:DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1688494930098-e88c53c26e3a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
          fit: BoxFit.cover,
          opacity:0.6
         )
        ),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
             Container(
              height: 150,
              width: 150,
              child: Image.network('https://images-na.ssl-images-amazon.com/images/I/61KrNYlxCNL.png'),
            ),
           const SizedBox(height: 25,),
            Text('This is quiz time!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.9),),),
           const SizedBox(height: 50,),
          Container(
            width: 150,
            child: ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, 'loginScreen');
            }, child: Text("Play Now!"),))
          ],
        )),
      ),
    );
  }
}
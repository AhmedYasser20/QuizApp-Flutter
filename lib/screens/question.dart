import 'package:flutter/material.dart';
class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
    var size,height,width;
    
    int score=0;
    int indexQuestion=0;
    
  @override
  Widget build(BuildContext context) {
    var recvData=ModalRoute.of(context)?.settings.arguments as List ;
    var tempbank=recvData[0] as List<Map<String, dynamic>>;
    var userName=recvData[1] as String;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      
      appBar: 
      AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
         showDialog(context: context, builder: (context){
         return AlertDialog(
          title: Text('Leaving Quiz'),           // To display the title it is optional
              content: Text('Are you sure about leaving ?'),   // Message which will be pop up on the screen
                                                  // Action widget which will provide the user to acknowledge the choice
                actions: [
                ElevatedButton(                     // FlatButton widget is used to make a text to work like a button
                  onPressed: () {
                    Navigator.popUntil(context, ModalRoute.withName('categoriesscreen'));
                  },             // function used to perform after pressing the button
                  child: Text('Yes'),
                ),
                ElevatedButton(
                  
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('No'),
                ),
              ],
         );
             
         });
        }, icon: Icon(Icons.arrow_back)),
        title: Title(color: Colors.white, child: Text("${indexQuestion+1}/${tempbank.length}")),centerTitle: true,backgroundColor: Color.fromARGB(188, 88, 12, 88),),
      body: Container(
        decoration: const BoxDecoration(
         image:DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1688494930098-e88c53c26e3a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
          fit: BoxFit.cover,
          opacity:0.9
         )
        ),
        child: Center(child: Container(
          padding: EdgeInsets.all(20),
          width: width*0.7,
          height: height*0.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 224, 196, 234)
          ),
          child: SingleChildScrollView(
            child: Column(children: [
            Text("${tempbank[indexQuestion]['question']}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 15,),
            Container(
              width: width*0.6*0.8,
              height: height*0.8*0.5,
              child: ListView.builder(
              itemCount: tempbank[indexQuestion]['answers'].length,
              itemBuilder: (context, tempindex) => ListTile(
                  onTap: () {
                   setState(() {
                      if(tempbank[indexQuestion]['answers'][tempindex]['score']==1){
                        score++;
                      }
                      if(indexQuestion<tempbank.length-1){
                      indexQuestion++;
                      }
                      else{
                        Navigator.pushNamed(context, 'scoreScreen',arguments: [score,tempbank.length,userName]);
                      }
                    });
                  },
                  title:Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(188, 88, 12, 88),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(tempbank[indexQuestion]['answers'][tempindex]['ans'],style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                        ),),
                      ),
                    ),
                  ),)
                ),
            ),
            ]),
          ),
        ),),
      ),
    );
  }
}
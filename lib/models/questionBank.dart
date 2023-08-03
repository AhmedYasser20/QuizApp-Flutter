import 'package:quizapp/models/question.dart';

class questionBank {
  List<question> SportBank=[
    question(ans: true, id: 1 ,questionText: 'Soccer is also known as football in some countries'),
    question(ans: false, id: 2 ,questionText: 'The Olympic Games are held every two years'),
    question(ans: true, id: 3 ,questionText: 'Michael Jordan is considered one of the greatest basketball players of all time'),
    question(ans: true, id: 4 ,questionText: 'The Super Bowl is the championship game of the National Football League (NFL)'),
    question(ans: true, id: 5 ,questionText: 'Usain Bolt holds the world record for the fastest 100-meter dash'),
  ];
  List<question> MathBank=[
    question(ans: true, id: 1 ,questionText: 'The sum of the angles in a triangle is 180 degrees.'),
    question(ans: true, id: 2 ,questionText: 'A prime number is a natural number greater than 1 that has no positive divisors other than 1 and itself'),
    question(ans: true, id: 3 ,questionText: 'The square root of 81 is 9'),
    question(ans: true, id: 4 ,questionText: 'The formula to find the area of a rectangle is length × width.'),
    question(ans: true, id: 5 ,questionText: 'The equation y = 2x + 5 represents a linear function'),
  ];
   List<question> HistoryBank=[
    question(ans: true, id: 1 ,questionText: 'The Renaissance: Cultural rebirth in Europe.'),
    question(ans: true, id: 2 ,questionText: 'American Revolution: Independence from Britain, 1776'),
    question(ans: true, id: 3 ,questionText: 'World War II: Global conflict, 1939-1945.'),
    question(ans: true, id: 4 ,questionText: 'Ancient Egypt: Pharaohs and pyramids.'),
    question(ans: true, id: 5 ,questionText: 'Industrial Revolution: Technological transformation, 18th century.'),
  ];
  List<question> ScienceBank=[
     question(ans: false, id: 1 ,questionText: 'The Earth is the only planet in our solar system with liquid water on its surface'),
    question(ans: true, id: 2 ,questionText: 'Photosynthesis is a process that converts carbon dioxide and water into oxygen and glucose using sunlight'),
    question(ans: false, id: 3 ,questionText: 'The chemical symbol for water is "HO."'),
    question(ans: true, id: 4 ,questionText: 'The human heart has four chambers: two atria and two ventricles.'),
    question(ans: false, id: 5 ,questionText: 'DNA is made up of a single strand of nucleotides.'),
  ];
 
  int _index=0;
  question GetQuestion(int type){
   if(type==0){
    return SportBank[_index];
   }
   else if(type==1){
    return MathBank[_index];
   }
   else if(type==2){
    return HistoryBank[_index];
   }
   else{
    return ScienceBank[_index];
   }
  }
  int mov(){
    _index++;
    if(_index>=5){
      _index=0;
      return 0;
    }
    return 1;
  }
  int getindex(){
    return _index+1;
  }
}

List<Map<String, dynamic>>sportTest  = [
  /// map of first question and his answers and the score of each answer

  {
    "question": "How many teams had won the world cup",
    "answers":
     [
      {"ans": "8 Teams", "score": 1},
      {"ans": "10 Teams", "score": 0},
      {"ans": "12 Teams", "score": 0},
      {"ans": "14 Teams", "score": 0},
      {"ans": "14 Teams", "score": 0},
      {"ans": "14 Teams", "score": 0},
      {"ans": "14 Teams", "score": 0},
    ]
  },

/////

  {
    "question": "How many time world cup takeplace in 12 years",
    "answers": [
      {"ans": "2 times", "score": 0},
      {"ans": "3 times", "score": 1},
      {"ans": "4 times", "score": 0},
      {"ans": "5 times", "score": 0},
    ]
  },

  /// map of second question and his answers and the score of each answer

  {
    "question": "who is the best player in history",
    "answers": [
      {"ans": "Messi", "score": 0},
      {"ans": "Messi", "score": 0},
      {"ans": "Messi", "score": 0},
      {"ans": "Mohamed Abdelghani", "score": 1},
    ]
  },

  {
    "question": "who is the best player in history",
    "answers": [
      {"ans": "Messi", "score": 0},
      {"ans": "Messi", "score": 0},
      {"ans": "Messi", "score": 0},
      {"ans": "Mohamed Abdelghani", "score": 1},
    ]
  },
  {
    "question": "who is the best player in history",
    "answers": [
      {"ans": "Messi", "score": 0},
      {"ans": "Messi", "score": 0},
      {"ans": "Messi", "score": 0},
      {"ans": "Mohamed Abdelghani", "score": 1},
    ]
  },
  {
    "question": "who is the best player in history",
    "answers": [

      {"ans": "Messi", "score": 0},
      {"ans": "Mohamed Abdelghani", "score": 1},
    ]
  },
  {
    "question": "who is the best player in history",
    "answers": [
      {"ans": "Messi", "score": 0},
      {"ans": "Messi", "score": 0},
      {"ans": "Messi", "score": 0},
      {"ans": "Mohamed Abdelghani", "score": 1},
    ]
  },
];

List<Map<String, dynamic>>mathTest  = [
  /// map of first question and his answers and the score of each answer

  {
    "question": " What is the value of π (pi) correct to two decimal places?",
    "answers":
     [
      {"ans": "3.14", "score": 1},
      {"ans": "5.21", "score": 0},
      {"ans": "3.16", "score": 0},
      {"ans": "3.15", "score": 0},
      {"ans": "2.25", "score": 0},
     
    ]
  },


  {
    "question": "Which of the following is an odd number?",
    "answers": [
      {"ans": "10", "score": 0},
      {"ans": "7", "score": 1},
      {"ans": "4", "score": 0},
      {"ans": "5", "score": 0},
    ]
  },

  /// map of second question and his answers and the score of each answer

  {
    "question": "If a = 4 and b = 3, what is the value of a^2 + b^2?",
    "answers": [
      {"ans": "25", "score": 1},
      {"ans": "40", "score": 0},
      {"ans": "17", "score": 0},
      {"ans": "25", "score": 0},
      {"ans": "45", "score": 0},
    ]
  },
  {
    "question": "What is the product of 9 and 7?",
    "answers": [
      {"ans": "63", "score": 1},
      {"ans": "24", "score": 0},
      {"ans": "21", "score": 0},
      {"ans": "300", "score": 0},
    ]
  },

];


List<Map<String, dynamic>>historyTest  = [
  /// map of first question and his answers and the score of each answer

  {
    "question": "Which ancient civilization built the Great Pyramid of Giza?",
    "answers":
     [
      {"ans": "Greek", "score": 0},
      {"ans": "Roman", "score": 0},
      {"ans": "Egyptian", "score": 1},
    
     
    ]
  },


  {
    "question": " The French Revolution began in which year?",
    "answers": [
     
      {"ans": "1789", "score": 1},
      {"ans": "1804", "score": 0},
      
    ]
  },

  /// map of second question and his answers and the score of each answer

  {
    "question": "The Declaration of Independence was adopted in which year?",
    "answers": [
      {"ans": "1776", "score": 1},
      {"ans": "1787", "score": 0},
      {"ans": "1765", "score": 0},
      {"ans": "1800", "score": 0},
    ]
  },
  {
    "question": "Who was the first female Prime Minister of the United Kingdom?",
    "answers": [
      {"ans": "Angela Merkel", "score": 0},
      {"ans": "Margaret Thatcher", "score": 1},
      {"ans": "Indira Gandhi", "score": 0},
      {"ans": "Theresa May", "score": 0},
      {"ans": "mohamed salah", "score": 0},
    ]
  },

  {
    "question": "The ancient city of Rome was the capital of which empire?",
    "answers": [
      {"ans": "Ottoman Empire", "score": 0},
      {"ans": "Persian Empire", "score": 0},
      {"ans": "Roman Empire", "score": 1},
      {"ans": "Byzantine Empire", "score": 0},
    ]
  },

];

List<Map<String, dynamic>> ScienceTest  = [
  /// map of first question and his answers and the score of each answer

  {
    "question": "What is the chemical symbol for water?",
    "answers":
     [
      {"ans": "Wo", "score": 0},
      {"ans": "CO2", "score": 0},
      {"ans": "H2O", "score": 1},
    
     
    ]
  },


  {
    "question": "What is the process by which plants convert sunlight into energy?",
    "answers": [
     
      {"ans": "Photosynthesis", "score": 1},
      {"ans": "Oxidation", "score": 0},
      
    ]
  },

  /// map of second question and his answers and the score of each answer

  {
    "question": "Which of the following is a primary color of light?",
    "answers": [
      {"ans": "Red", "score": 0},
      {"ans": "Green", "score": 1},
      {"ans": "Yellow", "score": 0},
      {"ans": "Black", "score": 0},
    ]
  },
  {
    "question": "Which subatomic particle has a positive charge?",
    "answers": [
      {"ans": "Electron", "score": 0},
      {"ans": "Proton", "score": 1},
      {"ans": "Neutron", "score": 0},
      {"ans": "Photon", "score": 0},
    ]
  },

  {
    "question": "What is the chemical formula for table salt?",
    "answers": [
      {"ans": "HaCl", "score": 0},
      {"ans": "FeCo2", "score": 0},
      {"ans": "NaCl", "score": 1},
      {"ans": "FeCu2", "score": 0},
    ]
  },

  {
    "question": "Which planet is known as the Red Planet?",
    "answers": [
     
      {"ans": "mercury", "score": 0},
      {"ans": "mars", "score": 1},
      
    ]
  },
];
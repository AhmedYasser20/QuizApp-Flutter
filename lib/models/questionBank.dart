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

List<Map<String, dynamic>> sportTest = [
  {
    "question": "Which country won the FIFA World Cup in 2018?",
    "answers": [
      {"ans": "Brazil", "score": 0},
      {"ans": "Germany", "score": 0},
      {"ans": "France", "score": 1},
      {"ans": "Spain", "score": 0},
    ]
  },
  {
    "question": "In which sport would you perform a slam dunk?",
    "answers": [
      {"ans": "Soccer", "score": 0},
      {"ans": "Basketball", "score": 1},
      {"ans": "Tennis", "score": 0},
      {"ans": "Golf", "score": 0},
    ]
  },
  {
    "question": "Who holds the record for the most home runs in Major League Baseball (MLB) history?",
    "answers": [
      {"ans": "Babe Ruth", "score": 0},
      {"ans": "Hank Aaron", "score": 0},
      {"ans": "Barry Bonds", "score": 1},
      {"ans": "Willie Mays", "score": 0},
    ]
  },
  {
    "question": "Which country is known for its dominance in cricket and is home to the Indian Premier League (IPL)?",
    "answers": [
      {"ans": "Australia", "score": 0},
      {"ans": "England", "score": 0},
      {"ans": "India", "score": 1},
      {"ans": "South Africa", "score": 0},
    ]
  },
  {
    "question": "Who is often referred to as 'The Greatest' and was a legendary boxer known for his charisma and skills?",
    "answers": [
      {"ans": "Mike Tyson", "score": 0},
      {"ans": "Muhammad Ali", "score": 1},
      {"ans": "Floyd Mayweather", "score": 0},
      {"ans": "Joe Frazier", "score": 0},
    ]
  },
];



List<Map<String, dynamic>> mathTest = [
  {
    "question": "What is the result of 6 multiplied by 8?",
    "answers": [
      {"ans": "42", "score": 0},
      {"ans": "48", "score": 1},
      {"ans": "56", "score": 0},
      {"ans": "64", "score": 0},
    ]
  },
  {
    "question": "If x = 5 and y = 3, what is the value of 2x + 3y?",
    "answers": [
      {"ans": "11", "score": 1},
      {"ans": "15", "score": 0},
      {"ans": "18", "score": 0},
      {"ans": "23", "score": 0},
    ]
  },
  {
    "question": "What is the square root of 144?",
    "answers": [
      {"ans": "11", "score": 0},
      {"ans": "12", "score": 1},
      {"ans": "13", "score": 0},
      {"ans": "14", "score": 0},
    ]
  },
  {
    "question": "If a car travels at a speed of 60 miles per hour, how far will it travel in 2.5 hours?",
    "answers": [
      {"ans": "125 miles", "score": 0},
      {"ans": "150 miles", "score": 1},
      {"ans": "175 miles", "score": 0},
      {"ans": "200 miles", "score": 0},
    ]
  },
  {
    "question": "What is the result of 15 divided by 3?",
    "answers": [
      {"ans": "3", "score": 0},
      {"ans": "5", "score": 1},
      {"ans": "7", "score": 0},
      {"ans": "10", "score": 0},
    ]
  },
  {
    "question": "If a rectangle has a length of 12 units and a width of 8 units, what is its area?",
    "answers": [
      {"ans": "80 square units", "score": 0},
      {"ans": "96 square units", "score": 1},
      {"ans": "104 square units", "score": 0},
      {"ans": "120 square units", "score": 0},
    ]
  },
  {
    "question": "What is the next prime number after 19?",
    "answers": [
      {"ans": "20", "score": 0},
      {"ans": "21", "score": 0},
      {"ans": "23", "score": 1},
      {"ans": "25", "score": 0},
    ]
  },
  {
    "question": "If a box contains 24 chocolates, and you take out 5, how many chocolates are left in the box?",
    "answers": [
      {"ans": "15", "score": 0},
      {"ans": "16", "score": 0},
      {"ans": "19", "score": 1},
      {"ans": "20", "score": 0},
    ]
  },
  {
    "question": "What is the result of 9 squared (9^2)?",
    "answers": [
      {"ans": "81", "score": 1},
      {"ans": "64", "score": 0},
      {"ans": "72", "score": 0},
      {"ans": "90", "score": 0},
    ]
  },
  {
    "question": "If a store offers a 20% discount on a \$50 item, how much will the item cost after the discount?",
    "answers": [
      {"ans": "\$35", "score": 0},
      {"ans": "\$40", "score": 0},
      {"ans": "\$45", "score": 1},
      {"ans": "\$50", "score": 0},
    ]
  },
];

List<Map<String, dynamic>> historyTest = [
  {
    "question": "Who is known as the 'Father of the United States' for his role in drafting the U.S. Constitution?",
    "answers": [
      {"ans": "George Washington", "score": 0},
      {"ans": "Benjamin Franklin", "score": 0},
      {"ans": "Thomas Jefferson", "score": 0},
      {"ans": "James Madison", "score": 1},
    ]
  },
  {
    "question": "Which ancient civilization is credited with inventing the system of writing known as cuneiform?",
    "answers": [
      {"ans": "Greek", "score": 0},
      {"ans": "Roman", "score": 0},
      {"ans": "Sumerian", "score": 1},
      {"ans": "Egyptian", "score": 0},
    ]
  },
  {
    "question": "The Magna Carta, signed in 1215, is considered a foundational document for which principle of modern governance?",
    "answers": [
      {"ans": "Absolute monarchy", "score": 0},
      {"ans": "Constitutional monarchy", "score": 0},
      {"ans": "Rule of law", "score": 1},
      {"ans": "Divine right of kings", "score": 0},
    ]
  },
  {
    "question": "In what year did Christopher Columbus first arrive in the Americas?",
    "answers": [
      {"ans": "1492", "score": 1},
      {"ans": "1517", "score": 0},
      {"ans": "1620", "score": 0},
      {"ans": "1776", "score": 0},
    ]
  },
  {
    "question": "Who was the leader of the Soviet Union during the Cuban Missile Crisis in 1962?",
    "answers": [
      {"ans": "Joseph Stalin", "score": 0},
      {"ans": "Nikita Khrushchev", "score": 1},
      {"ans": "Vladimir Putin", "score": 0},
      {"ans": "Leon Trotsky", "score": 0},
    ]
  },
  {
    "question": "The historical event known as 'D-Day' occurred during which major conflict?",
    "answers": [
      {"ans": "World War I", "score": 0},
      {"ans": "Cold War", "score": 0},
      {"ans": "Vietnam War", "score": 0},
      {"ans": "World War II", "score": 1},
    ]
  },
  {
    "question": "Who was the first woman to fly solo across the Atlantic Ocean?",
    "answers": [
      {"ans": "Amelia Earhart", "score": 1},
      {"ans": "Bessie Coleman", "score": 0},
      {"ans": "Harriet Quimby", "score": 0},
      {"ans": "Jacqueline Cochran", "score": 0},
    ]
  },
  {
    "question": "Which Egyptian queen is known for her romantic relationships with Julius Caesar and Mark Antony?",
    "answers": [
      {"ans": "Cleopatra", "score": 1},
      {"ans": "Nefertiti", "score": 0},
      {"ans": "Hatshepsut", "score": 0},
      {"ans": "Nefertari", "score": 0},
    ]
  },
  {
    "question": "The historical event known as the 'Boston Tea Party' took place in which year?",
    "answers": [
      {"ans": "1754", "score": 0},
      {"ans": "1773", "score": 1},
      {"ans": "1787", "score": 0},
      {"ans": "1800", "score": 0},
    ]
  },
  {
    "question": "Who was the first African American to serve as President of the United States?",
    "answers": [
      {"ans": "Malcolm X", "score": 0},
      {"ans": "Nelson Mandela", "score": 0},
      {"ans": "Barack Obama", "score": 1},
      {"ans": "Martin Luther King Jr.", "score": 0},
    ]
  },
];


List<Map<String, dynamic>> ScienceTest = [
  {
    "question": "What is the chemical symbol for oxygen?",
    "answers": [
      {"ans": "O", "score": 1},
      {"ans": "O2", "score": 0},
      {"ans": "H2O", "score": 0},
      {"ans": "C", "score": 0},
    ]
  },
  {
    "question": "What is the process by which plants convert carbon dioxide and water into glucose and oxygen?",
    "answers": [
      {"ans": "Respiration", "score": 0},
      {"ans": "Photosynthesis", "score": 1},
      {"ans": "Fermentation", "score": 0},
      {"ans": "Combustion", "score": 0},
    ]
  },
  {
    "question": "Which gas is most abundant in Earth's atmosphere?",
    "answers": [
      {"ans": "Oxygen (O2)", "score": 0},
      {"ans": "Carbon dioxide (CO2)", "score": 0},
      {"ans": "Nitrogen (N2)", "score": 1},
      {"ans": "Argon (Ar)", "score": 0},
    ]
  },
  {
    "question": "What is the smallest unit of matter?",
    "answers": [
      {"ans": "Atom", "score": 1},
      {"ans": "Molecule", "score": 0},
      {"ans": "Cell", "score": 0},
      {"ans": "Element", "score": 0},
    ]
  },
  {
    "question": "What is the chemical formula for water?",
    "answers": [
      {"ans": "Wo", "score": 0},
      {"ans": "CO2", "score": 0},
      {"ans": "H2O", "score": 1},
      {"ans": "O3", "score": 0},
    ]
  },
  {
    "question": "What is the process by which heat is transferred through a material without any movement of the material itself?",
    "answers": [
      {"ans": "Conduction", "score": 1},
      {"ans": "Convection", "score": 0},
      {"ans": "Radiation", "score": 0},
      {"ans": "Evaporation", "score": 0},
    ]
  },
  {
    "question": "Which planet is known as the 'Red Planet'?",
    "answers": [
      {"ans": "Mercury", "score": 0},
      {"ans": "Venus", "score": 0},
      {"ans": "Mars", "score": 1},
      {"ans": "Jupiter", "score": 0},
    ]
  },
  {
    "question": "What is the chemical symbol for gold?",
    "answers": [
      {"ans": "Au", "score": 1},
      {"ans": "Ag", "score": 0},
      {"ans": "Fe", "score": 0},
      {"ans": "Pt", "score": 0},
    ]
  },
  {
    "question": "What is the process by which plants release water vapor into the atmosphere through tiny openings in their leaves?",
    "answers": [
      {"ans": "Photosynthesis", "score": 0},
      {"ans": "Respiration", "score": 0},
      {"ans": "Transpiration", "score": 1},
      {"ans": "Condensation", "score": 0},
    ]
  },
  {
    "question": "Which gas is commonly used in balloons to make them float in the air?",
    "answers": [
      {"ans": "Oxygen (O2)", "score": 0},
      {"ans": "Carbon dioxide (CO2)", "score": 0},
      {"ans": "Helium (He)", "score": 1},
      {"ans": "Hydrogen (H2)", "score": 0},
    ]
  },
];

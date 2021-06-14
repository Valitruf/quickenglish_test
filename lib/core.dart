import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('My girlfriend and I live together. ... house is on Smith Street.', true),
    Question('Taylor is ... in the running club.', false),
    Question('My uncle lives ... Canada.', true),
    Question('"... your husband do?"-- "He\'s a doctor."', true),
    Question('"How old is your dad?" -- He\'s ... ."', true),
    Question('... did you find the answer?" -- "I looked on the Internet.', true),
    Question('My brother ... football after school every day.', false),
    Question('My teacher ... angry yesterday.', true),
    Question('My friend Mike lives near my house. ... often play outside together.', false),
    Question('"Do you have a brother?" -- "No, ... ."', true),
    Question('John made a sandwich ... he was hungry.', true),
    Question('Lisa, where ... you go to school?"', true),
    Question('My brother ... football after school every day.', true),
    Question('Taylor is ... in the running club.', true),
    Question('"Bob, would you like ... a piece of cake?"', true),
    Question('I don\'t want ... bed. I\'m not tired.', true),
    Question('"... your parents home?"', true),
    Question('"... your husband do?"-- "He\'s a doctor."', true),
    Question('My grandparents live in the countryside. ... have a big garden.', true),

  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
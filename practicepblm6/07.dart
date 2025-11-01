import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;

  Question(this.questionText, this.options, this.correctAnswerIndex);
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    print('🧠 Welcome to the Quiz!\n');
    for (int i = 0; i < questions.length; i++) {
      var q = questions[i];
      print('Q${i + 1}: ${q.questionText}');
      for (int j = 0; j < q.options.length; j++) {
        print('${j + 1}. ${q.options[j]}');
      }

      stdout.write('Enter your answer (1-${q.options.length}): ');
      int? ans = int.tryParse(stdin.readLineSync() ?? '');

      if (ans == q.correctAnswerIndex + 1) {
        print('✅ Correct!\n');
        score++;
      } else {
        print('❌ Wrong! The correct answer was ${q.options[q.correctAnswerIndex]}\n');
      }
    }

    print('🎯 Your final score: $score / ${questions.length}');
  }
}

void main() {
  List<Question> quizQuestions = [
    Question('What is the capital of Bangladesh?', ['Dhaka', 'Sylhet', 'Chittagong', 'Khulna'], 0),
    Question('Who developed Dart language?', ['Apple', 'Microsoft', 'Google', 'Oracle'], 2),
    Question('Which symbol is used for comments in Dart?', ['//', '#', '/* */', '<!-- -->'], 0),
  ];

  Quiz quiz = Quiz(quizQuestions);
  quiz.start();
}

// ChiragGupta.com

struct SpeechMultiChoiceQuestion {
  let text: String
  let speech: String
  let answerChoices: [AnswerChoice]
}

extension SpeechMultiChoiceQuestion {
  static var questions: [SpeechMultiChoiceQuestion] {
    [
      SpeechMultiChoiceQuestion(text: "khaana", speech: "खाना", answerChoices: [
        AnswerChoice(answer: "Food", isCorrect: true),
        AnswerChoice(answer: "Drink", isCorrect: false)
      ]),
      SpeechMultiChoiceQuestion(text: "chaaval", speech: "चावल", answerChoices: [
        AnswerChoice(answer: "Wheat", isCorrect: false),
        AnswerChoice(answer: "Rice", isCorrect: true)
      ])
    ]
  }
}

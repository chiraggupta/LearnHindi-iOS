// ChiragGupta.com

struct SpeechMultiChoiceQuestion {
  let text: String
  let speech: String
  let answerOptions: [AnswerOption]
}

extension SpeechMultiChoiceQuestion {
  static var questions: [SpeechMultiChoiceQuestion] {
    [
      SpeechMultiChoiceQuestion(text: "khaana", speech: "खाना", answerOptions: [
        AnswerOption(answer: "Food", isCorrect: true),
        AnswerOption(answer: "Drink", isCorrect: false)
      ])
    ]
  }
}

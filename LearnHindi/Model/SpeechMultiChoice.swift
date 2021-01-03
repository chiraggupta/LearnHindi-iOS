// ChiragGupta.com

struct SpeechMultiChoice {
  let text: String
  let speech: String
  let answerOptions: [AnswerOption]
}

extension SpeechMultiChoice {
  static var data: [SpeechMultiChoice] {
    [
      SpeechMultiChoice(text: "khaana", speech: "खाना", answerOptions: [
        AnswerOption(answer: "Food", isCorrect: true),
        AnswerOption(answer: "Drink", isCorrect: false)
      ])
    ]
  }
}

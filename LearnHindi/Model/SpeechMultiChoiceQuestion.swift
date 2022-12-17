// ChiragGupta.com

struct SpeechMultiChoiceQuestion {
  let text: String
  let speech: String
  let answerChoices: [AnswerChoice]
}

extension SpeechMultiChoiceQuestion {
  static var questions: [SpeechMultiChoiceQuestion] {
    [
      SpeechMultiChoiceQuestion(text: "ladaka", speech: "लड़का", answerChoices: [
        AnswerChoice(answer: "Boy", isCorrect: true),
        AnswerChoice(answer: "Girl", isCorrect: false)
      ]),
      SpeechMultiChoiceQuestion(text: "ladakee", speech: "लड़की", answerChoices: [
        AnswerChoice(answer: "Boy", isCorrect: false),
        AnswerChoice(answer: "Girl", isCorrect: true)
      ]),
      SpeechMultiChoiceQuestion(text: "aadmee", speech: "आदमी", answerChoices: [
        AnswerChoice(answer: "Man", isCorrect: true),
        AnswerChoice(answer: "Woman", isCorrect: false)
      ]),
      SpeechMultiChoiceQuestion(text: "aurat", speech: "औरत", answerChoices: [
        AnswerChoice(answer: "Man", isCorrect: false),
        AnswerChoice(answer: "Woman", isCorrect: true)
      ]),
      SpeechMultiChoiceQuestion(text: "paani", speech: "पानी", answerChoices: [
        AnswerChoice(answer: "Milk", isCorrect: false),
        AnswerChoice(answer: "Water", isCorrect: true)
      ]),
      SpeechMultiChoiceQuestion(text: "doodh", speech: "दूध", answerChoices: [
        AnswerChoice(answer: "Milk", isCorrect: true),
        AnswerChoice(answer: "Water", isCorrect: false)
      ]),
      SpeechMultiChoiceQuestion(text: "peena", speech: "पीना", answerChoices: [
        AnswerChoice(answer: "Eat", isCorrect: false),
        AnswerChoice(answer: "Drink", isCorrect: true)
      ]),
      SpeechMultiChoiceQuestion(text: "chaaval", speech: "चावल", answerChoices: [
        AnswerChoice(answer: "Bread", isCorrect: false),
        AnswerChoice(answer: "Rice", isCorrect: true)
      ])
    ]
  }
}

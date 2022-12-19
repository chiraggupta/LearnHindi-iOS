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
      SpeechMultiChoiceQuestion(text: "khaana", speech: "खाना", answerChoices: [
        AnswerChoice(answer: "Food", isCorrect: true),
        AnswerChoice(answer: "Drink", isCorrect: false)
      ]),
      SpeechMultiChoiceQuestion(text: "chaaval", speech: "चावल", answerChoices: [
        AnswerChoice(answer: "Bread", isCorrect: false),
        AnswerChoice(answer: "Rice", isCorrect: true)
      ]),
      SpeechMultiChoiceQuestion(text: "anda", speech: "अंडा", answerChoices: [
        AnswerChoice(answer: "Bread", isCorrect: false),
        AnswerChoice(answer: "Egg", isCorrect: true)
      ]),
      SpeechMultiChoiceQuestion(text: "sabzi", speech: "सब्ज़ी", answerChoices: [
        AnswerChoice(answer: "Fruit", isCorrect: false),
        AnswerChoice(answer: "Vegetable", isCorrect: true)
      ]),
      SpeechMultiChoiceQuestion(text: "fal", speech: "फल", answerChoices: [
        AnswerChoice(answer: "Fruit", isCorrect: true),
        AnswerChoice(answer: "Vegetable", isCorrect: false)
      ]),
      SpeechMultiChoiceQuestion(text: "kapda", speech: "कपड़ा", answerChoices: [
        AnswerChoice(answer: "Cloth", isCorrect: true),
        AnswerChoice(answer: "Shoe", isCorrect: false)
      ]),
      SpeechMultiChoiceQuestion(text: "joota", speech: "जूता", answerChoices: [
        AnswerChoice(answer: "Cloth", isCorrect: false),
        AnswerChoice(answer: "Shoe", isCorrect: true)
      ]),
      SpeechMultiChoiceQuestion(text: "haath", speech: "हाथ", answerChoices: [
        AnswerChoice(answer: "Hand", isCorrect: true),
        AnswerChoice(answer: "Leg", isCorrect: false)
      ]),
      SpeechMultiChoiceQuestion(text: "paer", speech: "पैर", answerChoices: [
        AnswerChoice(answer: "Hand", isCorrect: false),
        AnswerChoice(answer: "Leg", isCorrect: true)
      ])
    ]
  }
}

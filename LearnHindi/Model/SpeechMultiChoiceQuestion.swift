// ChiragGupta.com

struct SpeechMultiChoiceQuestion {
  let questionText: String
  let questionSpeech: String
  let answerChoices: [String]
  let answer: String
}

extension SpeechMultiChoiceQuestion {
  static var questions: [SpeechMultiChoiceQuestion] {
    [
      SpeechMultiChoiceQuestion(questionText: "ladaka", questionSpeech: "लड़का", answerChoices: ["Boy","Girl"], answer: "Boy"),
      SpeechMultiChoiceQuestion(questionText: "ladakee", questionSpeech: "लड़की", answerChoices: ["Boy","Girl"], answer: "Girl"),
      SpeechMultiChoiceQuestion(questionText: "aadmee", questionSpeech: "आदमी", answerChoices: ["Man","Woman"], answer: "Man"),
      SpeechMultiChoiceQuestion(questionText: "aurat", questionSpeech: "औरत", answerChoices: ["Man","Woman"], answer: "Woman"),
      SpeechMultiChoiceQuestion(questionText: "paani", questionSpeech: "पानी", answerChoices: ["Milk","Water"], answer: "Water"),
      SpeechMultiChoiceQuestion(questionText: "doodh", questionSpeech: "दूध", answerChoices: ["Milk","Water"], answer: "Milk"),
      SpeechMultiChoiceQuestion(questionText: "peena", questionSpeech: "पीना", answerChoices: ["Eat","Drink"], answer: "Drink"),
      SpeechMultiChoiceQuestion(questionText: "khaana", questionSpeech: "खाना", answerChoices: ["Food","Drink"], answer: "Food"),
      SpeechMultiChoiceQuestion(questionText: "chaaval", questionSpeech: "चावल", answerChoices: ["Bread","Rice"], answer: "Rice"),
      SpeechMultiChoiceQuestion(questionText: "anda", questionSpeech: "अंडा", answerChoices: ["Bread","Egg"], answer: "Egg"),
      SpeechMultiChoiceQuestion(questionText: "sabzi", questionSpeech: "सब्ज़ी", answerChoices: ["Fruit","Vegetable"], answer: "Vegetable"),
      SpeechMultiChoiceQuestion(questionText: "fal", questionSpeech: "फल", answerChoices: ["Fruit","Vegetable"], answer: "Fruit"),
      SpeechMultiChoiceQuestion(questionText: "kapda", questionSpeech: "कपड़ा", answerChoices: ["Cloth","Shoe"], answer: "Cloth"),
      SpeechMultiChoiceQuestion(questionText: "joota", questionSpeech: "जूता", answerChoices: ["Cloth","Shoe"], answer: "Shoe"),
      SpeechMultiChoiceQuestion(questionText: "haath", questionSpeech: "हाथ", answerChoices: ["Hand","Leg"], answer: "Hand"),
      SpeechMultiChoiceQuestion(questionText: "paer", questionSpeech: "पैर", answerChoices: ["Hand","Leg"], answer: "Leg")
    ]
  }
}

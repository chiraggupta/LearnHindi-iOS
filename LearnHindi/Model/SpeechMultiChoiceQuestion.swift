// ChiragGupta.com

struct SpeechMultiChoiceQuestion: Codable {
  let questionText: String
  let questionSpeech: String
  let answerChoices: [String]
  let answer: String
}

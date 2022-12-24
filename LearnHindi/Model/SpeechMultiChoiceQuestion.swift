// ChiragGupta.com

struct SpeechMultiChoiceQuestion: Codable {
  var questionText: String
  var questionSpeech: String
  var answerChoices: [String]
  var answer: String
}

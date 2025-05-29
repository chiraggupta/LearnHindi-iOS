// ChiragGupta.com

struct SpeechMultiChoiceQuestion: Codable {
  enum Include: String, Codable {
    case always
    case sometimes
  }
  
  let questionText: String
  let questionSpeech: String
  let answerChoices: [String]
  let answer: String
  let include: Include
}

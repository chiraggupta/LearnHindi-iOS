// ChiragGupta.com

import Foundation

struct SpeechMultiChoiceQuestionsData: Codable {
  private let questions: [SpeechMultiChoiceQuestion]
  
  func getRandomQuestions(count: Int) -> [SpeechMultiChoiceQuestion] {
    return Array(questions.shuffled()[..<count])
  }
}

extension SpeechMultiChoiceQuestionsData {
  init(file: String) {
    guard let url = Bundle.main.url(forResource: file, withExtension: "") else {
      fatalError("Failed to locate \(file) in bundle.")
    }
    
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(file) from bundle.")
    }
    
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    
    do {
      self = try decoder.decode(Self.self, from: data)
    } catch DecodingError.keyNotFound(_, let context), DecodingError.typeMismatch(_, let context), DecodingError.valueNotFound(_, let context) {
      fatalError(context.debugDescription)
    } catch {
      fatalError(error.localizedDescription)
    }
  }
}

extension SpeechMultiChoiceQuestionsData {
  static func sampleQuestions() -> [SpeechMultiChoiceQuestion] {
    return [
      SpeechMultiChoiceQuestion(questionText: "ladaka", questionSpeech: "लड़का", answerChoices: ["Boy","Girl"], answer: "Boy"),
      SpeechMultiChoiceQuestion(questionText: "ladakee", questionSpeech: "लड़की", answerChoices: ["Boy","Girl"], answer: "Girl")
    ]
  }
}

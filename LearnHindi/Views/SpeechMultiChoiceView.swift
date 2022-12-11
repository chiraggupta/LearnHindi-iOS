// ChiragGupta.com

import SwiftUI
import AVFoundation

struct SpeechMultiChoiceView: View {
  let questions: [SpeechMultiChoiceQuestion]
  
  @State private var currentQuestionIndex = 0
  private var currentQuestion: SpeechMultiChoiceQuestion {
    return questions[currentQuestionIndex]
  }
  
  @State private var resultIsCorrect: Bool?
  private var resultText: String {
    guard let resultIsCorrect = resultIsCorrect else {
      return " "
    }
    return resultIsCorrect ? "Correct Answer ✅" : "Try again ❌"
  }

  let hindiSpeechSynthesizer = AVSpeechSynthesizer()
  
  var body: some View {
    VStack {
      
      Spacer()
      Text("Translate")
        .font(.title)
      HStack {
        Button(action: {
          speakHindiText()
        }) {
          Text(currentQuestion.text)
          Image(systemName: "speaker.wave.3")
        }
        .font(.largeTitle)
        .foregroundColor(.white)
        .padding()
        .background(Color.orange)
        .cornerRadius(10)
      }
      
      Spacer()
      ForEach(currentQuestion.answerChoices, id: \.answer) { answerOption in
        Button(action: {
          resultIsCorrect = answerOption.isCorrect
        }) {
          Text(answerOption.answer)
        }
        .font(.largeTitle)
        .foregroundColor(.white)
        .padding()
        .background(Color.accentColor)
        .cornerRadius(10)
      }
      
      Spacer()
      Text(resultText)
        .font(.largeTitle)
        .animation(.default, value: resultText)
      
      Spacer()
      Button(action: {
        if resultIsCorrect != nil && resultIsCorrect == true && currentQuestionIndex < questions.count - 1 {
          currentQuestionIndex = currentQuestionIndex + 1
          resultIsCorrect = nil
        }
      }) {
        Text("Next")
      }
      .font(.title3)
      .disabled(!(resultIsCorrect ?? false))
    }
  }
  
  func speakHindiText() {
    let utterance = AVSpeechUtterance(string: currentQuestion.speech)
    utterance.voice = AVSpeechSynthesisVoice(language: "hi-IN")
    utterance.rate = AVSpeechUtteranceDefaultSpeechRate * 0.9
    
    hindiSpeechSynthesizer.speak(utterance)
  }
}

struct HindiSpeechCard_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      SpeechMultiChoiceView(questions: SpeechMultiChoiceQuestion.questions)
        .navigationTitle("Learn Hindi 🇮🇳")
    }
  }
}

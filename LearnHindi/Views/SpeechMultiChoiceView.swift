// ChiragGupta.com

import SwiftUI
import AVFoundation

struct SpeechMultiChoiceView: View {
  let question: SpeechMultiChoiceQuestion
  let onNext: () -> Void
  
  @State private var resultIsCorrect: Bool?
  private var resultText: String {
    guard let resultIsCorrect = resultIsCorrect else {
      return " "
    }
    return resultIsCorrect ? "Correct Answer ✅" : "Try again ❌"
  }
  
  let speechController = SpeechController()
  
  var body: some View {
    VStack {
      
      Spacer()
      Text("Translate")
        .font(.title)
      HStack {
        Button(action: {
          speechController.speakHindiText(text: question.speech)
        }) {
          Text(question.text)
          Image(systemName: "speaker.wave.3")
        }
        .font(.largeTitle)
        .foregroundColor(.white)
        .padding()
        .background(Color.orange)
        .cornerRadius(10)
      }
      
      Spacer()
      ForEach(question.answerChoices, id: \.answer) { answerOption in
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
      
      Spacer()
      Button(action: {
        if resultIsCorrect != nil && resultIsCorrect == true {
          onNext()
        }
      }) {
        Text("Next")
      }
      .font(.title3)
      .disabled(!(resultIsCorrect ?? false))
    }
  }
}

struct HindiSpeechCard_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      SpeechMultiChoiceView(question: SpeechMultiChoiceQuestion.questions[0], onNext: {})
        .navigationTitle("Learn Hindi 🇮🇳")
    }
  }
}

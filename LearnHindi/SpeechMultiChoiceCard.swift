// ChiragGupta.com

import SwiftUI
import AVFoundation

struct SpeechMultiChoiceCard: View {
  let data: SpeechMultiChoice
  let hindiSpeechSynthesizer = AVSpeechSynthesizer()
  @State private var result = ""
  
  var body: some View {
    VStack {
      Spacer()
      Text("Translate")
        .font(.title)
      HStack {
        Button(action: {
          speakHindiText()
        }) {
          Text(data.text)
          Image(systemName: "speaker.wave.3")
        }
        .font(.largeTitle)
        .foregroundColor(.white)
        .padding()
        .background(Color.orange)
        .cornerRadius(10)
      }
      Spacer()
      Text(result)
        .font(.largeTitle)
      Spacer()
      ForEach(data.answerOptions, id: \.answer) { answerOption in
        Button(action: {
          result = answerOption.isCorrect ? "Correct Answer ✅" : "Try again ❌"
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
    }
  }
  
  func speakHindiText() {
    let utterance = AVSpeechUtterance(string: data.speech)
    utterance.voice = AVSpeechSynthesisVoice(language: "hi-IN")
    utterance.rate = AVSpeechUtteranceDefaultSpeechRate * 0.9
    
    hindiSpeechSynthesizer.speak(utterance)
  }
}

struct HindiSpeechCard_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      SpeechMultiChoiceCard(data: SpeechMultiChoice.data[0])
        .navigationTitle("Learn Hindi 🇮🇳")
    }
  }
}

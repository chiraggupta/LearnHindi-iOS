// ChiragGupta.com

import SwiftUI
import AVFoundation

struct SpeechMultiChoiceCard: View {
  let hindiSpeechSynthesizer = AVSpeechSynthesizer()
  let hindiText: String
  @State private var result = ""
  
  var body: some View {
    VStack {
      Spacer()
      Text("Translate")
        .font(.largeTitle)
      HStack {
        Button(action: {
          speakHindiText()
        }) {
          Text("khaana")
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
      Button(action: {
        result = "Correct Answer ✅"
      }) {
        Text("Food")
      }
      .font(.largeTitle)
      .foregroundColor(.white)
      .padding()
      .background(Color.accentColor)
      .cornerRadius(10)
      Button(action: {
        result = "Try again ❌"
      }) {
        Text("Drink")
      }
      .font(.largeTitle)
      .foregroundColor(.white)
      .padding()
      .background(Color.accentColor)
      .cornerRadius(10)
      Spacer()
    }
  }
  
  func speakHindiText() {
    let utterance = AVSpeechUtterance(string: hindiText)
    utterance.voice = AVSpeechSynthesisVoice(language: "hi-IN")
    utterance.rate = AVSpeechUtteranceDefaultSpeechRate * 0.9
    
    hindiSpeechSynthesizer.speak(utterance)
  }
}

struct HindiSpeechCard_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      SpeechMultiChoiceCard(hindiText: "हिंदी सीखिए")
        .navigationTitle("Learn Hindi 🇮🇳")
    }
  }
}

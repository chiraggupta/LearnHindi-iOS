import SwiftUI
import AVFoundation

struct ContentView: View {
  let mainButtonAction = {
    let utterance = AVSpeechUtterance(string: "हिंदी सीखिए")
    utterance.voice = AVSpeechSynthesisVoice(language: "hi-IN")
    utterance.rate = AVSpeechUtteranceDefaultSpeechRate * 0.9

    AVSpeechSynthesizer().speak(utterance)
  }
  
  var body: some View {
    Button("Learn Hindi 🇮🇳", action: mainButtonAction)
      .foregroundColor(.white)
      .padding()
      .font(.largeTitle)
      .background(Color.accentColor)
      .cornerRadius(8)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

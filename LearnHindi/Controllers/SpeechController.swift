// ChiragGupta.com

import AVFoundation

class SpeechController {
  let speechSynthesizer = AVSpeechSynthesizer()
  
  init() {
    do {
      try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
    } catch let error {
      print(error.localizedDescription)
    }
  }
  
  func speakHindiText(text: String) {
    let utterance = AVSpeechUtterance(string: text)
    utterance.voice = AVSpeechSynthesisVoice(language: "hi-IN")
    utterance.rate = AVSpeechUtteranceDefaultSpeechRate * 0.6
    
    speechSynthesizer.speak(utterance)
  }
}

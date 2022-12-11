// ChiragGupta.com

import AVFoundation

class SpeechController {
  let speechSynthesizer = AVSpeechSynthesizer()
  
  func speakHindiText(text: String) {
    let utterance = AVSpeechUtterance(string: text)
    utterance.voice = AVSpeechSynthesisVoice(language: "hi-IN")
    utterance.rate = AVSpeechUtteranceDefaultSpeechRate * 0.9
    
    speechSynthesizer.speak(utterance)
  }
}

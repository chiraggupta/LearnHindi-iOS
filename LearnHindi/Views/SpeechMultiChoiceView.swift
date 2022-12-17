// ChiragGupta.com

import SwiftUI
import AVFoundation

struct SpeechMultiChoiceView: View {
  let question: SpeechMultiChoiceQuestion
  let onNext: () -> Void
  
  @State private var resultIsCorrect: Bool = false
  @State private var showResult: Bool = false
  
  let speechController = SpeechController()
  
  var body: some View {
    VStack {
      
      Spacer()
      Text("Translate")
        .font(.title)
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
      .onAppear {
        speechController.speakHindiText(text: question.speech)
      }
      
      Spacer()
      ForEach(question.answerChoices, id: \.answer) { answerOption in
        Button(action: {
          resultIsCorrect = answerOption.isCorrect
          showResult = true
        }) {
          Text(answerOption.answer)
        }
        .font(.largeTitle)
        .foregroundColor(.white)
        .padding()
        .background(Color.accentColor)
        .cornerRadius(10)
      }
      .sheet(isPresented: $showResult) {
        ResultView(isCorrect: $resultIsCorrect, onNext: onNext)
          .presentationDetents([.fraction(0.15)])
      }
      Spacer()
      Spacer()
      Spacer()
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

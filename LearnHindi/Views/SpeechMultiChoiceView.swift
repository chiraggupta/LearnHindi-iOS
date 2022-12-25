// ChiragGupta.com

import SwiftUI
import AVFoundation

struct SpeechMultiChoiceView: View {
  let question: SpeechMultiChoiceQuestion
  let onNext: (Bool) -> Void
  
  @State private var resultIsCorrect: Bool = false
  @State private var showResult: Bool = false
  
  let speechController = SpeechController()
  
  var body: some View {
    VStack {
      Spacer()
      Text("Translate")
        .font(.title)
      Button(action: {
        speechController.speakHindiText(question.questionSpeech)
      }) {
        Text(question.questionText)
        Image(systemName: "speaker.wave.3")
      }
      .font(.largeTitle)
      .foregroundColor(.white)
      .padding()
      .background(.gray)
      .cornerRadius(10)
      .onAppear {
        speechController.speakHindiText(question.questionSpeech)
      }
      
      Spacer()
      
      ForEach(question.answerChoices, id: \.self) { choice in
        Button(action: {
          resultIsCorrect = (choice == question.answer)
          showResult = true
        }) {
          Text(choice)
        }
        .font(.largeTitle)
        .foregroundColor(.white)
        .padding()
        .background(getButtonColorForChoice(choice))
        .cornerRadius(10)
      }
      Spacer()
      Spacer()
      Spacer()
    }
    .sheet(isPresented: $showResult) {
      ResultView(isCorrect: $resultIsCorrect, onNext: onNext)
        .presentationDetents([.fraction(0.15)])
        .interactiveDismissDisabled()
    }
  }
  
  func getButtonColorForChoice(_ choice: String) -> Color {
    if !showResult {
      return .accentColor
    }
    
    return (choice == question.answer) ? .green : .red
  }
}

struct HindiSpeechCard_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      SpeechMultiChoiceView(
        question: SpeechMultiChoiceQuestionsData.sampleQuestions()[0],
        onNext: {_ in })
      .navigationTitle("Learn Hindi 🇮🇳")
    }
  }
}

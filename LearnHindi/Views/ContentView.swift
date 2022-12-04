// ChiragGupta.com

import SwiftUI

struct ContentView: View {
  var body: some View {
    SpeechMultiChoiceView(questions: SpeechMultiChoiceQuestion.questions[0])
      .navigationTitle("Learn Hindi 🇮🇳")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

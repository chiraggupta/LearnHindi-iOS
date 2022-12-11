// ChiragGupta.com

import SwiftUI

@main
struct LearnHindiApp: App {
  var body: some Scene {
    WindowGroup {
      NavigationView {
        QuestionsView(questions: SpeechMultiChoiceQuestion.questions)
          .navigationTitle("Learn Hindi 🇮🇳")
      }
    }
  }
}

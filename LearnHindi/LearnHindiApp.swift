// ChiragGupta.com

import SwiftUI

@main
struct LearnHindiApp: App {
  let data = SpeechMultiChoiceQuestionsData(file: "speech-multichoice-questions.json")
  var body: some Scene {
    WindowGroup {
      NavigationView {
        QuestionsView(questions: data.questions)
          .navigationTitle("Learn Hindi 🇮🇳")
      }
    }
  }
}

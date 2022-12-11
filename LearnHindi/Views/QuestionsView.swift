// ChiragGupta.com

import SwiftUI

struct QuestionsView: View {
  let questions: [SpeechMultiChoiceQuestion]
  
  @State private var questionNumber = 1
  private var currentQuestion: SpeechMultiChoiceQuestion {
    return questions[questionNumber - 1]
  }
  private var progress: Double {
    return Double(questionNumber) / Double(questions.count)
  }
  private var progressText: String {
    "Question \(questionNumber) of \(questions.count)"
  }
  
  var body: some View {
    VStack {
      ProgressView(value: progress) {
        Text(progressText)
      }
      .padding(20)
      
      Spacer()
      SpeechMultiChoiceView(question: currentQuestion, onNext: nextQuestion)
        .id(questionNumber)
        .transition(.push(from: .trailing))
    }
  }
  
  func nextQuestion() {
    if questionNumber == questions.count {
      return
    }
    
    withAnimation {
      questionNumber += 1
    }
  }
}

struct QuestionsView_Previews: PreviewProvider {
  static var previews: some View {
    QuestionsView(questions: SpeechMultiChoiceQuestion.questions)
  }
}

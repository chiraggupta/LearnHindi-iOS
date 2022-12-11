// ChiragGupta.com

import SwiftUI

struct QuestionsView: View {
  let questions: [SpeechMultiChoiceQuestion]
  
  @State private var currentQuestionIndex = 0
  private var currentQuestion: SpeechMultiChoiceQuestion {
    return questions[currentQuestionIndex]
  }
  private var progress: Double {
    return Double(currentQuestionIndex) / Double(questions.count)
  }
  private var progressText: String {
    "Question \(currentQuestionIndex + 1) of \(questions.count)"
  }
  
  var body: some View {
    VStack {
      ProgressView(value: progress) {
        Text(progressText)
      }
      .padding(20)
      
      Spacer()
      SpeechMultiChoiceView(question: currentQuestion, onNext: nextQuestion)
        .id(currentQuestionIndex)
    }
  }
  
  func nextQuestion() {
    if currentQuestionIndex == questions.count - 1 {
      return
    }
    
    currentQuestionIndex += 1
  }
}

struct QuestionsView_Previews: PreviewProvider {
  static var previews: some View {
    QuestionsView(questions: SpeechMultiChoiceQuestion.questions)
  }
}

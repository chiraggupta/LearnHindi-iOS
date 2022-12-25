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

  @State private var score = 0
  @State private var showFinalView = false
  
  var body: some View {
    ZStack {
      if showFinalView {
        FinalView()
          .transition(.push(from: .trailing))
        Spacer()
      } else {
        VStack {
          ProgressView(value: progress) {
            Text(progressText)
          }
          .padding(20)
          
          Spacer()
          SpeechMultiChoiceView(question: currentQuestion, onNext: showNextQuestionWithAnimation)
            .id(questionNumber)
            .transition(.push(from: .trailing))
        }
      }
    }
  }
  
  func showNextQuestionWithAnimation(result: Bool) {
    updateScore(result: result)
    withAnimation {
      nextQuestion()
    }
  }

  func updateScore(result: Bool) {
    if result {
      score += 1
    }
    print("Score: \(score)/\(questions.count)")
  }
  
  func nextQuestion() {
    if questionNumber == questions.count {
      showFinalView = true
      return
    }
    
    questionNumber += 1
  }
}

struct QuestionsView_Previews: PreviewProvider {
  static var previews: some View {
    QuestionsView(questions: SpeechMultiChoiceQuestionsData.sampleQuestions())
  }
}

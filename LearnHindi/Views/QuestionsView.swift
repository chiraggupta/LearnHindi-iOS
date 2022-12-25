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
  @State private var showingFinalView = false
  
  var body: some View {
    ZStack {
      if showingFinalView {
        VStack {
          FinalView(score: score, total: questions.count)
            .transition(.push(from: .trailing))
          Spacer()
        }
      } else {
        VStack {
          ProgressView(value: progress) {
            Text(progressText)
          }
          .padding(20)
          
          Spacer()
          SpeechMultiChoiceView(
            question: currentQuestion,
            onContinue: continuePressed
          )
          .id(questionNumber)
          .transition(.push(from: .trailing))
        }
      }
    }
  }
  
  func continuePressed(result: Bool) {
    updateScore(result: result)
    withAnimation {
      showNextQuestion()
    }
  }
  
  func updateScore(result: Bool) {
    if result {
      score += 1
    }
  }
  
  func showNextQuestion() {
    if questionNumber == questions.count {
      showingFinalView = true
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

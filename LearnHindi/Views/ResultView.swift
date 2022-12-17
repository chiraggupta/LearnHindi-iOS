// ChiragGupta.com

import SwiftUI

struct ResultView: View {
  @Binding var isCorrect: Bool
  let onNext: () -> Void
  
  private var resultText: String {
    return isCorrect ? "Correct Answer 🎉" : "Try again ⛔️ "
  }
  
  var body: some View {
    VStack {
      Text(resultText)
        .font(.title2)
      
      if isCorrect {
        Button(action: {
          onNext()
        }) {
          Text("Continue")
            .font(.title2)
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .padding(.vertical, 10)
        }
        .background(.green)
        .cornerRadius(10)
        .padding(.horizontal, 20)
      }
    }
  }
}

struct ResultView_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      Spacer()
      Text("--- Correct Preview ---")
      Divider()
      ResultView(isCorrect: .constant(true), onNext: {})
      Spacer()
      
      Text("--- Incorrect Preview ---")
      Divider()
      ResultView(isCorrect: .constant(false), onNext: {})
      Spacer()
    }
  }
}

// ChiragGupta.com

import SwiftUI

struct ResultView: View {
  @Binding var isCorrect: Bool
  let onContinue: (Bool) -> Void
  
  var body: some View {
    VStack {
      Text(isCorrect ? "Correct Answer 🎉" : "Sorry, that's wrong 😕")
        .font(.title2)
      
      Button(action: {
        onContinue(isCorrect)
      }) {
        Text("Continue")
          .font(.title2)
          .frame(maxWidth: .infinity)
          .foregroundColor(.white)
          .padding(.vertical, 10)
      }
      .background(isCorrect ? .green : .red)
      .cornerRadius(10)
      .padding(.horizontal, 20)
    }
  }
}

struct ResultView_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      Spacer()
      Text("--- Correct Preview ---")
      Divider()
      ResultView(isCorrect: .constant(true), onContinue: {_ in })
      Spacer()
      
      Text("--- Incorrect Preview ---")
      Divider()
      ResultView(isCorrect: .constant(false), onContinue: {_ in })
      Spacer()
    }
  }
}

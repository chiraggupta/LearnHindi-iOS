// ChiragGupta.com

import SwiftUI

struct ResultView: View {
  @Binding var isCorrect: Bool
  let onNext: () -> Void
  
  var body: some View {
    VStack {
      if isCorrect {
        Text("Correct Answer 🎉")
          .font(.title2)
        
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
      } else {
        Text("Sorry, try again 😕")
          .font(.title)
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

// ChiragGupta.com

import SwiftUI

struct FinalView: View {
  let score: Int
  let total: Int
  
  private var resultEmoji: String {
    switch Double(score) / Double(total) {
    case 1:
      return "🏅"
    case 0.9...1:
      return "🥇"
    case 0.8...0.9:
      return "🥈"
    case 0.7...0.8:
      return "🥉"
    default:
      return "👍"
    }
  }
  
  var body: some View {
    VStack {
      Spacer()
      Text("🧮 Final Score")
        .font(.largeTitle)
        .padding(.vertical, 20)
      
      Text("You got \(score) out of \(total) correct")
        .font(.title2)
      
      Text(resultEmoji)
        .font(.system(size: 100))
        .padding(.vertical, 50)
      Spacer()
      Spacer()
    }
  }
}

struct FinalView_Previews: PreviewProvider {
  static var previews: some View {
    FinalView(score: 45, total: 50)
  }
}

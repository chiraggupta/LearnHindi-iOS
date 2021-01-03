// ChiragGupta.com

import SwiftUI

struct ContentView: View {
  var body: some View {
    SpeechMultiChoiceCard(data: SpeechMultiChoice.data[0])
      .navigationTitle("Learn Hindi 🇮🇳")
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

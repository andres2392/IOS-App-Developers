//
//  ContentView.swift
//  Developers
//
//  Created by PDWS on 8/26/22.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  
  var cards: [Card] = cardData
  
  // MARK: - CONTENT
  
  var body: some View {
    ScrollView(.horizontal, showsIndicators: false) {
      HStack(alignment: .center, spacing: 20) {
        ForEach(cards) { item in
          CardView(card: item)
        }
      }//: HSTACK
      .padding(20)
    }//: SCROLL
    .padding(.horizontal,10)
  }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(cards: cardData)
      .previewDevice("iPhone 13")
  }
}

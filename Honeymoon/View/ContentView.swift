//
//  ContentView.swift
//  Honeymoon
//
//  Created by Nic Deane on 9/10/21.
//

import SwiftUI

struct ContentView: View {
  
  @State var showAlert: Bool = false
  @State var showGuide: Bool = false
  @State var showInfo: Bool = false
  
  var cardViews: [CardView] = {
    var views = [CardView]()
    for honeymoon in honeymoonData {
      views.append(CardView(honeymoon: honeymoon))
    }
    return views
  }()
  
  var body: some View {
    VStack {
      // MARK: - Header
      HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
      
      Spacer()
      
      // MARK: - Cards
      ZStack {
        ForEach(cardViews) { cardView in
          cardView
        }
      }
      .padding(.horizontal)
     
      
      Spacer()
      
      // MARK: - Footer
      FooterView(showBookingAlert: $showAlert)
    }
    .alert(isPresented: $showAlert) {
      Alert(
        title: Text("Success"),
        message: Text("Wishing a lovely and the most precious of times together for an amazing couple"),
        dismissButton: .default(Text("Happy Honeymoon!")))
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

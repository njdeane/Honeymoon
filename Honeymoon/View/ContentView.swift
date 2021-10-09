//
//  ContentView.swift
//  Honeymoon
//
//  Created by Nic Deane on 9/10/21.
//

import SwiftUI

struct ContentView: View {
  
  @State var showAlert: Bool = false
  
  var body: some View {
    VStack {
      HeaderView()
      
      Spacer()
      
      CardView(honeymoon: honeymoonData[2])
        .padding()
      
      Spacer()
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

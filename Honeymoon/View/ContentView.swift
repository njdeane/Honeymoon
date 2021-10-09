//
//  ContentView.swift
//  Honeymoon
//
//  Created by Nic Deane on 9/10/21.
//

import SwiftUI

struct ContentView: View {
  
  
  
  var body: some View {
    VStack {
      HeaderView()
      
      Spacer()
      
      CardView(honeymoon: honeymoonData[2])
        .padding()
      
      Spacer()
      FooterView()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Nic Deane on 9/10/21.
//

import SwiftUI

struct HeaderView: View {
  var body: some View {
    HStack {
      Button(action: {
        
      }) {
        Image(systemName: "info.circle")
          .font(.system(size: 24, weight: .regular))
      }
      .accentColor(Color.primary)
      
      Spacer()
      
      Image("logo-honeymoon-pink")
        .resizable()
        .scaledToFit()
        .frame(height: 28)
      
      Spacer()
      
      Button(action: {
        
      }) {
        Image(systemName: "questionmark.circle")
          .font(.system(size: 24, weight: .regular))
      }
      .accentColor(Color.primary)
    }
    .padding()
  }
}

struct HeaderView_Previews: PreviewProvider {
  static var previews: some View {
    HeaderView()
      .previewLayout(.fixed(width: 375, height: 80))
  }
}

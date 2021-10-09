//
//  FooterView.swift
//  Honeymoon
//
//  Created by Nic Deane on 9/10/21.
//

import SwiftUI

struct FooterView: View {
  
  @Binding var showBookingAlert: Bool
  
  var body: some View {
    HStack {
      Image(systemName: "x.circle")
        .font(.system(size: 42, weight: .light))
       
      Spacer()
      
      Button(action: {
        self.showBookingAlert.toggle()
      }) {
        Text("Book Destination".uppercased())
          .font(.system(.subheadline, design: .rounded))
          .fontWeight(.heavy)
          .padding(.horizontal, 20)
          .padding(.vertical, 12)
          .accentColor(Color.pink)
          .background(
            Capsule()
              .stroke(Color.pink, lineWidth: 2)
          )
      }
      
      Spacer()
      
      Image(systemName: "heart.circle")
        .font(.system(size: 42, weight: .light))
    }
    .padding()
  }
}

struct FooterView_Previews: PreviewProvider {
  
  @State static var showAlertBool: Bool = false
  
  static var previews: some View {
    FooterView(showBookingAlert: $showAlertBool)
      .previewLayout(.fixed(width: 375, height: 80))
  }
}

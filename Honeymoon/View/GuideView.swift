//
//  GuideView.swift
//  Honeymoon
//
//  Created by Nic Deane on 9/10/21.
//

import SwiftUI

struct GuideView: View {
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 20) {
        HeaderComponent()
        
        Spacer(minLength: 10)
        
        Text("Get started!")
          .fontWeight(.black)
          .font(.largeTitle)
          .foregroundColor(Color.pink)
        
        Text("Discover and pick the perfect destination for your romantic honeymoon!")
          .lineLimit(nil)
          .multilineTextAlignment(.center)
        
        Spacer(minLength: 10)
        
        VStack(alignment: .leading, spacing: 25) {
          GuideComponant(
            title: "Like",
            subTitle: "Swipe Right",
            description: "Do you like this destination? Touch the screen and swipe right. It will be saved to your favourites",
            icon: "heart.circle")
          
          GuideComponant(
            title: "Dismiss",
            subTitle: "Swipe Left",
            description: "Would you rather skip this place? Touch the screen and swipe left. You will no longer see it",
            icon: "xmark.circle")
          
          GuideComponant(
            title: "Book",
            subTitle: "Tap the button",
            description: "Our selction of honeymoon resorts is perfect setting for you to embark on your new life together",
            icon: "checkmark.square")
        }
        
        Spacer(minLength: 10)
        
        Button(action: {
          
        }) {
          Text("Continue".uppercased())
            .font(.headline)
            .padding()
          .frame(minWidth: 0, maxWidth: .infinity)
          .background(Capsule().fill(Color.pink))
          .foregroundColor(Color.white)
        }
      }
      .frame(minWidth: 0, maxWidth: .infinity)
      .padding(.top, 15)
      .padding(.bottom, 25)
      .padding(.horizontal, 25)
    }
  }
}

struct GuideView_Previews: PreviewProvider {
  static var previews: some View {
    GuideView()
  }
}

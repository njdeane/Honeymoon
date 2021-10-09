//
//  GuideComponant.swift
//  Honeymoon
//
//  Created by Nic Deane on 9/10/21.
//

import SwiftUI

struct GuideComponant: View {
  
  var title: String
  var subTitle: String
  var description: String
  var icon: String
  
  var body: some View {
    HStack(alignment: .center, spacing: 20) {
      Image(systemName: icon)
        .font(.largeTitle)
        .foregroundColor(Color.pink)
      
      VStack(alignment: .leading, spacing: 4) {
        HStack {
          Text(title.uppercased())
            .font(.title)
            .fontWeight(.heavy)
          Spacer()
          Text(subTitle.uppercased())
            .font(.footnote)
            .fontWeight(.heavy)
            .foregroundColor(Color.pink)
        }
        Divider().padding(.bottom, 4)
        Text(description)
          .font(.footnote)
          .foregroundColor(Color.secondary)
          .fixedSize(horizontal: false, vertical: true)
      }
    }
  }
}

struct GuideComponant_Previews: PreviewProvider {
  static var previews: some View {
    GuideComponant(
      title: "Title",
      subTitle: "Pirate Island",
      description: "This is a placeholder sentance. This is a placeholder sentance. This is a placeholder sentance.",
      icon: "heart.circle")
      .previewLayout(.sizeThatFits)
  }
}

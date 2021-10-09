//
//  InfoView.swift
//  Honeymoon
//
//  Created by Nic Deane on 9/10/21.
//

import SwiftUI

struct InfoView: View {
  
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    ScrollView(.vertical, showsIndicators: false) {
      VStack(alignment: .center, spacing: 20) {
        HeaderComponent()
        
        Spacer(minLength: 10)
        
        Text("App Info")
          .fontWeight(.black)
          .modifier(TitleModifier())
        
        AppInfoView()
        
        Text("Credits")
          .fontWeight(.black)
          .modifier(TitleModifier())
        
        CreditsView(itemOne: "Photos", itemTwo: "Unsplash")
        
        Spacer(minLength: 10)
        
        Button {
          self.presentationMode.wrappedValue.dismiss()
        } label: {
          Text("Continue".uppercased())
            .modifier(ButtonModifier())
        }
        
      }
      .frame(minWidth: 0, maxWidth: .infinity)
      .padding(.top, 15)
      .padding(.bottom, 25)
      .padding(.horizontal, 25)
    }
  }
}

struct InfoView_Previews: PreviewProvider {
  static var previews: some View {
    InfoView()
  }
}

struct AppInfoView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
      RowAppInfoView(itemOne: "Application", itemTwo: "Honeymoon")
      RowAppInfoView(itemOne: "Compatibility", itemTwo: "iPhone, iPad")
      RowAppInfoView(itemOne: "Developer", itemTwo: "Captain Hook")
      RowAppInfoView(itemOne: "Designer", itemTwo: "Black Beard")
      RowAppInfoView(itemOne: "Website", itemTwo: "getfucked.com")
      RowAppInfoView(itemOne: "Version", itemTwo: "1.0.0")
    }
  }
}

struct RowAppInfoView: View {
  
  var itemOne: String
  var itemTwo: String
  
  var body: some View {
    VStack {
      HStack {
        Text(itemOne)
          .foregroundColor(Color.gray)
        Spacer()
        Text(itemTwo)
      }
      Divider()
    }
  }
}

struct CreditsView: View {
  
  var itemOne: String
  var itemTwo: String
  
  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
      HStack {
        Text(itemOne)
          .foregroundColor(Color.gray)
        Spacer()
        Text(itemTwo)
      }
      Divider()
      
      Text("Photographers")
        .foregroundColor(Color.gray)
      
      Text("Shifaaz Shamoon (Maldives), Grillot Edouard (France), Evan Wise (Greece), Christoph Schulz (United Arab Emirates), Andrew Coelho (USA), Damiano Baschiera (Italy), Daniel Olah (Hungary), Andrzej Rusinowski (Poland), Lucas Miguel (Slovenia), Florencia Potter (Spain), Ian Simmonds (USA), Ian Keefe (Canada), Denys Nevozhai (Thailand), David Köhler (Italy), Andre Benz (USA), Alexandre Chambon (South Korea), Roberto Nickson (Mexico), Ajit Paul Abraham (UK), Jeremy Bishop (USA), Davi Costa (Brazil), Liam Pozz (Australia)")
        .multilineTextAlignment(.leading)
        .font(.footnote)
    }
  }
}

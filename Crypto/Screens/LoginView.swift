//
//  LoginView.swift
//  Crypto
//
//  Created by Danijel Kecman on 11/16/19.
//  Copyright © 2019 Danijel Kecman. All rights reserved.
//

import SwiftUI
import Combine

struct LoginView: View {
  
  @State private var username: String = ""
  @State private var password: String = ""
  
  @Binding var restApi: HttpAuth
  
  var body: some View {
    NavigationView {
      Form {
        TextField("Your username", text: $username)
        SecureField("Your password", text: $password)
        
        HStack {
          Spacer()
          
          Button(action: {
            self.restApi.checkDetails(username: self.username, password: self.password)
          }) {
            Text("Login")
              .foregroundColor(Color.white)
              .padding([.leading, .trailing], 20)
              .padding([.top, .bottom], 10)
              .background(Color.red)
              .cornerRadius(10)
          }
          
          Spacer()
        }
      }.navigationBarTitle(Text("Crypto"))
    }
  }
}

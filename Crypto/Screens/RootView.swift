//
//  RootView.swift
//  Crypto
//
//  Created by Danijel Kecman on 11/16/19.
//  Copyright © 2019 Danijel Kecman. All rights reserved.
//

import SwiftUI
import Combine

struct RootView: View {
  @State private var restApi = HttpAuth()
  
  var body: some View {
    VStack {
      if restApi.authenticated {
        ContentView()
      } else {
        LoginView(restApi: $restApi)
      }
    }
  }
}


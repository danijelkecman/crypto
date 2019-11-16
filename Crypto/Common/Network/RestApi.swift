//
//  RestApi.swift
//  Crypto
//
//  Created by Danijel Kecman on 11/16/19.
//  Copyright © 2019 Danijel Kecman. All rights reserved.
//

import Foundation
import Combine

class HttpAuth: ObservableObject {
  var didChange = PassthroughSubject<HttpAuth, Never>()
  
  var authenticated = false {
    didSet {
      didChange.send(self)
    }
  }
  
  func checkDetails(username: String, password: String) {
    guard let url = URL(string: "https://a37fe57a.ngrok.io/login") else { return }
    
    let body = ["username": username, "password": password]
    let finalBody = try! JSONSerialization.data(withJSONObject: body)
    
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.httpBody = finalBody
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    
    URLSession.shared.dataTask(with: request) { (data, response, error) in
      guard let data = data else { return }
      
      let finalData = try! JSONDecoder().decode(LoginResponse.self, from: data)
      
      if finalData.status == "ok" {
        DispatchQueue.main.async {
          self.authenticated = true
        }
      }
    }.resume()
  }
}

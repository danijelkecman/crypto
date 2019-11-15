//
//  MockData.swift
//  Crypto
//
//  Created by Danijel Kecman on 11/15/19.
//  Copyright © 2019 Danijel Kecman. All rights reserved.
//

import Foundation

class Currencies {
  static var rates: [Coin] = [
    Coin(id: "BTC", name: "Bitcoin", price: "9733.95", icon: "bitcoin"),
    Coin(id: "LTC", name: "Litecoin", price: "78.70", icon: "litecoin"),
    Coin(id: "XIP", name: "Ripple", price: "0.30", icon: "ripple"),
    Coin(id: "TRX", name: "Tron", price: "9733.95", icon: "tron"),
    Coin(id: "ETH", name: "Etherium", price: "200.45", icon: "ether")
  ]
  
  static var mywallet: [Coin] = [
    Coin(id: "BTC", name: "Bitcoin", price: "1000.00", icon: "bitcoin"),
    Coin(id: "LTC", name: "Litecoin", price: "2000.00", icon: "litecoin"),
    Coin(id: "TRX", name: "Tron", price: "133.7", icon: "tron")
  ]
}

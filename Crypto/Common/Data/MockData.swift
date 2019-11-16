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
    Coin(id: "BTC", name: "Bitcoin", price: "9733.95", icon: "bitcoin", lineCoordinates: [5000, 6000, 7000, 5000, 4000, 10000, 11000]),
    Coin(id: "LTC", name: "Litecoin", price: "78.70", icon: "litecoin", lineCoordinates: [100, 500, 333, 450, 150, 260, 700]),
    Coin(id: "XIP", name: "Ripple", price: "0.30", icon: "ripple", lineCoordinates: [1.1, 5, 7, 67, 0.5, 9, 6]),
    Coin(id: "TRX", name: "Tron", price: "9733.95", icon: "tron", lineCoordinates: [2000, 4000, 9000, 1000, 6000, 5000, 7000]),
    Coin(id: "ETH", name: "Etherium", price: "200.45", icon: "ether", lineCoordinates: [500, 100, 700, 20, 10, 70, 140])
  ]
  
  static var mywallet: [Coin] = [
    Coin(id: "BTC", name: "Bitcoin", price: "1000.00", icon: "bitcoin", lineCoordinates: [5000, 6000, 7000, 5000, 4000, 10000, 11000]),
    Coin(id: "LTC", name: "Litecoin", price: "2000.00", icon: "litecoin", lineCoordinates: [5000, 6000, 7000, 5000, 4000, 10000, 11000]),
    Coin(id: "TRX", name: "Tron", price: "133.7", icon: "tron", lineCoordinates: [5000, 6000, 7000, 5000, 4000, 10000, 11000])
  ]
}

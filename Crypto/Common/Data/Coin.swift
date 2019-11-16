//
//  Coin.swift
//  Crypto
//
//  Created by Danijel Kecman on 11/15/19.
//  Copyright © 2019 Danijel Kecman. All rights reserved.
//

import UIKit

struct Coin: Hashable {
  let id: String
  let name: String
  let price: String
  let icon: String
  let lineCoordinates: [CGFloat]
}

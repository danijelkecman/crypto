//
//  BadgeSymbol.swift
//  Crypto
//
//  Created by Danijel Kecman on 11/15/19.
//  Copyright © 2019 Danijel Kecman. All rights reserved.
//

import SwiftUI

struct GraphCoin: View {
  
  let title: String
  let lineCoordinates: [CGFloat]
  
  var body: some View {
    LineChartController(lineCoordinates: lineCoordinates, inline: false)
      .padding(.leading, 30)
    .navigationBarTitle(Text(title))
  }
}

struct BadgeSymbol: View {
  var body: some View {
    GeometryReader { geometry in
      Path { path in
        let width = min(geometry.size.width, geometry.size.height)
        let height = width * 0.75
        let spacing = width * 0.030
        let middle = width / 2
        let topWidth = 0.226 * width
        let topHeight = 0.488 * height
        
        path.addLines([
          CGPoint(x: middle, y: spacing),
          CGPoint(x: middle - topWidth, y: topHeight - spacing),
          CGPoint(x: middle, y: topHeight / 2 + spacing),
          CGPoint(x: middle + topWidth, y: topHeight - spacing),
          CGPoint(x: middle, y: spacing)
        ])
        
        path.move(to: CGPoint(x: middle, y: topHeight / 2 + spacing * 3))
        path.addLines([
          CGPoint(x: middle - topWidth, y: topHeight + spacing),
          CGPoint(x: spacing, y: height - spacing),
          CGPoint(x: width - spacing, y: height - spacing),
          CGPoint(x: middle + topWidth, y: topHeight + spacing),
          CGPoint(x: middle, y: topHeight / 2 + spacing * 3)
        ])
      }
    }
  }
}

//
//  LineChartController.swift
//  Crypto
//
//  Created by Danijel Kecman on 11/15/19.
//  Copyright © 2019 Danijel Kecman. All rights reserved.
//

import SwiftUI
import UIKit

struct LineChartController: UIViewRepresentable {
  
  let lineCoordinates: [CGFloat]
  let inline: Bool
  
  func updateUIView(_ uiView: LineChart, context: UIViewRepresentableContext<LineChartController>) {
    // ..
  }
  
  func makeUIView(context: Context) -> LineChart {
    
    let lineChart = LineChart()
    lineChart.addLine(lineCoordinates)
    
    if inline {
      lineChart.y.labels.visible = false
      lineChart.x.labels.values = ["Yesterday", "Today", "Tomorrow"]
    }
    
    return lineChart
    
  }
}

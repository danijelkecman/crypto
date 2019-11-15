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
  
  func updateUIView(_ uiView: LineChart, context: UIViewRepresentableContext<LineChartController>) {
    // ..
  }
  
  func makeUIView(context: Context) -> LineChart {
    
    let lineChart = LineChart()
    lineChart.addLine([3,4,2,1,6,5])
    
    return lineChart
    
  }
}

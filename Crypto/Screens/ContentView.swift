//
//  ContentView.swift
//  Crypto
//
//  Created by Danijel Kecman on 9/18/19.
//  Copyright © 2019 Danijel Kecman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State var is360 = false
  
  var body: some View {
    
    NavigationView {
      VStack {
        
        Button(action: {
          self.is360.toggle()
        }) {
          BadgeSymbol()
            .frame(width: 150, height: 150)
            .rotation3DEffect(.degrees(is360 ? 360 : 0), axis: (x: 0, y: 1, z: 1))
            .animation(.linear(duration: 0.7)).animation(.easeIn)
        }
        
        Text("Your crypto balance")
        Text("$3,133.7")
          .font(.largeTitle)
          .fontWeight(.heavy)
        
        LineChartController(lineCoordinates: [3,2,5], inline: true)
          .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 150)
          .padding()
        
        List {
          
          Section(header: Text("My Wallet")) {
            ForEach(Currencies.mywallet, id:\.id) { coin in
              NavigationLink(destination: GraphCoin(title: coin.name,
                                                    lineCoordinates: coin.lineCoordinates)) {
                HStack {
                  Image(coin.icon)
                    .resizable()
                    .frame(width: 40, height: 40)
                  Text("\(coin.name) (\(coin.id))")
                  
                  Spacer()
                  
                  Text("$\(coin.price)").fontWeight(.bold)
                }
              }
            }
          }
          
          Section(header: Text("Current prices")) {
            ForEach(Currencies.rates, id:\.id) { coin in
              NavigationLink(destination: GraphCoin(title: coin.name,
                                                    lineCoordinates: coin.lineCoordinates)) {
                HStack {
                  Image(coin.icon)
                    .resizable()
                    .frame(width: 40, height: 40)
                  Text("\(coin.name) (\(coin.id))")
                  
                  Spacer()
                  
                  Text("$\(coin.price)").fontWeight(.bold)
                }
              }
            }
          }
          
        }.listStyle(GroupedListStyle())
      }
      .navigationBarTitle(Text("Dashboard"))
      .navigationBarHidden(true)
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}




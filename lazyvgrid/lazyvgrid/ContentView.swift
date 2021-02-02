//
//  ContentView.swift
//  lazyvgrid
//
//  Created by Bruna Costa on 23/01/21.
//

import SwiftUI

struct ContentView: View {
    

    var gridItemLayout: [GridItem] = [GridItem(.fixed(100)), GridItem(.adaptive(minimum: 50)),GridItem(.flexible())]
    
    var colors: [Color] = [.yellow, .purple, .green, .blue, .pink, .gray, .red, .black, .orange, .yellow]

    var body: some View {
          
        ScrollView(.horizontal) {
              
            LazyHGrid(rows: gridItemLayout, alignment: .center, spacing: 20)
              {
                  
                  ForEach((0...9), id: \.self) { number in
                      Rectangle()
                          .aspectRatio(contentMode: .fit)
                          .foregroundColor(colors[number % colors.count])
                        .padding()
                    
                  }
              }
          }
      }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

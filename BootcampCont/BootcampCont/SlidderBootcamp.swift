//
//  SliderBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 17/07/2023.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
   
        VStack {
            
            Text("slider")
            Text(
                
                String(format: "%.0f", sliderValue)
            )
            .foregroundColor(color)
            
            Slider(
                value: $sliderValue,
                in: 1...5,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel:
                        Text("1")
                    .font(.largeTitle)
                    .foregroundColor(Color.orange)
                ,
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                }
            )
                .accentColor(.red)
        }
    
        
        
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}

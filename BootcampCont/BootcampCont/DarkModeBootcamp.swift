//
//  DarkModeBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 18/07/2023.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack(spacing: 20) {
                    
                    Text("This color is PRIMARY")
                        .foregroundColor(Color.primary)
                    
                    Text("This color is SECONDARY")
                        .foregroundColor(Color.secondary)
                    
                    Text("This color is BLACK")
                        .foregroundColor(Color.black)
                    
                    Text("This color is WHITE")
                        .foregroundColor(Color.white)
                    
                    Text("This color is RED")
                        .foregroundColor(Color.red)
                    
                    Text("This color is globally adaptive!")
                        .foregroundColor(Color("AdaptiveColor"))
                    
                    Text("This color is locally adaptive!")
                        .foregroundColor(colorScheme == .light ? Color.green : Color.yellow)
                    
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
            
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            DarkModeBootcamp()
                .preferredColorScheme(.light)
            
            DarkModeBootcamp()
                .preferredColorScheme(.dark)
        }
    }
}

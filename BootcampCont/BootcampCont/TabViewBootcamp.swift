//
//  TabViewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 17/07/2023.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    
    ]
    
    var body: some View {
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        .background(
            RadialGradient(
                colors: [Color.red, Color.blue],
                center: .center,
                startRadius: 5,
                endRadius: 300
            )
        )
        
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        
        ZStack {
            
            Color.red.ignoresSafeArea(edges: .top)
            
            VStack {
                
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding()
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to profile")
                })
                .padding()
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
                
            }
            
            
            
        }
    }
    
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

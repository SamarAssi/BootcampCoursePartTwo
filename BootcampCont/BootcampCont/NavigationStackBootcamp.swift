//
//  NavigationStackBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 02/08/2023.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    @State private var stackPath: [String] = []
    
    let fruits = ["Apple", "Orange", "Banana"]
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            
            ScrollView {
                VStack(spacing: 40) {
                    
                    Button("Super segue!") {
                        
                        stackPath.append(contentsOf: [
                            "Coconut", "Watermelon", "Mango"
                        ])
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { x in
                        
                        NavigationLink(value: x) {
                            Text("Click me: \(x)")
                        }
                    }
                }
            }
            .navigationTitle("Nav Bootcamp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("AONTHER SCREEN: \(value)")
            }
            
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        
        print("SECOND SCREEN \(value)")
    }
    var body: some View {
        
        Text("second screen \(value)")
    }
}

struct NavigationStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackBootcamp()
    }
}


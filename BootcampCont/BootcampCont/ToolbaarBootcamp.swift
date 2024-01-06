//
//  ToolbarBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 02/08/2023.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            
            ZStack {

                
                ScrollView {
                    TextField("Placeholder", text: $text)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 200, height: 200)
                    }
                }
            }
            .navigationTitle("Toolbar")

            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Image(systemName: "gear")
                        //Image(systemName: "house.fill")
                    }
                }
            }
            
            .navigationBarTitleDisplayMode(.inline)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("Screen: \(value)")
            }
        }
    }
}

struct ToolbarBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarBootcamp()
    }
}

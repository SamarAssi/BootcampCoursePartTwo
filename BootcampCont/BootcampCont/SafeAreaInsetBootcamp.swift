//
//  SafeAreaInsetBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 03/08/2023.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Intests")
            .navigationBarTitleDisplayMode(.inline)
            
            .safeAreaInset(edge: .top, alignment: .center, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow.ignoresSafeArea(edges: [.bottom]))
            }
            
            .safeAreaInset(edge: .bottom, alignment: .center, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
                    .background(Color.yellow.ignoresSafeArea(edges: [.bottom]))
            }
        }
    }
}

struct SafeAreaInsetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetBootcamp()
    }
}

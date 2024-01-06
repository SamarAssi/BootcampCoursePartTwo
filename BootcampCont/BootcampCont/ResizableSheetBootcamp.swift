//
//  ResizableSheetBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 03/08/2023.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        
        Button("Click me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)

        }
    }
}

struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack(spacing: 20) {
                Button("20%") {
                    detents = .fraction(0.2)
                }
                
                Button("LARGE") {
                    detents = .large
                }
                
                Button("600 pixel") {
                    detents = .height(600)
                }
                
                Button("MEDIUM") {
                    detents = .medium
                }
            }
            .presentationDetents([.fraction(0.2), .large, .height(600), .medium], selection: $detents)
            .presentationDragIndicator(.hidden)
        }
    }
}

struct ResizableSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheetBootcamp()
    }
}

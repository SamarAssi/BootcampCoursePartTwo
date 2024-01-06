//
//  ContextMenuBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 14/07/2023.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color("CustomColor")
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .foregroundColor(.white)
        .contextMenu(menuItems: {
            
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Share Post", systemImage: "flame.fill")
            })
            
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Report Post")
            })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                    
                }
            })
        })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}

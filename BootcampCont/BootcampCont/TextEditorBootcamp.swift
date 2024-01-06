//
//  TextEditorBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 15/07/2023.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = ""
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .colorMultiply(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("save".uppercased())
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                
                Text(savedText)
                
                Spacer()
                
            }
            .padding()
            //.background(Color.green)
            .navigationTitle("TextEditor Bootcamp!")
            
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}

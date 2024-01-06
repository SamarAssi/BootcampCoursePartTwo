//
//  TextfieldBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 14/07/2023.
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []

    
    var body: some View {
        
        NavigationView {
            
            VStack {
                TextField("Type here...", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(Color.red)
                    .font(.headline)
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                    
                    
                }, label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(Color.white)
                        .font(.headline)
                    
                })
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }
        
    }
    
    func textIsAppropriate() -> Bool {
        textFieldText.count >= 3 ? true : false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextfieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldBootcamp()
    }
}


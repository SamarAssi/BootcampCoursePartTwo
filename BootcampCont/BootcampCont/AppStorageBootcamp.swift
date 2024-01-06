//
//  AppStorageBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 24/07/2023.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("save".uppercased()) {
                let name: String = "Emily"
                currentUserName = name
            }
            .font(.headline)
            .padding()
            .padding(.horizontal)
            .background(Color.blue)
            .cornerRadius(10)
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}

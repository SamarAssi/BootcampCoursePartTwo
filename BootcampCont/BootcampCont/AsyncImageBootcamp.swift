//
//  AsyncImageBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 26/07/2023.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "http://picsum.photos/200")
    
    
    
    var body: some View {
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                
            case .failure:
                Image(systemName: "questionmark")
            }
            
        }
    }
}
    
struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}

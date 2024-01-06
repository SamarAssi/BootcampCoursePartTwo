//
//  BackgroundMaterialsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 30/07/2023.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        
        VStack {
            
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("nature")
        )
        
    }
}

struct BackgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootcamp()
    }
}

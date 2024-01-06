//
//  GroupBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 03/08/2023.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, world!")
            
            Group {
                Text("Hello, world!")
                Text("Hello, world!")
            }
            .foregroundColor(Color.green)
            .font(.caption)
        }
        .foregroundColor(Color.red)
        .font(.headline)
    }
}

struct GroupBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootcamp()
    }
}

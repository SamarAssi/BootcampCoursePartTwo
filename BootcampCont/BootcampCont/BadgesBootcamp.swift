//
//  BadgesBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 31/07/2023.
//

import SwiftUI

// only work in List and TabView

struct BadgesBootcamp: View {
    var body: some View {
        
        List {
            Text("Hello, world!")
                .badge("NEW ITEMS!")
            Text("Hello, world!")
                .badge(4)
            Text("Hello, world!")
            Text("Hello, world!")
        }
        

    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}

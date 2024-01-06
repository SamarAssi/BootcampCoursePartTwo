//
//  ListSwipeActionBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 31/07/2023.
//

import SwiftUI

struct ListSwipeActionBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)

                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button("Archive") {
                            
                        }
                        .tint(Color.green)
                        
                        Button("Save") {
                            
                        }
                        .tint(Color.blue)
                        
                        Button("Junk") {
                            
                        }
                        .tint(Color.black)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Share") {
                            
                        }
                        .tint(Color.yellow)
                    }
            }
            
        }
        
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

struct ListSwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionBootcamp()
    }
}

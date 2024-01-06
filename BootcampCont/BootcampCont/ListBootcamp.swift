//
//  ListBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 11/07/2023.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                Section(
                    content: {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundColor(Color.white)
                                .padding(.vertical)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.pink)
                    },
                    header: {
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(Color.blue)
                    }
                )
                
                Section(content: {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }, header: {
                    Text("Veggies")
                })
                
            }
            .accentColor(Color.purple)
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            
            )
            
        }
        .accentColor(Color.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("coconut".capitalized)
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}

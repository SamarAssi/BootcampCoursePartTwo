//
//  IfLetGuardBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 18/07/2023.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID: String? = "testUser123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            
            VStack {
                Text("Here we are practicing safe code!")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
            
        }
    }
    
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data!"
                isLoading = false
            }
        } else {
            displayText = "Error. This is no user ID"
        }
    }
    
    func loadData2() {
        
        guard let userID = currentUserID else {
            displayText = "Error. This is no user ID"
            return
        }
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data"
            isLoading = false
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}

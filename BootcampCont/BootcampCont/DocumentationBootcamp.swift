//
//  DocumentationBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 18/07/2023.
//


/*
 I'm learn in this lecture somethings to make the code more clean
 1) Use MARK keyword
 2) Use comments (to fold up comments -> editor -> code folding -> fold)
 or (press option + command + left arrow )
 3) use extarct view and subview
 4) use documentation using 3 backslash (///) before the variable(like foregroundLayer) and when you point to it will appear documentation
 */

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    
    @State var showAlert: Bool = false
    
    
    // MARK: BODY
    
    // working copy - things to do : (note: the best way to put the title out side the comment like this
    /*
     working copy - things to do :
     1) Fix title
     2) Fix alert

     */
    
    var body: some View {
        NavigationView { // START: NAV
            
            ZStack {
                
                // Background layer
                Color.red.ignoresSafeArea()
                
                // Foreground layer
                
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(
                    trailing:
                        Button("Alert", action: {
                            showAlert.toggle()
                        })
                        .accentColor(Color.black)
                )
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is the alert ")
                })
            }
            
        } // END: NAV
    }
    
    /// This is the foreground layer that holds scroll view
    var foregroundLayer: some View {
        ScrollView { // START: SCROLLVIEW
            Text("hello")
            
            ForEach(data, id: \.self) { name in
                Text(name)
            }
        } // END: SCROLLVIEW
    }
    
    // MARK: FUNCTIONS
    
    // to appear this documentation -> select all function then press option then click on mouse then choose add documentation
    // 1. here is description  -> describe what function is doing
    // 2.what text parameter is
    // Also we can add discussion using ///.
    // also we can add sample implementation using ``` and this tells the code  we're gonna put mock code into this documentation
    // also we can add warning
    
    /// gets an alert with specified title)
    ///
    ///here discussion:
    /// This function creates and returns an alert immediately . The alert will have a title based on the text parameter but it will NOT have a message.
    ///
    ///here sample implementation:
    /// ```
    /// getAlert(text: "hi") -> Alert(title: Text("hi"))
    /// ```
    ///here is warning:
    /// - Warning: There is no additional message in this alert
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an Alert with a title
    func getAlert(text: String) -> Alert {
        
        Alert(title: Text(text))
    }
}

//MARK: PREVIEW

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}

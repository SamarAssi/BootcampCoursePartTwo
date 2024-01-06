//
//  AlertBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 14/07/2023.
//

import SwiftUI

struct AlertBootcamp: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                
                Button("Button 1") {
                    alertType = .error
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    alertType = .success
                    showAlert.toggle()
                }
                
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
        
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error"))
        case .success:
            return Alert(title: Text("This was a success"), message: nil, dismissButton: .default(Text("Ok"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("error"))
        }
 
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}

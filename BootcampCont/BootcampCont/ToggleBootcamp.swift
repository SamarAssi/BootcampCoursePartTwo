//
//  ToggleBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 15/07/2023.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        
        VStack {
            
            HStack {
                Text("Status:")
                Spacer()
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change Status")
                }
            )
            .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}

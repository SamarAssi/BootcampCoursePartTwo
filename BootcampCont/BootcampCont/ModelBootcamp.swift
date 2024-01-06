//
//  ModelBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Samar Assi on 19/07/2023.
//

import SwiftUI

struct UserModel: Identifiable {
    
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
        
        UserModel(displayName: "Nick", userName: "nick123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Emily", userName: "itsemily1995", followerCount: 55, isVerified: false),
        UserModel(displayName: "Samantha", userName: "ninja", followerCount: 355, isVerified: false),
        UserModel(displayName: "Chris", userName: "chrish2009", followerCount: 88, isVerified: true)
    ]
    
    var body: some View {
        NavigationView {
            
            List {
                
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(Color.gray)
                                .font(.caption)
                        }
                        
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(Color.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                            Text("Followers")
                                .foregroundColor(Color.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .navigationTitle("Users")
            .listStyle(InsetGroupedListStyle())
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}

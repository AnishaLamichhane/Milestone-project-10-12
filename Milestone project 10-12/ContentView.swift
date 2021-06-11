//
//  ContentView.swift
//  Milestone project 10-12
//
//  Created by Anisha Lamichhane on 6/10/21.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var userClass = UserClass()
    var body: some View {
        NavigationView{
            List(userClass.user, id: \.id) { users in
                VStack(alignment: .leading) {
                    Text(users.name)
                    Text(users.email)
                        .foregroundColor(.secondary)
                }
                
            }.onAppear(perform: {
                userClass.loadData()
                })
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

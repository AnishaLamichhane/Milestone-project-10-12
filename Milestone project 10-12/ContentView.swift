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
            List(userClass.user, id: \.id) { user in
                NavigationLink(destination: DetailView(userClass: self.userClass, user: user)) {
                    VStack(alignment: .leading) {
                        Text(user.name)
                        Text(user.email)
                            .foregroundColor(.secondary)
                    }
                }
                
            }
            .onAppear(perform: {
                userClass.loadData()
            })
            .navigationBarTitle("Fetching Data using URLSession")
            
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
    ContentView()
    }
}

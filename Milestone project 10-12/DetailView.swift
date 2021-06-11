//
//  DetailView.swift
//  Milestone project 10-12
//
//  Created by Anisha Lamichhane on 6/11/21.
//

import SwiftUI

struct DetailView: View {
    @ObservedObject var userClass = UserClass()
//    var friend :Friend
    
    var user: User
    var body: some View {
        List {
            
            Section(header: Text("Name:")) {
                Text(user.name)
            }
            Section(header: Text("Age:")) {
                Text("\(user.age)")
            }
            Section(header: Text("Address:")) {
                Text(user.address)
            }
            Section(header: Text("Email:")) {
                Text(user.email)
            }
            Section(header: Text("Company:")) {
                Text(user.company)
            }
            Section(header: Text("About:")) {
                Text(user.about)
            }
            
            Section(header: Text("Friends:")) {
                ForEach(user.friends){ friend in
                  
                NavigationLink(destination: FriendView()) {
                    Text(friend.name)
                }
                    
                }
            }
        
        }
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView( friend: Friend.init(id: "333", name: "hhh"), user: User.init(id: "123", name: "hello Taylor", age: 23, company: "Songs", email: "taylor.swift@gmail.com", address: "USA", about: "Music", friends: []))
//    }
//}

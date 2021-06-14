//
//  FriendView.swift
//  Milestone project 10-12
//
//  Created by Anisha Lamichhane on 6/11/21.
//

import SwiftUI

struct FriendView: View {
    var friend: Friend
    
    var body: some View {
        List() {
           
            Text(friend.name)
        }
        }
    
  
    
}




//struct FriendView_Previews: PreviewProvider {
//    static var previews: some View {
//        FriendView(user: User(id: "23", name: "Sushil", age: 33, company: "ABC", email: "abc@gmail.com", address: "hhh", about: "jjj", friends: []))
//    }
//}

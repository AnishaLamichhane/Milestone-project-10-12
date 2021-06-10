//
//  UserClass.swift
//  Milestone project 10-12
//
//  Created by Anisha Lamichhane on 6/10/21.
//

import Foundation

class userClass: ObservableObject {
    @Published var user : User
    
    init(user: User) {
        self.user = user
    }
}

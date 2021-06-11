//
//  User.swift
//  Milestone project 10-12
//
//  Created by Anisha Lamichhane on 6/10/21.
//

import Foundation

struct Friend: Codable, Identifiable {
    let id: String
    let name: String
}

struct User: Codable, Identifiable {
    let id: String
    let name: String
    let age: Int
    let company: String
    let email: String
    let address: String
    let about: String
    let friends: [Friend]
}




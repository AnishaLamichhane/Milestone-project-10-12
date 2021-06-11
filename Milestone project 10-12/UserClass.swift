//
//  UserClass.swift
//  Milestone project 10-12
//
//  Created by Anisha Lamichhane on 6/10/21.
//

import Foundation

class UserClass: ObservableObject {
    @Published var user = [User]()
    
    init(users: [User]) {
        self.user = users
    }
    
    func loadData() {
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
//            step 4
            do {
                if let data = data {
                    if let decodedResponse = try? JSONDecoder().decode([User].self, from: data) {
                        // now we have a good data - go back to the main thread
                        DispatchQueue.main.async {
    //                        update our UI
                            self.user = decodedResponse
                            }
                        
    //                    everything is good
                        return
                    }
                }
            }
            
            //    if we are still here it means it was a problem
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
    
}

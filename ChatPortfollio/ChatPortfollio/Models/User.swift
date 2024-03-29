//
//  User.swift
//  ChatPortfollio
//
//  Created by ryosshim on 2024/03/30.
//

import Foundation

struct User: Decodable {
    let id: String
    let name: String
    let image: String
    
    var isCurrentUser: Bool {
        self.id == "1"
    }
}

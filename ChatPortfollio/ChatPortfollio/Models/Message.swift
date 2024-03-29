//
//  Message.swift
//  ChatPortfollio
//
//  Created by ryosshim on 2024/03/30.
//

import Foundation

struct Message: Decodable, Identifiable {
    let id: String
    let text: String
    let user: User
    let date: String
    let isRead: Bool
}

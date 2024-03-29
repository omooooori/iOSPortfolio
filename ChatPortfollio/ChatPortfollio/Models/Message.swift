//
//  Message.swift
//  ChatPortfollio
//
//  Created by ryosshim on 2024/03/30.
//

import Foundation

struct Message {
    let id: String = UUID().uuidString
    let text: String
    let user: User
    let date: Date
    let isRead: Bool
}

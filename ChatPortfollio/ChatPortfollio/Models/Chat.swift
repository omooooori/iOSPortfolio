//
//  Chat.swift
//  ChatPortfollio
//
//  Created by ryosshim on 2024/03/30.
//

import Foundation

struct Chat: Decodable {
    let id: String
    let messages: [Message]
}

//
//  ChatViewModel.swift
//  ChatPortfollio
//
//  Created by ryosshim on 2024/03/30.
//

import Foundation

class ChatViewModel {
    
    var chatData: [Chat] = []
    var messages: [Message] = []
    
    init() {
        chatData = fetchChatData()
        messages = chatData[0].messages
    }
    
    private func fetchChatData() -> [Chat] {
        let fileName = "chatData.json"
        let data: Data
        
        guard let filePath = Bundle.main.url(forResource: fileName, withExtension: nil) else {
            fatalError("Couldn't find \(fileName)")
        }
        
        do {
            data = try Data(contentsOf: filePath)

        } catch {
            fatalError("Failed to load \(fileName)")
        }
        
        do {
            return try JSONDecoder().decode([Chat].self, from: data)
        } catch {
            fatalError("Failed conver json to chat list.")
        }
    }
}

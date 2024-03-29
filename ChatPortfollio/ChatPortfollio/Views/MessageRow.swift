//
//  MessageRow.swift
//  ChatPortfollio
//
//  Created by ryosshim on 2024/03/29.
//

import SwiftUI

struct MessageRow: View {
    
    let message: Message
    
    var body: some View {
        HStack(alignment: .top) {
            if message.user.isCurrentUser {
                Spacer()
                messageState
                messageText
            } else {
                userThumb
                messageText
                messageState
                Spacer()
            }
        }
        .padding(.bottom)
    }
}

//#Preview {
//    MessageRow()
//        .background(.cyan)
//}

extension MessageRow {
    private var userThumb: some View {
        Image(message.user.image)
            .resizable()
            .frame(width: 48, height: 48)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
    
    private var messageText: some View {
        Text(message.text)
            .padding()
            .background(.white)
            .cornerRadius(30)
    }
    
    private var messageState: some View {
        VStack(alignment: .trailing) {
            Spacer()
            if message.isRead {
                Text("既読")
            }
            Text(formattedDateString)
        }
        .foregroundColor(.secondary)
        .font(.footnote)
    }
    
    private var formattedDateString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        guard let date = formatter.date(from: message.date) else {
            return ""
        }
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: date)
    }
}

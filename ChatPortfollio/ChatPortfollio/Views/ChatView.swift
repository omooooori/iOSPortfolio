//
//  ChatView.swift
//  ChatPortfollio
//
//  Created by ryosshim on 2024/03/29.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack(spacing: 0) {
            messageArea
            
            .overlay(navigationArea, alignment: .top)
            
            inputArea
        }
    }
}

#Preview {
    ChatView()
}

extension ChatView {
    private var messageArea: some View {
        ScrollView {
            VStack(spacing: 0) {
                ForEach(0..<15) { _ in
                    MessageRow()
                }
            }
            .padding(.horizontal)
            .padding(.top, 72)
        }
        .background(.cyan)
    }
    
    private var inputArea: some View {
        HStack {
            Circle()
                .frame(width: 40, height: 40)
            Circle()
                .frame(width: 40, height: 40)
            Circle()
                .frame(width: 40, height: 40)
            Capsule()
                .frame(height: 40)
            Circle()
                .frame(width: 40, height: 40)
        }
        .padding()
        .background(.white)
    }
    
    private var navigationArea: some View {
        HStack {
            Circle()
                .frame(width: 40, height: 40)
            Text("Title")
            Spacer()
            Circle()
                .frame(width: 40, height: 40)
            Circle()
                .frame(width: 40, height: 40)
        }
        .foregroundColor(.white)
        .padding()
        .background(.black.opacity(0.5))
    }
}

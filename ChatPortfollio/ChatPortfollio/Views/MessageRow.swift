//
//  MessageRow.swift
//  ChatPortfollio
//
//  Created by ryosshim on 2024/03/29.
//

import SwiftUI

struct MessageRow: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 60, height: 60)
            Capsule()
                .frame(height: 60)
        }
        .padding(.bottom)
    }
}

#Preview {
    MessageRow()
}

//
//  ChatView.swift
//  TwitterSwiftUITutorial
//
//  Created by KRENGSEAN on 2021/02/11.
//

import SwiftUI

struct ChatView: View {
    let user: User
    @ObservedObject var viewModel: ChatViewModel
    @State var messageText: String = ""
    
    init(user: User) {
        self.user = user
        self.viewModel = ChatViewModel(user: user)
    }
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 12) {
                    ForEach(MOCK_MESSAGES) { message in
                        MessageView(message: message)
                    }
                }
            }.padding(.top)
            
            MessageInputView(messageText: $messageText, action: sendMessage)
                .padding()
        }.navigationTitle(user.username)
    }
    
    func sendMessage() {
        viewModel.sendMessages(messageText)
    }
}

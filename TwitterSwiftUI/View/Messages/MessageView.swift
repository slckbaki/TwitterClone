//
//  MessageView.swift
//  TwitterSwiftUI
//
//  Created by Selcuk Baki on 5/11/21.
//

import SwiftUI

struct MessageView: View {
    let message : MockMessage
    var body: some View {
        HStack {
            if message.isCurrentUser{
                Image(message.imageName)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Spacer()
                Text(message.messageText)
                    .padding()
                    .background(Color(.systemGray5))
                    .clipShape(ChatBubbleView(isFromCurrentUser: true))
                    .foregroundColor(.black)
                    .padding(.horizontal)
            } else {
                HStack{
                    Image(message.imageName)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    Text(message.messageText)
                        .padding()
                        .background(Color(.systemBlue))
                        .clipShape(ChatBubbleView(isFromCurrentUser: false))
                        .foregroundColor(.white)
                    Spacer()
                }
            }
            
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: mockMessages[0])
    }
}

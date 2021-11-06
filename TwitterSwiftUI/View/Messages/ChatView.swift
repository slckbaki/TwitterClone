//
//  ChatView.swift
//  TwitterSwiftUI
//
//  Created by Selcuk Baki on 5/11/21.
//

import SwiftUI

struct ChatView: View {
    @State var messageInputText: String = ""
    
    var body: some View {
        VStack{
            ScrollView{
                VStack(alignment: .leading, spacing: 12){
                    ForEach(mockMessages) { message in
                        MessageView(message: message)
                    }
                }
            }.padding()
            MessageInputView(messageText: $messageInputText)
                .padding()

        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}



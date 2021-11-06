//
//  ConversationsView.swift
//  TwitterSwiftUI
//
//  Created by Selcuk Baki on 3/11/21.
//

import SwiftUI

struct ConversationsView: View {
    
    @State var isShowingNewMessageView = false
    @State var showChat = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            NavigationLink(
                destination: ChatView(),
                isActive: $showChat,
                label: {})

            ScrollView{
                VStack{
                    ForEach(0..<20) { _ in
                        NavigationLink(
                            
                            destination: ChatView(),
                            label: {
                                ConversationCell()

                            })

                    }
                }.padding()
            }
            Button(action: {
                self.isShowingNewMessageView.toggle()
            }, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .frame(width: 55, height: 50)
                    .padding()
            })
            .sheet(isPresented: $isShowingNewMessageView, content: {
                NewMessageView(show: $isShowingNewMessageView, startChat: $showChat)
            })
        }
    }
}

struct ConversationsView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationsView()
    }
}

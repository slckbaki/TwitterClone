//
//  ConversationCell.swift
//  TwitterSwiftUI
//
//  Created by Selcuk Baki on 3/11/21.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                
                VStack{
                    Text("Batman")
                        .font(.system(size: 14, weight: .semibold))
                    Text("Bruce Wayne asdask lets see how it looks like when the sentence is big")
                        .font(.system(size: 14))
                        .frame(width: 300, height: 50)
                }
            }.padding(.trailing, 10)
            .foregroundColor(.black)
            Divider()
        }
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}

//
//  ChatBubbleView.swift
//  TwitterSwiftUI
//
//  Created by Selcuk Baki on 5/11/21.
//

import SwiftUI

struct ChatBubbleView: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight, isFromCurrentUser ?  .bottomLeft: .bottomRight], cornerRadii: CGSize(width: 15, height: 15))
        return Path(path.cgPath)
    }
    
    var isFromCurrentUser : Bool
    
    
}

struct ChatBubbleView_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubbleView(isFromCurrentUser: false)
    }
}

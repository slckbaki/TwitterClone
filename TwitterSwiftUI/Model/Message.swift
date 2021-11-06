//
//  Message.swift
//  TwitterSwiftUI
//
//  Created by Selcuk Baki on 5/11/21.
//

import Foundation
struct MockMessage : Identifiable{
    let id : Int
    let imageName : String
    let messageText : String
    let isCurrentUser : Bool
}

let mockMessages: [MockMessage] = [.init(id: 0, imageName: "superman", messageText: "Hey whats up?", isCurrentUser: false),
                                   .init(id: 1, imageName: "batman", messageText: "not much you?", isCurrentUser: true),
                                   .init(id: 2, imageName: "superman", messageText: "the same here", isCurrentUser: false),
                                   .init(id: 3, imageName: "batman", messageText: "lets meet?", isCurrentUser: true),
                                   .init(id: 4, imageName: "batman", messageText: "it might be within or without metaverse instead of Marvel?", isCurrentUser: true)
]

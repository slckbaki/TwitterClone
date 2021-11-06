//
//  UserCell.swift
//  TwitterSwiftUI
//
//  Created by Selcuk Baki on 3/11/21.
//

import SwiftUI

struct UserCellView: View {
    var body: some View {
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
                Text("Bruce Wayne")
                    .font(.system(size: 14))
            }.foregroundColor(.black)
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCellView()
    }
}

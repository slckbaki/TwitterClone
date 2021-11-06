//
//  TweetCell.swift
//  TwitterSwiftUI
//
//  Created by Selcuk Baki on 3/11/21.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack{
            HStack(alignment: .top){
                Image("superman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 50, height: 55)
                    .clipShape(Circle())
                    .padding(10)
                
                VStack(alignment: .leading){
                    HStack {
                        Text("Bruce Wayne")
                            .font(.system(size: 14, weight: .semibold))
                        Text("@batman")
                            .foregroundColor(.gray)
                        Text("2w")
                            .foregroundColor(.gray)
                    }.padding(.top, 5)
                    Text("it is not who i am and i am this is why where aada kakkasjaksjda aksdhakjhk asdkjhh")
                    
                }
            }
            HStack{
                Button(action: {}, label: {
                    Image(systemName: "bubble.left")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "bookmark")
                        .font(.system(size: 16))
                        .frame(width: 32, height: 32)
                })

            }.padding(.horizontal)
            .foregroundColor(.gray)
            Divider()
        }
    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}

//
//  FeedView.swift
//  TwitterSwiftUI
//
//  Created by Selcuk Baki on 2/11/21.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){

            ScrollView{
                VStack{
                    ForEach(0..<20) { _ in
                        TweetCell()
                    }
                }.padding()
            }
            Button(action: {
                
            }, label: {
                Image("tweet")
                    .resizable()
                    .frame(width: 70, height: 70)
            })
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

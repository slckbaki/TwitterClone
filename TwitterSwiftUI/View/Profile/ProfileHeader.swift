//
//  ProfileHeader.swift
//  TwitterSwiftUI
//
//  Created by Selcuk Baki on 6/11/21.
//

import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        VStack{
            
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120)
                .clipShape(Circle())
                .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
            
            Text("Bruce Wayne")
                .font(.system(size: 16, weight: .semibold, design: .serif))
            Text("@batman")
                .font(.subheadline)
                .foregroundColor(Color(.systemGray2))
            
            Text("kdahdkashd kasjdhakdh aksdhaskd")
                .padding(.top, 8)
            
            HStack{
                VStack{
                    Text("20")
                        .font(.system(size: 16, weight: .bold, design: .default))
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }.padding()

                VStack{
                    Text("12")
                        .font(.system(size: 16, weight: .bold, design: .default))
                    Text("Followed")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                }.padding()
            }
            ProfileActionButton(isCurrentUser: false)
            Spacer()
        }
    }
}

struct ProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeader()
    }
}

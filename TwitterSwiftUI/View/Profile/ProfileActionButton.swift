//
//  ProfileActionButton.swift
//  TwitterSwiftUI
//
//  Created by Selcuk Baki on 6/11/21.
//

import SwiftUI

struct ProfileActionButton: View {
    
    let isCurrentUser : Bool
    
    var body: some View {

        
        if isCurrentUser {
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("Edit Profile")
                        .frame(width: 180, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                })
                .cornerRadius(20)
                .shadow(radius: 15)
                
                Button(action: {
                    
                }, label: {
                    Text("Detail Profile")
                        .frame(width: 180, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                })
                .cornerRadius(20)
                .shadow(radius: 15)
            }
        }else{
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("Follow")
                        .frame(width: 180, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                })
                .cornerRadius(20)
                .shadow(radius: 15)
                
                Button(action: {
                    
                }, label: {
                    Text("Message")
                        .frame(width: 180, height: 40)
                        .background(Color.purple)
                        .foregroundColor(.white)
                })
                .cornerRadius(20)
                .shadow(radius: 15)
            }

        }




    }
}

struct ProfileActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButton(isCurrentUser: false)
    }
}

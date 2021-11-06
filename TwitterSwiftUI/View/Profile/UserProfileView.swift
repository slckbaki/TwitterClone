//
//  UserProfileView.swift
//  TwitterSwiftUI
//
//  Created by Selcuk Baki on 6/11/21.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        ScrollView{
            VStack{
                ProfileHeader()
            }.padding()
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}

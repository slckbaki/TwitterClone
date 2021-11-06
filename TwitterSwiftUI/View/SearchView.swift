//
//  SearchView.swift
//  TwitterSwiftUI
//
//  Created by Selcuk Baki on 3/11/21.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    var body: some View {
        ScrollView {
            SearchBarView(textSearch: $searchText)
                .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading){
                ForEach(0..<5) { _ in
                    HStack{
                        Spacer()
                    }
                    NavigationLink(
                        destination: UserProfileView(),
                        label: {
                            UserCellView()
                        })
                }
            }.padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
    }
    
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

//
//  SearchBarView.swift
//  TwitterSwiftUI
//
//  Created by Selcuk Baki on 3/11/21.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var textSearch : String
    var body: some View {
        HStack{
            TextField("Search..", text: $textSearch)
                .padding(6)
                .padding(.horizontal, 24)
                .background(Color(.systemGray5))
                .cornerRadius(10)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }
                )

        }
        .padding(.horizontal, 10)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(textSearch: .constant("SEARCH"))
    }
}

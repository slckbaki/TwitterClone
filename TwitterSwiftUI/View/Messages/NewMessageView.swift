//
//  NewMessageView.swift
//  TwitterSwiftUI
//
//  Created by Selcuk Baki on 5/11/21.
//

import SwiftUI

struct NewMessageView: View {
    
    @State var searchText = ""
    @Binding var show : Bool
    @Binding var startChat : Bool
        var body: some View {
            ScrollView {
                SearchBarView(textSearch: $searchText)
                    .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading){
                    ForEach(0..<5) { _ in
                        HStack{
                            Spacer()
                        }
                        Button(action: {
                            self.show.toggle()
                            self.startChat.toggle()
                        }, label: {
                            UserCellView()
                        })
                    }
                }.padding(.leading, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
        }
        

}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView(show: .constant(false), startChat: .constant(false))
    }
}

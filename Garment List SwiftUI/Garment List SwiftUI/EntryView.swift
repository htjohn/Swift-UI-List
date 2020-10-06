//
//  EntryView.swift
//  Garment List SwiftUI
//
//  Created by John N on 10/3/20.
//

import SwiftUI

struct EntryScreenModalView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var listTitle = ""
//    var didAddItem: (ListItem) -> ()

var body: some View {
    NavigationView {
        VStack(alignment: .leading){
            Label("Garment Name", systemImage: "Test").padding()
            TextField("List Item", text: $listTitle).border(Color(.gray), width: 1).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
        }.frame(width: nil, height: 10, alignment: .top).background(Color.white).frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .onTapGesture {
            presentationMode.wrappedValue.dismiss()
        }.navigationBarTitle(Text("Add"))
         .navigationBarItems(trailing:
                                                             
                Button(action: { presentationMode.wrappedValue.dismiss()}) {
//                    self.didAddItem(ListItem(id: <#T##Int#>, title: <#T##String#>))
                }
         )
    }
}
}

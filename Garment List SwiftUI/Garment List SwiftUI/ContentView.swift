//
//  ContentView.swift
//  Garment List SwiftUI
//
//  Created by John N on 10/3/20.
//

import SwiftUI

struct ListItem: Identifiable{
    var id: Int
    var title: String
}

struct ContentView: View {
    
    @State private var favoriteColor = 0
    @State private var isPresented = false
    var listItems: [ListItem] = [.init(id: 0, title: "Item1"),.init(id: 1, title: "Item2"),.init(id: 2, title: "Item3")]
    
    var body: some View {
        NavigationView {
            VStack {
                Picker(selection: $favoriteColor, label: Text("List Type")) {
                             Text("Alpha").tag(0)
                             Text("Creation Time").tag(1)
                         }.pickerStyle(SegmentedPickerStyle())
                List(listItems) {
                    Text($0.title)
                }
            }.navigationBarTitle(Text("List")).navigationBarItems(trailing:
                    Button(action: {
                        self.isPresented.toggle()
                    }) {
                    Image(systemName: "plus").imageScale(.large)
                    }.foregroundColor(.black).fullScreenCover(isPresented: $isPresented, content: EntryScreenModalView.init)
          )
           
        }
     
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

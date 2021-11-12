//
//  NumbersListView.swift
//  ListTabPractice
//
//  Created by Nadzeya Shpakouskaya on 12/11/2021.
//

import SwiftUI

struct NumbersListView: View {
    let contacts: [Contact]
    
    var body: some View {
        NavigationView{
            List {
                ForEach(contacts) {
                    contact in Section(contact.fullName) {
                        HStack{
                            Image(systemName: "envelope")
                            Text(contact.email)
                        }
                        HStack{
                            Image(systemName: "phone")
                            Text(contact.phone)
                        }
                    }
                }
            }.navigationTitle("Full Contact List")
        }
    }
    
}

struct NumbersListView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersListView(contacts: DataManager().fetchData())
    }
}

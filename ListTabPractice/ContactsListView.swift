//
//  ContactsListView.swift
//  ListTabPractice
//
//  Created by Nadzeya Shpakouskaya on 12/11/2021.
//

import SwiftUI

struct ContactsListView: View {
    let contacts: [Contact]
    
    var body: some View {
    
            List(contacts) { contact in
                NavigationLink(contact.fullName) {
                    DetailedContactInfoView(contact: contact)
                }
            
            }.listStyle(.plain)
            .navigationTitle("Contacts")
     
    }
}

struct ContactsListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsListView(contacts: DataManager().fetchData())
    }
}

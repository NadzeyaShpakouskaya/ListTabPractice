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
            List(contacts) {
                contact in Section(contact.fullName) {
                    Label(contact.email, systemImage: "envelope")
                    Label(contact.phone, systemImage: "phone")
                }
            }.navigationTitle("Full Contact List")
        }
    }
    
}

struct NumbersListView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersListView(contacts: Contact.generateContacts())
    }
}

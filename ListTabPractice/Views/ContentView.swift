//
//  ContentView.swift
//  ListTabPractice
//
//  Created by Nadzeya Shpakouskaya on 12/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    let contacts: [Contact]
    
    var body: some View {
        
        TabView {
            ContactsListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            
            NumbersListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
        .accentColor(.indigo)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(contacts: Contact.generateContacts() )
        
    }
}

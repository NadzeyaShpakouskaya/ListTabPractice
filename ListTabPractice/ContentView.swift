//
//  ContentView.swift
//  ListTabPractice
//
//  Created by Nadzeya Shpakouskaya on 12/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var dataManager: DataManager
    
    @State private var contacts: [Contact]  =  []
    
    
    var body: some View {
        NavigationView{
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
        }.onAppear {
            contacts = dataManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(DataManager())
    }
}

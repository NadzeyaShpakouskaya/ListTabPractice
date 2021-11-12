//
//  ContentView.swift
//  ListTabPractice
//
//  Created by Nadzeya Shpakouskaya on 12/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var dataManager: DataManager
    
    var body: some View {
        NavigationView{
            TabView {
                ContactsListView(contacts: dataManager.fetchData())
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Contacts")
                    }
                NumbersListView(contacts: dataManager.fetchData())
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Numbers")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(DataManager())
    }
}

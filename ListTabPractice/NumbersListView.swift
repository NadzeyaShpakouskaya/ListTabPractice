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
        Text("Numbers")
    }
}

struct NumbersListView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersListView(contacts: DataManager().fetchData())
    }
}

//
//  DetailedContactInfoView.swift
//  ListTabPractice
//
//  Created by Nadzeya Shpakouskaya on 12/11/2021.
//

import SwiftUI

struct DetailedContactInfoView: View {
    let contact: Contact
    
    var body: some View {
        VStack {
            Image(systemName: "person")
                .resizable()
                .frame(width: 125, height: 125, alignment: .center)
                .foregroundColor(.indigo)
            
            ContactPersonalInfoView(contact: contact)
                .listStyle(.plain)
            
        }.navigationTitle(contact.fullName)

    }
}

struct DetailedContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactInfoView(contact: Contact.generateContact())
    }
}

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
        List {
            Image(systemName: "person")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 125, height: 125, alignment: .center)
            
         
                HStack{
                    Image(systemName: "envelope")
                    Text(contact.email)
                }
                HStack{
                    Image(systemName: "phone")
                    Text(contact.phone)
                }
                
        }.navigationTitle(contact.fullName)
         
        
    }
}

struct DetailedContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedContactInfoView(contact: Contact.generateContact())
    }
}

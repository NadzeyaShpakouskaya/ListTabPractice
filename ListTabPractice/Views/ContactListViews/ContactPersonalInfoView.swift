//
//  ContactPersonalInfoView.swift
//  ListTabPractice
//
//  Created by Nadzeya Shpakouskaya on 12/11/2021.
//

import SwiftUI


struct ContactPersonalInfoView: View {
    let contact: Contact
    
    var body: some View {
        List{
            HStack{
                Image(systemName: "envelope")
                    .foregroundColor(.indigo)
                Text(contact.email)
            }
            HStack{
                Image(systemName: "phone")
                    .foregroundColor(.indigo)
                Text(contact.phone)
            }
        }
    }
}

struct ContactPersonalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContactPersonalInfoView(contact: DataManager().generateContact())
        
    }
}

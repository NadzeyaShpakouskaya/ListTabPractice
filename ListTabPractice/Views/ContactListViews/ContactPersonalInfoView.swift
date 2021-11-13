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
            Label(contact.email, systemImage: "envelope")
            Label(contact.phone, systemImage: "phone")
        }
    }
    
 
}

struct ContactPersonalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContactPersonalInfoView(contact: Contact.generateContact())
        
    }
}

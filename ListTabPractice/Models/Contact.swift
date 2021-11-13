//
//  Contact.swift
//  ListTabPractice
//
//  Created by Nadzeya Shpakouskaya on 12/11/2021.
//

import Foundation

struct Contact: Hashable, Identifiable {
    let id: UUID
    let name: String
    let surname: String
    let email: String
    let phone: String
    let image: String?
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    
    // MARK: - Static methods
    static func generateContacts() -> [Contact] {
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        var contacts: [Contact] = []
        for index in 0...names.count - 1 {
            let contact = Contact(
                id: UUID(),
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index],
                image: "\(names[index])_\(surnames[index])"
            )
            contacts.append(contact)
        }
        
        return contacts
    }
    
    static func generateContact() -> Contact {
        Contact(id: UUID(), name: "Mark", surname: "Hatson", email: "m.hantson@email.com", phone: "+457652938", image: nil)
    }
    
}


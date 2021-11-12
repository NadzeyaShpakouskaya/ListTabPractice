//
//  DataManager.swift
//  ListTabPractice
//
//  Created by Nadzeya Shpakouskaya on 12/11/2021.
//

import Combine

class DataManager: ObservableObject {
    let objectWillChange = PassthroughSubject<DataManager, Error>()
    
    // MARK: - Initializer
    init() {}
    
    // MARK: - Public methods
    func fetchData() -> [Contact] {
        let contactList =  Contact.generateContacts()
        objectWillChange.send(self)
        return contactList
    }
}

//
//  DataManager.swift
//  ListTabPractice
//
//  Created by Nadzeya Shpakouskaya on 12/11/2021.
//

import Combine
import Foundation

class DataManager: ObservableObject {
    static let shared = DataManager()
    
    // MARK: - Initializer
    init() {
    }
    
    let names = ["John", "Tim", "Ted", "Steven", "Anna", "Maria", "Kate", "David", "Mark", "Alex"]
    
    let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jenkins", "Fill", "Green", "O'Carrol", "Stevenson", "Path"]
    let emails = ["aaaa@gmail.com", "bbbbb@gmail.com", "gdjadk@gmail.com", "fjslkdfh@gmail.com", "jflfjkefn@gmail.com", "fejdfv@gmail.com", "gerufvf@gmail.com", "nckdfh@gmail.com", "fvywefjy@gmail.com", " cadghscf@gmail.com" ]
    let phones = ["+534757643", "+1682376", "241863458", "+4738957", "+7943569832", "+346785683", "+63894769", "+634798659", "+364816513398", "+523427615"]
}

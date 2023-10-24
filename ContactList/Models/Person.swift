//
//  Person.swift
//  ContactList
//
//  Created by Nikolai Grachev on 24.10.2023.
//

import Foundation

struct Person {
    var name: String
    var surname: String
    var phone: String
    var email: String
    
    static func getShuffledArray(_ array: [String]) -> [String] {
       let newArray = array.shuffled()
        return newArray
    }

}

extension Person {
    static func getPersonInfo() -> [Person] {
        
        let person = DataStore()
        
        let shuffledNames = getShuffledArray(person.names)
        let shuffledSurnames = getShuffledArray(person.surnames)
        let shuffledPhones = getShuffledArray(person.phones)
        let shuffledEmails = getShuffledArray(person.emails)
        
        var array: [Person] = []
        
        for i in 0...4 {
            array.append(Person(name: shuffledNames[i], surname: shuffledSurnames[i], phone: shuffledPhones[i], email: shuffledEmails[i]))
        }
        return array
        
    }
  
}






//
//  Person.swift
//  PersonList_SwiftUI
//
//  Created by Maxim on 03.11.2022.
//

import Foundation

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let surname: String
    let phone: String
    let email: String

    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonList() -> [Person] {

        let data = DataManager.shared

        var persons: [Person] = []

        let names = data.names.shuffled()
        let surnames = data.surnames.shuffled()
        let phones = data.phones.shuffled()
        let emails = data.emails.shuffled()

        let itetationCount = min(
            names.count,
            surnames.count,
            phones.count,
            emails.count
        )

        for index in 0..<itetationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index]
            )

            persons.append(person)
        }

        return persons
    }
}

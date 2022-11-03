//
//  ContactList.swift
//  PersonList_SwiftUI
//
//  Created by Maxim on 03.11.2022.
//

import SwiftUI

struct ContactList: View {
    var contacts: [Person]
    var body: some View {

        List {
            ForEach(contacts, id: \.fullName) { contact in
                Text(contact.fullName)
            }
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contacts: Person.getPersonList())
    }
}

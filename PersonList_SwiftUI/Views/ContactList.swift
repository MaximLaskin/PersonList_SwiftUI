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

        NavigationView {
            List(contacts) { contact in
                NavigationLink(
                    destination: DetailsView(contacts: contact)) {
                    Text(contact.fullName)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contacts: Person.getPersonList())
    }
}

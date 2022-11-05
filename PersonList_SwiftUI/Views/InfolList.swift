//
//  InfolList.swift
//  PersonList_SwiftUI
//
//  Created by Maxim on 03.11.2022.
//

import SwiftUI

struct InfolList: View {
    var contacts: [Person]
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                Section("\(contact.fullName)") {
                    Label(contact.phone, systemImage: "phone")
                    Label(contact.email, systemImage: "tray")
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Contact List")
        }
    }
}

struct InfolList_Previews: PreviewProvider {
    static var previews: some View {
        InfolList(contacts: Person.getPersonList())
    }
}

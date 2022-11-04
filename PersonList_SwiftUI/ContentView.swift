//
//  Content View.swift
//  PersonList_SwiftUI
//
//  Created by Maxim on 03.11.2022.
//

import SwiftUI

struct Content_View: View {
    var body: some View {
        TabView {
            ContactList(contacts: Person.getPersonList())
                .tabItem {
                    Label("Contacts", systemImage: "person.3.fill")
                }
            InfolList()
                .tabItem {
                    Label("Numbers", systemImage: "phone.fill")
                }
        }
    }
}

struct Content_View_Previews: PreviewProvider {
    static var previews: some View {
        Content_View()
    }
}

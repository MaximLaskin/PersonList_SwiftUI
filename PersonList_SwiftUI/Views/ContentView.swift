//
//  Content View.swift
//  PersonList_SwiftUI
//
//  Created by Maxim on 03.11.2022.
//

import SwiftUI

struct Content_View: View {
    
    private let contacts = Person.getPersonList()
    
    var body: some View {
        TabView {
            ContactList(contacts: contacts)
                .tabItem {
                    Label("Contacts", systemImage: "person.3.fill")
                }
            InfolList(contacts: contacts)
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

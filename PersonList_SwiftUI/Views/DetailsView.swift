//
//  DetailsView.swift
//  PersonList_SwiftUI
//
//  Created by Maxim on 03.11.2022.
//

import SwiftUI

struct DetailsView: View {

    var contacts: Person
    
    var body: some View {
        List() {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                Spacer()
            }
            Label(contacts.phone, systemImage: "phone")
            Label(contacts.email, systemImage: "tray")

            Spacer()
        }
        .navigationTitle("\(contacts.fullName)")

    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(contacts: Person.getPersonList().first!)
    }
}

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
            VStack {
            Image(systemName: "person.fill")
                HStack {
                    Image(systemName: "phone")
                    Text("\(contacts.phone)")
                }
                HStack {
                    Image(systemName: "tray")
                    Text("\(contacts.email)")
                }

            }
            .navigationTitle("\(contacts.fullName)")

    }
}

//struct DetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailsView()
//    }
//}

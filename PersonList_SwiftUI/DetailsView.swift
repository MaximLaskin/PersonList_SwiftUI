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
            Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                   

                HStack {
                    Image(systemName: "phone")
                    Text("\(contacts.phone)")
                }
                HStack {
                    Image(systemName: "tray")
                    Text("\(contacts.email)")
                }
                Spacer()

            }
            .navigationTitle("\(contacts.fullName)")

    }
}

//struct DetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailsView()
//    }
//}

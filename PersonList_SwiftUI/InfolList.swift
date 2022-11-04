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

        List {
            ForEach(contacts, id: \.fullName) { contact in

                Section("\(contact.fullName)") {
                    VStack{
                        Text(contact.phone)
                        Text(contact.email)
                    }
                }
            
            }
        }
    }
}

//struct InfolList_Previews: PreviewProvider {
//    static var previews: some View {
//        InfolList()
//    }
//}

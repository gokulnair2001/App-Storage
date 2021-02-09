//
//  ContentView.swift
//  UserDefaults
//
//  Created by Gokul Nair on 09/02/21.
//

import SwiftUI

struct settings {
    static let firstNameKey = "FirstName"
    static let lastNameKey = "LastName"
    static let memberStatusKey = "status"
}

struct ContentView: View {
    @AppStorage(settings.firstNameKey) var firstName = ""
    @AppStorage(settings.lastNameKey) var lastName = ""
    @AppStorage(settings.memberStatusKey) var status = false
    var body: some View {
        NavigationView {
            VStack {
                Form{
                    Section(header: Text("Details")){
                        TextField("Firt Name", text: $firstName)
                        TextField("Last Name", text: $lastName)
                    }
                    Section(header: Text("Memeber Status")){
                        Toggle("Member", isOn: $status)
                    }
                }
            }
            .navigationTitle("User Defaults")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
            .preferredColorScheme(.dark)
    }
}

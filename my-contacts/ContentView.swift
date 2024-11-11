//
//  ContentView.swift
//  my-contacts
//
//  Created by Sahas Punchihewa on 2024-11-08.
//

import SwiftUI

struct ContentView: View {
    
    @FetchRequest(sortDescriptors: []) var contacts: FetchedResults<ContactEntity>
    @State var displaySheet: Bool = false
    

    
    func onAdd () {
        displaySheet.toggle()
    }
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(contacts) { contact in
                    VStack (alignment: .leading) {
                        Text(contact.name ?? "Unknown")
                            .font(.title2)
                            .bold()
                        
                        Text(contact.mobile ?? "Unknown")
                        
                    }
                }
            }
            .navigationTitle("My Contacts")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: onAdd, label: {
                        Label("", systemImage: "plus" )
                    })
                }
            }
            .sheet(isPresented: $displaySheet, content: {
                AddView()
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

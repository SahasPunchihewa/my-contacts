//
//  AddView.swift
//  my-contacts
//
//  Created by Sahas Punchihewa on 2024-11-08.
//

import SwiftUI

struct AddView: View {
    @State var name: String = ""
    @State var number: String = ""
    
    @Environment(\.managedObjectContext) var viewContext
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("First Name", text: $name)
                    TextField("Mobile Number", text: $number)
                }
                
                Section {
                    Button("Save") {
                        let newContact = ContactEntity(context: viewContext)
                        
                        newContact.name = name
                        newContact.mobile = number
                        
                        try? viewContext.save()
                        
                        dismiss()
                    }
                    
                    Button("Cancel") {
                        dismiss()
                    }
                    .tint(.red)
                }
            }
        }
        
    }
}

#Preview {
    AddView()
}

//
//  messageField.swift
//  chat app
//
//  Created by Tyson Laroyce Walker II on 12/12/22.
//

import SwiftUI

struct messageField: View {
    @EnvironmentObject var messagesManager: MessagesManager
    @State private var message = ""
    var body: some View {
        HStack{
            CustomTextField(placeholder: Text("Enter your message here"),text:$message).foregroundColor(.textColor)
            Button{
                messagesManager.sendMessage(text: message)
                message = ""
            }label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color("peach"))
                    .cornerRadius(50)
            }
        }.padding(.horizontal)
            .padding(.vertical,10)
            .background(Color("grey"))
            .cornerRadius(50)
            .padding()
    }
}

struct messageField_Previews: PreviewProvider {
    static var previews: some View {
        messageField().environmentObject(MessagesManager())
    }
}
struct CustomTextField:View{
    var placeholder: Text
    @Binding var text:String
    var editingChange: (Bool)->() = {_ in}
    var commit: () -> () = {}
    var body: some View{
        ZStack(alignment: .leading){
            if text.isEmpty{
                placeholder.opacity(0.5)
            }
            TextField("", text: $text, onEditingChanged: editingChange, onCommit: commit)
            
        }
    }
}

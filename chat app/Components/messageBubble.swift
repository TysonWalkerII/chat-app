//
//  messageBubble.swift
//  chat app
//
//  Created by Tyson Laroyce Walker II on 12/12/22.
//

import SwiftUI

struct messageBubble: View {
    var message:Message
    @State private var showTime = false
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing){
            HStack{
                Text(message.text).padding().background(message.received ? Color("grey") : Color("peach")).cornerRadius(30)
            }.frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
                .onTapGesture{
                    showTime.toggle()
                }
            if showTime{
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(message.received ? .leading : .trailing)
            }
        }.frame(maxWidth:.infinity, alignment: message.received ? .leading : .trailing)
            .padding(message.received ? .leading : .trailing)
            .padding(.horizontal, 10)
    }
}

struct messageBubble_Previews: PreviewProvider {
    static var previews: some View {
        messageBubble(message:  Message(id:"12345",text:"hmhmhmhmhmhmhmhhmhmhmhmhm",received: true,timestamp: Date()))
    }
}

//
//  ContentView.swift
//  chat app
//
//  Created by Tyson Laroyce Walker II on 12/12/22.
//

//Github test

import SwiftUI

struct ContentView: View {
    @StateObject var messagesManager = MessagesManager()
    var messageArray = ["sup", "sup", "stop being a simp", "no"]
    
    var body: some View {
        VStack{
            VStack{
                titleRow()
                ScrollViewReader { proxy in
                    ScrollView{
                        
                        ForEach(messagesManager.messages, id: \.id){ message in
                           messageBubble(message: message)
                        }
                    }.padding(.top, 10)
                        .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                    .onChange(of: messagesManager.lastMessageId){ id in
                        withAnimation{
                            proxy.scrollTo(id, anchor: .bottom)
                        }
                        
                    }
                }
            }.background(Color("peach"))
            
                 messageField().environmentObject(MessagesManager())
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

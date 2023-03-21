//
//  titleRow.swift
//  chat app
//
//  Created by Tyson Laroyce Walker II on 12/12/22.
//

import SwiftUI
extension Color {
  static let textColor = Color("TextColor")
}
struct titleRow: View {
    var imageUrl = URL(string: "https://preview.redd.it/4ufi4tfbl2261.jpg?auto=webp&s=179255fe9ae67e65a4a105384566597ca2f8cc0b")
    var name = "Rigby"
    var body: some View {
        HStack(spacing: 20){
            AsyncImage(url: imageUrl){ image in
                image.resizable().aspectRatio(contentMode: .fill).frame(width:50, height:50).cornerRadius(50)
            }placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading){
                Text(name).font(.title).bold().foregroundColor(.textColor)
                Text("Online").font(.caption).foregroundColor(.gray)
            }.frame(maxWidth: .infinity, alignment: .leading)
            Image(systemName: "phone.fill").foregroundColor(.gray).padding(10)
                .background(.white)
                .cornerRadius(50)
            
        }.padding()
    }
}

struct titleRow_Previews: PreviewProvider {
    static var previews: some View {
        titleRow()
            .background(Color("peach"))
    }
}

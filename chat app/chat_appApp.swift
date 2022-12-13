//
//  chat_appApp.swift
//  chat app
//
//  Created by Tyson Laroyce Walker II on 12/12/22.
//

import SwiftUI
import Firebase
@main
struct chat_appApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

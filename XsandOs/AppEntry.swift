//
//  XsandOsApp.swift
//  XsandOs
//
//  Created by Albert Florido  on 10/13/23.
//

import SwiftUI

@main
struct AppEntry: App {
    @StateObject var game = GameService()
    var body: some Scene {
        WindowGroup {
            StartView()
                .environmentObject(GameService())
        }
    }
}

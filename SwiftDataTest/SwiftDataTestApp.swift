//
//  SwiftDataTestApp.swift
//  SwiftDataTest
//
//  Created by Graham Hall on 6/6/23.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataTestApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}

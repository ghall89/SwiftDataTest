import SwiftUI
import SwiftData

@main
struct SwiftDataTestApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Entry.self)
    }
}

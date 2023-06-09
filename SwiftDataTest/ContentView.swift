import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var entries: [Entry]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(entries) { entry in
                    NavigationLink {
											EntryView(entry: entry)
                    } label: {
											VStack {
												Text(entry.text)
												Text(entry.timestamp, format: Date.FormatStyle(date: .numeric, time: .shortened))
													.font(.caption)
											}
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
					let newItem = Entry(timestamp: Date(), text: "New Entry")
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(entries[index])
            }
        }
    }
}

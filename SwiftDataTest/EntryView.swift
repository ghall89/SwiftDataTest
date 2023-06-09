import SwiftUI

struct EntryView: View {
	@Bindable var entry: Entry
	
	var body: some View {
		ScrollView {
			VStack {
				TextField("Text", text: $entry.text)
					.textFieldStyle(.roundedBorder)
			}
			.padding()
		}
	}
}

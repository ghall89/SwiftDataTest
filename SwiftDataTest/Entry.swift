import Foundation
import SwiftData

@Model
final class Entry {
	var timestamp: Date
	var text: String
	
	init(timestamp: Date, text: String) {
		self.timestamp = timestamp
		self.text = text
	}
}


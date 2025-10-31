// Syrup auto-generated file
import Foundation

public extension StarWarsAPI {
	enum LogotypeAlignment: String, Codable, CaseIterable {
		case `left` = "left"
		case `right` = "right"
		case unknownValue = ""

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			let stringValue = try container.decode(String.self)
			if let value = LogotypeAlignment(rawValue: stringValue) {
				self = value
			} else {
				self = .unknownValue
			}
		}

		public static var allCases: [LogotypeAlignment] = [
			.`left`,
			.`right`,
		]
	}
}

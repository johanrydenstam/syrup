// Syrup auto-generated file
import Foundation

public extension StarWarsAPI {
	enum PresentationHint: String, Codable, CaseIterable {
		case breakingnews = "breakingNews"
		case superherologoleft = "superheroLogoLeft"
		case superherologoright = "superheroLogoRight"
		case `default` = "default"
		case unknownValue = ""

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			let stringValue = try container.decode(String.self)
			if let value = PresentationHint(rawValue: stringValue) {
				self = value
			} else {
				self = .unknownValue
			}
		}

		public static var allCases: [PresentationHint] = [
			.breakingnews,
			.superherologoleft,
			.superherologoright,
			.`default`,
		]
	}
}

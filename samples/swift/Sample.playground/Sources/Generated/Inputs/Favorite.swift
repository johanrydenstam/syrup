// Syrup auto-generated file
import Foundation

public extension StarWarsAPI {
	final class Favorite: Encodable, Equatable {
		// MARK: - Input Fields
			public var id: String

		// MARK: - Initializer
		public init(id: String) {
			self.id = id
		}

		enum CodingKeys: String, CodingKey {
				case id
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(id, forKey: .id)
		}

		public static func ==(lhs: Favorite, rhs: Favorite) -> Bool {
					return lhs.id == rhs.id
		}
	}
}

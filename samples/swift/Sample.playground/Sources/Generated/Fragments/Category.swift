// Syrup auto-generated file
import Foundation

public extension StarWarsAPI {
struct Category: GraphApiResponse, Equatable {
	// MARK: - Response Fields
		///  Unique identifier for genre 
		public var id: GraphID
		///  Image from Edith is used, see rules on contento startpage 
		public var image: Image?
		///  The name of the genre, e.g. "Samhälle & fakta" 
		public var name: String

	// MARK: - Helpers
	public let __typename: String

	public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
	public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder

	public init(id: GraphID, image: Image?, name: String) {
			self.id = id
			self.image = image
			self.name = name
			self.__typename = "Genre"
	}

		// MARK: - Nested Types
			public struct Image: GraphApiResponse, Equatable {
		// MARK: - Response Fields
			public var id: GraphID
			public var changed: Int32
			public var blurHash: String
		// MARK: - Helpers
		public let __typename: String
		public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
		public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
		public init(id: GraphID, changed: Int32, blurHash: String) {
				self.id = id
				self.changed = changed
				self.blurHash = blurHash
				self.__typename = "Image"
		}
	}
}
}

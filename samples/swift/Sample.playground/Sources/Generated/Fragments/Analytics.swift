// Syrup auto-generated file
import Foundation

public extension StarWarsAPI {
struct Analytics: GraphApiResponse, Equatable {
	// MARK: - Response Fields
		/// The mergeable flag, when set to true, indicates that the analytics data should be combined
		/// from the current level to lower levels, facilitating a comprehensive analysis of user interactions.
		/// Data marked with the mergeable flag as false is restricted to its original level, ensuring it is
		/// not inappropriately integrated into broader analytics.
		public var mergeable: Bool
		/// List of key value pairs for tracking
		/// map {
		/// ... on StringAnalyticsValue{
		/// key
		/// stringValue
		/// }
		/// ... on NumericAnalyticsValue{
		/// key
		/// numericValue
		/// }
		/// }
		public var map: [Map]

	// MARK: - Helpers
	public let __typename: String

	public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
	public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder

	public init(mergeable: Bool, map: [Map]) {
			self.mergeable = mergeable
			self.map = map
			self.__typename = "Analytics"
	}

		// MARK: - Nested Types
public struct Map: GraphApiResponse, Equatable {
	public var realized: Realized
	public var __typename: String
	public enum Realized: Equatable {
			case numericAnalyticsValue(NumericAnalyticsValue)
			case stringAnalyticsValue(StringAnalyticsValue)
		case unknown
	}
	public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
	public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
	private enum CodingKeys: String, CodingKey {
		case __typename = "__typename"
	}
	public init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: CodingKeys.self)
		self.__typename = try container.decode(String.self, forKey: .__typename)
		switch __typename {
			case "NumericAnalyticsValue":
				self.realized = .numericAnalyticsValue(try NumericAnalyticsValue(from: decoder))
			case "StringAnalyticsValue":
				self.realized = .stringAnalyticsValue(try StringAnalyticsValue(from: decoder))
		default:
			self.realized = .unknown
		}
	}
	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		try container.encode(__typename, forKey: .__typename)
		switch realized {
			case .numericAnalyticsValue(let value):
				try value.encode(to: encoder)
			case .stringAnalyticsValue(let value):
				try value.encode(to: encoder)
		case .unknown:
			break
		}
	}
	public init(__typename: String, realized: Realized) {
		self.__typename = __typename
		self.realized = realized
	}
public struct NumericAnalyticsValue: GraphApiResponse, Equatable {
	// MARK: - Response Fields
		public var key: String
		public var numericValue: Double
	// MARK: - Helpers
	public let __typename: String
	public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
	public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
	public init(key: String, numericValue: Double) {
			self.key = key
			self.numericValue = numericValue
			self.__typename = "NumericAnalyticsValue"
	}
}
public struct StringAnalyticsValue: GraphApiResponse, Equatable {
	// MARK: - Response Fields
		public var key: String
		public var stringValue: String
	// MARK: - Helpers
	public let __typename: String
	public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
	public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
	public init(key: String, stringValue: String) {
			self.key = key
			self.stringValue = stringValue
			self.__typename = "StringAnalyticsValue"
	}
}
}
}
}

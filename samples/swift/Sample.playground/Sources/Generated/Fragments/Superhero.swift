// Syrup auto-generated file
import Foundation

public extension StarWarsAPI {
struct Superhero: GraphApiResponse, Equatable {
	// MARK: - Response Fields
		///  Same as module id 
		public var id: String
		///  Main heading (rubrik) to be used when displaying this item in a list. Context-sensitive, depending on in which selection this teaser is shown. 
		public var heading: String
		///  Sub heading (underrubrik) to be used when displaying this item in a list. Context-sensitive, depending on in which selection this teaser is shown. 
		public var subheading: String
		///  Id of the video to play for this hero 
		public var videoSvtId: String
		///  Parent title id or same as svtId for this item if the teaser is a title
		public var titleSvtId: String
		public var analytics: Analytics
		///  The wide and portrait images without keyart to be used for the superhero 
		public var cleanImages: CleanImages
		public var svtId: String
		public var logotype: Logotype
		public var badge: Badge?

	// MARK: - Helpers
	public let __typename: String

	public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
	public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder

	public init(id: String, heading: String, subheading: String, videoSvtId: String, titleSvtId: String, analytics: Analytics, cleanImages: CleanImages, svtId: String, logotype: Logotype, badge: Badge?) {
			self.id = id
			self.heading = heading
			self.subheading = subheading
			self.videoSvtId = videoSvtId
			self.titleSvtId = titleSvtId
			self.analytics = analytics
			self.cleanImages = cleanImages
			self.svtId = svtId
			self.logotype = logotype
			self.badge = badge
			self.__typename = "Superhero"
	}

		// MARK: - Nested Types
			public struct Analytics: GraphApiResponse, Equatable {
		// MARK: - Response Fields
			/// The mergeable flag, when set to true, indicates that the analytics data should be combined
			/// from the current level to lower levels, facilitating a comprehensive analysis of user interactions.
			/// Data marked with the mergeable flag as false is restricted to its original level, ensuring it is
			/// not inappropriately integrated into broader analytics.
			public var mergeable: Bool {
				get {
					return asAnalyticsFragment.mergeable
				}
				set {
					asAnalyticsFragment.mergeable = newValue
				}
			}
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
			public var map: [StarWarsAPI.Analytics.Map] {
				get {
					return asAnalyticsFragment.map
				}
				set {
					asAnalyticsFragment.map = newValue
				}
			}
			public var asAnalyticsFragment: StarWarsAPI.Analytics
		// MARK: - Helpers
		public let __typename: String
		public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
		public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
			private enum CodingKeys: String, CodingKey {
				case __typename
					case asAnalyticsFragment = "fragment:asAnalyticsFragment"
			}
			public init(from decoder: Decoder) throws {
				let container = try decoder.container(keyedBy: CodingKeys.self)
				self.__typename = try container.decode(String.self, forKey: .__typename)
					do {
						self.asAnalyticsFragment = try StarWarsAPI.Analytics(from: decoder)
					} catch let originalError {
						do {
							self.asAnalyticsFragment = try container.decode(StarWarsAPI.Analytics.self, forKey: .asAnalyticsFragment)
						} catch {
								throw originalError
						}
					}
			}
		public init(analyticsFragment: StarWarsAPI.Analytics) {
				self.asAnalyticsFragment = analyticsFragment
				self.__typename = "Analytics"
		}
	}
			public struct CleanImages: GraphApiResponse, Equatable {
		// MARK: - Response Fields
			public var wide: Wide
		// MARK: - Helpers
		public let __typename: String
		public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
		public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
		public init(wide: Wide) {
				self.wide = wide
				self.__typename = "CleanImages"
		}
			// MARK: - Nested Types
				public struct Wide: GraphApiResponse, Equatable {
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
			public struct Logotype: GraphApiResponse, Equatable {
		// MARK: - Response Fields
			public var image: Image?
			public var logotypeAlignment: LogotypeAlignment
		// MARK: - Helpers
		public let __typename: String
		public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
		public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
		public init(image: Image?, logotypeAlignment: LogotypeAlignment) {
				self.image = image
				self.logotypeAlignment = logotypeAlignment
				self.__typename = "Logotype"
		}
			// MARK: - Nested Types
				public struct Image: GraphApiResponse, Equatable {
			// MARK: - Response Fields
				public var id: GraphID
				public var changed: Int32
				public var blurHash: String
				public var width: Int32?
				public var height: Int32?
			// MARK: - Helpers
			public let __typename: String
			public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
			public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
			public init(id: GraphID, changed: Int32, blurHash: String, width: Int32?, height: Int32?) {
					self.id = id
					self.changed = changed
					self.blurHash = blurHash
					self.width = width
					self.height = height
					self.__typename = "Image"
			}
		}
	}
			public struct Badge: GraphApiResponse, Equatable {
		// MARK: - Response Fields
			public var text: String
			///  Textual description of the badge for accessibility (screen reading and other) purposes, can be empty 
			public var altText: String
			///  The suggested background color of the badge, in hex format 
			public var backgroundColor: String
			///  The suggested text color of the badge, in hex format 
			public var textColor: String
		// MARK: - Helpers
		public let __typename: String
		public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
		public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
		public init(text: String, altText: String, backgroundColor: String, textColor: String) {
				self.text = text
				self.altText = altText
				self.backgroundColor = backgroundColor
				self.textColor = textColor
				self.__typename = "Badge"
		}
	}
}
}

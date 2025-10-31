// Syrup auto-generated file
import Foundation

public extension StarWarsAPI {
struct Teaser: GraphApiResponse, Equatable {
	// MARK: - Response Fields
		///  Ingångsord 
		public var byline: String
		///  The name of the item when shown in this list. May differ from the actual name of the item. 
		public var name: String
		///  Custom short description that can be placed on a small area e.g an Image 
		public var description: String
		///  Sub heading (underrubrik) to be used when displaying this item in a list. Context-sensitive, depending on in which selection this teaser is shown. 
		public var subHeading: String
		///  The watch progress if the teaser is for a playable item that has watch progress 
		public var progressFraction: Int32?
		///  true if the item or the associated title is marked as a favorite 
		public var isFavorite: Bool
		public var analytics: Analytics
		///  The badge (overlay/label) for a teaser, for example Live broadcast, Öppet Arkiv, Upcoming, Last chance 
		public var badge: Badge?
		///  Either wide or Portrait depending on the parent selection's listPresentation  
		public var adaptiveImage: AdaptiveImage
		///  The item we tease for 
		public var item: Item

	// MARK: - Helpers
	public let __typename: String

	public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
	public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder

	public init(byline: String, name: String, description: String, subHeading: String, progressFraction: Int32?, isFavorite: Bool, analytics: Analytics, badge: Badge?, adaptiveImage: AdaptiveImage, item: Item) {
			self.byline = byline
			self.name = name
			self.description = description
			self.subHeading = subHeading
			self.progressFraction = progressFraction
			self.isFavorite = isFavorite
			self.analytics = analytics
			self.badge = badge
			self.adaptiveImage = adaptiveImage
			self.item = item
			self.__typename = "Teaser"
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
			public struct Badge: GraphApiResponse, Equatable {
		// MARK: - Response Fields
			public var text: String
			///  Textual description of the badge for accessibility (screen reading and other) purposes, can be empty 
			public var altText: String
			///  The suggested text color of the badge, in hex format 
			public var textColor: String
			///  The suggested background color of the badge, in hex format 
			public var backgroundColor: String
		// MARK: - Helpers
		public let __typename: String
		public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
		public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
		public init(text: String, altText: String, textColor: String, backgroundColor: String) {
				self.text = text
				self.altText = altText
				self.textColor = textColor
				self.backgroundColor = backgroundColor
				self.__typename = "Badge"
		}
	}
			public struct AdaptiveImage: GraphApiResponse, Equatable {
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
public struct Item: GraphApiResponse, Equatable {
	public var realized: Realized
	private var common: BaseListable
	public var __typename: String
	// MARK: - Common Fields
		///  New unique identifier 
		public var svtId: String {
			get {
				return common.svtId
			}
			set {
				common.svtId = newValue
			}
		}
		/// Default playable video id for this item. Can be used to match a variant
		/// to an episode item on a detail page, for example to render progress from
		/// local storage or match selected item
		public var videoSvtId: String {
			get {
				return common.videoSvtId
			}
			set {
				common.videoSvtId = newValue
			}
		}
		/// Parent to which this belongs. Content will return itself.
		public var parent: Parent? {
			get {
				return common.parent
			}
			set {
				common.parent = newValue
			}
		}
		///  The episode this playable belongs to. Examples: Variant will return the Episode or Single to which it belongs.
		/// Single and Episode it will return itself. Clip and Trailer will return itself because it has no episode playable. 
		public var episode: Episode? {
			get {
				return common.episode
			}
			set {
				common.episode = newValue
			}
		}
	public enum Realized: Equatable {
		case base(BaseListable)
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
		default:
			self.realized = .base(try BaseListable(from: decoder))
		}
		self.common = try BaseListable(from: decoder)
	}
	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		try container.encode(__typename, forKey: .__typename)
		switch realized {
		case .base(let value):
			try value.encode(to: encoder)
		}
	}
	public init(__typename: String, realized: Realized, svtId: String, videoSvtId: String, parent: Parent?, episode: Episode?) {
		self.__typename = __typename
		self.realized = realized
		self.common = BaseListable(svtId: svtId, videoSvtId: videoSvtId, parent: parent, episode: episode)
	}
public struct BaseListable: GraphApiResponse, Equatable {
	// MARK: - Response Fields
		///  New unique identifier 
		public var svtId: String
		/// Default playable video id for this item. Can be used to match a variant
		/// to an episode item on a detail page, for example to render progress from
		/// local storage or match selected item
		public var videoSvtId: String
		/// Parent to which this belongs. Content will return itself.
		public var parent: Parent?
		///  The episode this playable belongs to. Examples: Variant will return the Episode or Single to which it belongs.
		/// Single and Episode it will return itself. Clip and Trailer will return itself because it has no episode playable. 
		public var episode: Episode?
	// MARK: - Helpers
	public let __typename: String
	public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
	public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
	public init(svtId: String, videoSvtId: String, parent: Parent?, episode: Episode?) {
			self.svtId = svtId
			self.videoSvtId = videoSvtId
			self.parent = parent
			self.episode = episode
			self.__typename = "Listable"
	}
		// MARK: - Nested Types
public struct Parent: GraphApiResponse, Equatable {
	public var realized: Realized
	private var common: BaseContent
	public var __typename: String
	// MARK: - Common Fields
		///  New unique identifier 
		public var svtId: String {
			get {
				return common.svtId
			}
			set {
				common.svtId = newValue
			}
		}
		///  The name of the item. Follows all the presentation rules for our services. 
		public var name: String {
			get {
				return common.name
			}
			set {
				common.name = newValue
			}
		}
	public enum Realized: Equatable {
		case base(BaseContent)
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
		default:
			self.realized = .base(try BaseContent(from: decoder))
		}
		self.common = try BaseContent(from: decoder)
	}
	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		try container.encode(__typename, forKey: .__typename)
		switch realized {
		case .base(let value):
			try value.encode(to: encoder)
		}
	}
	public init(__typename: String, realized: Realized, svtId: String, name: String) {
		self.__typename = __typename
		self.realized = realized
		self.common = BaseContent(svtId: svtId, name: name)
	}
public struct BaseContent: GraphApiResponse, Equatable {
	// MARK: - Response Fields
		///  New unique identifier 
		public var svtId: String
		///  The name of the item. Follows all the presentation rules for our services. 
		public var name: String
	// MARK: - Helpers
	public let __typename: String
	public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
	public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
	public init(svtId: String, name: String) {
			self.svtId = svtId
			self.name = name
			self.__typename = "Content"
	}
}
}
public struct Episode: GraphApiResponse, Equatable {
	public var realized: Realized
	private var common: BasePlayable
	public var __typename: String
	// MARK: - Common Fields
		///  New unique identifier 
		public var svtId: String {
			get {
				return common.svtId
			}
			set {
				common.svtId = newValue
			}
		}
	public enum Realized: Equatable {
		case base(BasePlayable)
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
		default:
			self.realized = .base(try BasePlayable(from: decoder))
		}
		self.common = try BasePlayable(from: decoder)
	}
	public func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		try container.encode(__typename, forKey: .__typename)
		switch realized {
		case .base(let value):
			try value.encode(to: encoder)
		}
	}
	public init(__typename: String, realized: Realized, svtId: String) {
		self.__typename = __typename
		self.realized = realized
		self.common = BasePlayable(svtId: svtId)
	}
public struct BasePlayable: GraphApiResponse, Equatable {
	// MARK: - Response Fields
		///  New unique identifier 
		public var svtId: String
	// MARK: - Helpers
	public let __typename: String
	public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
	public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
	public init(svtId: String) {
			self.svtId = svtId
			self.__typename = "Playable"
	}
}
}
}
}
}
}

// Syrup auto-generated file
import Foundation

public extension StarWarsAPI {
struct Selection: GraphApiResponse, Equatable {
	// MARK: - Response Fields
		///  Unique id for the selection 
		public var id: GraphID
		///  Type of content in list. For example: recommended, latest, upcoming 
		public var selectionType: String
		///  Name of the selection, e.g. "Drama" 
		public var name: String
		///  How to present this selection, e.g. "showcase" 
		public var listPresentation: ListPresentation
		///  Hint on how to present special case e.g. breaking mode or 'super hero left/right' in Showcase window 
		public var presentationHint: PresentationHint
		public var analytics: Analytics
		///  List containing teaser data 
		public var items: [Items]

	// MARK: - Helpers
	public let __typename: String

	public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
	public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder

	public init(id: GraphID, selectionType: String, name: String, listPresentation: ListPresentation, presentationHint: PresentationHint, analytics: Analytics, items: [Items]) {
			self.id = id
			self.selectionType = selectionType
			self.name = name
			self.listPresentation = listPresentation
			self.presentationHint = presentationHint
			self.analytics = analytics
			self.items = items
			self.__typename = "Selection"
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
			public struct Items: GraphApiResponse, Equatable {
		// MARK: - Response Fields
			///  Ingångsord 
			public var byline: String {
				get {
					return asTeaserFragment.byline
				}
				set {
					asTeaserFragment.byline = newValue
				}
			}
			///  The name of the item when shown in this list. May differ from the actual name of the item. 
			public var name: String {
				get {
					return asTeaserFragment.name
				}
				set {
					asTeaserFragment.name = newValue
				}
			}
			///  Custom short description that can be placed on a small area e.g an Image 
			public var description: String {
				get {
					return asTeaserFragment.description
				}
				set {
					asTeaserFragment.description = newValue
				}
			}
			///  Sub heading (underrubrik) to be used when displaying this item in a list. Context-sensitive, depending on in which selection this teaser is shown. 
			public var subHeading: String {
				get {
					return asTeaserFragment.subHeading
				}
				set {
					asTeaserFragment.subHeading = newValue
				}
			}
			///  The watch progress if the teaser is for a playable item that has watch progress 
			public var progressFraction: Int32? {
				get {
					return asTeaserFragment.progressFraction
				}
				set {
					asTeaserFragment.progressFraction = newValue
				}
			}
			///  true if the item or the associated title is marked as a favorite 
			public var isFavorite: Bool {
				get {
					return asTeaserFragment.isFavorite
				}
				set {
					asTeaserFragment.isFavorite = newValue
				}
			}
			public var analytics: StarWarsAPI.Teaser.Analytics {
				get {
					return asTeaserFragment.analytics
				}
				set {
					asTeaserFragment.analytics = newValue
				}
			}
			///  The badge (overlay/label) for a teaser, for example Live broadcast, Öppet Arkiv, Upcoming, Last chance 
			public var badge: StarWarsAPI.Teaser.Badge? {
				get {
					return asTeaserFragment.badge
				}
				set {
					asTeaserFragment.badge = newValue
				}
			}
			///  Either wide or Portrait depending on the parent selection's listPresentation  
			public var adaptiveImage: StarWarsAPI.Teaser.AdaptiveImage {
				get {
					return asTeaserFragment.adaptiveImage
				}
				set {
					asTeaserFragment.adaptiveImage = newValue
				}
			}
			///  The item we tease for 
			public var item: StarWarsAPI.Teaser.Item {
				get {
					return asTeaserFragment.item
				}
				set {
					asTeaserFragment.item = newValue
				}
			}
			public var asTeaserFragment: StarWarsAPI.Teaser
		// MARK: - Helpers
		public let __typename: String
		public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
		public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
			private enum CodingKeys: String, CodingKey {
				case __typename
					case asTeaserFragment = "fragment:asTeaserFragment"
			}
			public init(from decoder: Decoder) throws {
				let container = try decoder.container(keyedBy: CodingKeys.self)
				self.__typename = try container.decode(String.self, forKey: .__typename)
					do {
						self.asTeaserFragment = try StarWarsAPI.Teaser(from: decoder)
					} catch let originalError {
						do {
							self.asTeaserFragment = try container.decode(StarWarsAPI.Teaser.self, forKey: .asTeaserFragment)
						} catch {
								throw originalError
						}
					}
			}
		public init(teaserFragment: StarWarsAPI.Teaser) {
				self.asTeaserFragment = teaserFragment
				self.__typename = "Teaser"
		}
	}
}
}

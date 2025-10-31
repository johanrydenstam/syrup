// Syrup auto-generated file
import Foundation

public extension StarWarsAPI {
struct Breaking: GraphApiResponse, Equatable {
	// MARK: - Response Fields
		public var analytics: Analytics
		public var id: String
		public var level: String
		public var heading: String
		public var subheading: String
		public var svtId: String
		public var videoSvtId: String
		public var tagline: String
		public var presentationHints: PresentationHints
		public var image: Image
		public var badge: Badge?
		public var live: Live?
		public var playButtonText: String
		public var relatedList: RelatedList?

	// MARK: - Helpers
	public let __typename: String

	public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
	public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder

	public init(analytics: Analytics, id: String, level: String, heading: String, subheading: String, svtId: String, videoSvtId: String, tagline: String, presentationHints: PresentationHints, image: Image, badge: Badge?, live: Live?, playButtonText: String, relatedList: RelatedList?) {
			self.analytics = analytics
			self.id = id
			self.level = level
			self.heading = heading
			self.subheading = subheading
			self.svtId = svtId
			self.videoSvtId = videoSvtId
			self.tagline = tagline
			self.presentationHints = presentationHints
			self.image = image
			self.badge = badge
			self.live = live
			self.playButtonText = playButtonText
			self.relatedList = relatedList
			self.__typename = "Breaking"
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
			public struct PresentationHints: GraphApiResponse, Equatable {
		// MARK: - Response Fields
			///  Is this something that can be played? 
			public var playable: Bool
			///  Should this item be displayed in a prominent way? 
			public var prominent: Bool
		// MARK: - Helpers
		public let __typename: String
		public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
		public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
		public init(playable: Bool, prominent: Bool) {
				self.playable = playable
				self.prominent = prominent
				self.__typename = "PresentationHints"
		}
	}
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
			public struct Live: GraphApiResponse, Equatable {
		// MARK: - Response Fields
			/// liveNow is true when the PK (Playout) systems says the program is live. There might be some delay between liveNow being true
			/// and the Video-api responding with video-links.
			public var liveNow: Bool
		// MARK: - Helpers
		public let __typename: String
		public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
		public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
		public init(liveNow: Bool) {
				self.liveNow = liveNow
				self.__typename = "Live"
		}
	}
			public struct RelatedList: GraphApiResponse, Equatable {
		// MARK: - Response Fields
			///  Unique id for the selection 
			public var id: GraphID {
				get {
					return asSelectionFragment.id
				}
				set {
					asSelectionFragment.id = newValue
				}
			}
			///  Type of content in list. For example: recommended, latest, upcoming 
			public var selectionType: String {
				get {
					return asSelectionFragment.selectionType
				}
				set {
					asSelectionFragment.selectionType = newValue
				}
			}
			///  Name of the selection, e.g. "Drama" 
			public var name: String {
				get {
					return asSelectionFragment.name
				}
				set {
					asSelectionFragment.name = newValue
				}
			}
			///  How to present this selection, e.g. "showcase" 
			public var listPresentation: ListPresentation {
				get {
					return asSelectionFragment.listPresentation
				}
				set {
					asSelectionFragment.listPresentation = newValue
				}
			}
			///  Hint on how to present special case e.g. breaking mode or 'super hero left/right' in Showcase window 
			public var presentationHint: PresentationHint {
				get {
					return asSelectionFragment.presentationHint
				}
				set {
					asSelectionFragment.presentationHint = newValue
				}
			}
			public var analytics: StarWarsAPI.Selection.Analytics {
				get {
					return asSelectionFragment.analytics
				}
				set {
					asSelectionFragment.analytics = newValue
				}
			}
			///  List containing teaser data 
			public var items: [StarWarsAPI.Selection.Items] {
				get {
					return asSelectionFragment.items
				}
				set {
					asSelectionFragment.items = newValue
				}
			}
			public var asSelectionFragment: StarWarsAPI.Selection
		// MARK: - Helpers
		public let __typename: String
		public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
		public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
			private enum CodingKeys: String, CodingKey {
				case __typename
					case asSelectionFragment = "fragment:asSelectionFragment"
			}
			public init(from decoder: Decoder) throws {
				let container = try decoder.container(keyedBy: CodingKeys.self)
				self.__typename = try container.decode(String.self, forKey: .__typename)
					do {
						self.asSelectionFragment = try StarWarsAPI.Selection(from: decoder)
					} catch let originalError {
						do {
							self.asSelectionFragment = try container.decode(StarWarsAPI.Selection.self, forKey: .asSelectionFragment)
						} catch {
								throw originalError
						}
					}
			}
		public init(selectionFragment: StarWarsAPI.Selection) {
				self.asSelectionFragment = selectionFragment
				self.__typename = "Selection"
		}
	}
}
}

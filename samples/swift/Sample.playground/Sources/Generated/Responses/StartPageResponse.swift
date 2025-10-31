// Syrup auto-generated file
import Foundation

public extension StarWarsAPI {
struct StartPageResponse: GraphApiResponse, Equatable {
	// MARK: - Response Fields
		/// Query for selected lists for start page, e.g. "Recommended", "Popular", "Latest", "Last chance", "Live broadcasts"
		public var startForSvtPlay: StartForSvtPlay
		/// Query for fetching data for a genre by id, e.g. "drama", "sport"
		public var genresByIds: GenresByIds?

	// MARK: - Helpers
	public let __typename: String

	public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
	public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder

	public init(startForSvtPlay: StartForSvtPlay, genresByIds: GenresByIds?) {
			self.startForSvtPlay = startForSvtPlay
			self.genresByIds = genresByIds
			self.__typename = "Query"
	}

		// MARK: - Nested Types
			public struct StartForSvtPlay: GraphApiResponse, Equatable {
		// MARK: - Response Fields
			public var analytics: Analytics
			/// List of modules for the startpage, could be of types superhero, hero, selection or favorites.
			/// If a you choose to support the hero module by having that field in your query, you will get
			/// the hero if a superhero is not present. If you choose NOT to support the hero (TV platforms)
			/// you just skip that field and the display window will be present as a selection instead.
			/// The Call to Action modules are inserted into the module list and only one are present at each time.
			/// Each CTA module has separate conditions for it to appear. The presidence rules for CTA modules are as follows:
			/// 1. survey
			/// 2. loginPromotion
			/// 3. slurpPromotion
			/// 4. pushNotificationPermission
			public var modules: Modules
			public var analyticsIdentifiers: AnalyticsIdentifiers
		// MARK: - Helpers
		public let __typename: String
		public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
		public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
		public init(analytics: Analytics, modules: Modules, analyticsIdentifiers: AnalyticsIdentifiers) {
				self.analytics = analytics
				self.modules = modules
				self.analyticsIdentifiers = analyticsIdentifiers
				self.__typename = "StartForSvtPlay"
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
				public struct Modules: GraphApiResponse, Equatable {
			// MARK: - Response Fields
				public var items: [Items]
			// MARK: - Helpers
			public let __typename: String
			public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
			public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
			public init(items: [Items]) {
					self.items = items
					self.__typename = "Modules"
			}
				// MARK: - Nested Types
					public struct Items: GraphApiResponse, Equatable {
				// MARK: - Response Fields
					///  DOM safe id for the module 
					public var id: String
					public var analytics: Analytics
					///  A superhero at the top of the start page with its display window list. This is mandatory for all platforms. 
					public var superhero: Superhero?
					///  A typical selection with teasers to display as a list on the start page.
					public var selection: Selection?
					///  The continue watching selection (Fortsätt titta). If you don't use this field it will be included in the selection field instead.
					public var continueWatching: ContinueWatching?
					///  The favorites selection (Min lista). If you don't use this field the favorite selection will not be returned. 
					public var favorites: Favorites?
					/// Users with too strict consent settings will get this banner instead of ContinueWatching
					/// missingConsentForContinueWatchingBanner @include(if: $noConsent) {
					/// heading
					/// (...)
					/// }
					public var missingConsentForContinueWatchingBanner: MissingConsentForContinueWatchingBanner?
					///  The breaking news module 
					public var breaking: Breaking?
					/// Call To Action surveys promotion. Uses abTestVariants in top level query to determine which survey to show.
					/// If the query asks for this field, it may be returned if no other Call To Action module have precedence.
					/// If a client already has answered a survey or has pressed the "Nej tack" button. please add the survey id to the surveysToExclude list.
					public var survey: Survey?
				// MARK: - Helpers
				public let __typename: String
				public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
				public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
				public init(id: String, analytics: Analytics, superhero: Superhero?, selection: Selection?, continueWatching: ContinueWatching?, favorites: Favorites?, missingConsentForContinueWatchingBanner: MissingConsentForContinueWatchingBanner?, breaking: Breaking?, survey: Survey?) {
						self.id = id
						self.analytics = analytics
						self.superhero = superhero
						self.selection = selection
						self.continueWatching = continueWatching
						self.favorites = favorites
						self.missingConsentForContinueWatchingBanner = missingConsentForContinueWatchingBanner
						self.breaking = breaking
						self.survey = survey
						self.__typename = "Module"
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
						public struct Superhero: GraphApiResponse, Equatable {
					// MARK: - Response Fields
						///  Same as module id 
						public var id: String {
							get {
								return asSuperheroFragment.id
							}
							set {
								asSuperheroFragment.id = newValue
							}
						}
						///  Main heading (rubrik) to be used when displaying this item in a list. Context-sensitive, depending on in which selection this teaser is shown. 
						public var heading: String {
							get {
								return asSuperheroFragment.heading
							}
							set {
								asSuperheroFragment.heading = newValue
							}
						}
						///  Sub heading (underrubrik) to be used when displaying this item in a list. Context-sensitive, depending on in which selection this teaser is shown. 
						public var subheading: String {
							get {
								return asSuperheroFragment.subheading
							}
							set {
								asSuperheroFragment.subheading = newValue
							}
						}
						///  Id of the video to play for this hero 
						public var videoSvtId: String {
							get {
								return asSuperheroFragment.videoSvtId
							}
							set {
								asSuperheroFragment.videoSvtId = newValue
							}
						}
						///  Parent title id or same as svtId for this item if the teaser is a title
						public var titleSvtId: String {
							get {
								return asSuperheroFragment.titleSvtId
							}
							set {
								asSuperheroFragment.titleSvtId = newValue
							}
						}
						public var analytics: StarWarsAPI.Superhero.Analytics {
							get {
								return asSuperheroFragment.analytics
							}
							set {
								asSuperheroFragment.analytics = newValue
							}
						}
						///  The wide and portrait images without keyart to be used for the superhero 
						public var cleanImages: StarWarsAPI.Superhero.CleanImages {
							get {
								return asSuperheroFragment.cleanImages
							}
							set {
								asSuperheroFragment.cleanImages = newValue
							}
						}
						public var svtId: String {
							get {
								return asSuperheroFragment.svtId
							}
							set {
								asSuperheroFragment.svtId = newValue
							}
						}
						public var logotype: StarWarsAPI.Superhero.Logotype {
							get {
								return asSuperheroFragment.logotype
							}
							set {
								asSuperheroFragment.logotype = newValue
							}
						}
						public var badge: StarWarsAPI.Superhero.Badge? {
							get {
								return asSuperheroFragment.badge
							}
							set {
								asSuperheroFragment.badge = newValue
							}
						}
						public var asSuperheroFragment: StarWarsAPI.Superhero
					// MARK: - Helpers
					public let __typename: String
					public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
					public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
						private enum CodingKeys: String, CodingKey {
							case __typename
								case asSuperheroFragment = "fragment:asSuperheroFragment"
						}
						public init(from decoder: Decoder) throws {
							let container = try decoder.container(keyedBy: CodingKeys.self)
							self.__typename = try container.decode(String.self, forKey: .__typename)
								do {
									self.asSuperheroFragment = try StarWarsAPI.Superhero(from: decoder)
								} catch let originalError {
									do {
										self.asSuperheroFragment = try container.decode(StarWarsAPI.Superhero.self, forKey: .asSuperheroFragment)
									} catch {
											throw originalError
									}
								}
						}
					public init(superheroFragment: StarWarsAPI.Superhero) {
							self.asSuperheroFragment = superheroFragment
							self.__typename = "Superhero"
					}
				}
						public struct Selection: GraphApiResponse, Equatable {
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
						public struct ContinueWatching: GraphApiResponse, Equatable {
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
						public struct Favorites: GraphApiResponse, Equatable {
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
						public struct MissingConsentForContinueWatchingBanner: GraphApiResponse, Equatable {
					// MARK: - Response Fields
						public var heading: String
						public var text: String
						public var editConsentButtonLabel: String
						public var loginButtonLabel: String
					// MARK: - Helpers
					public let __typename: String
					public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
					public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
					public init(heading: String, text: String, editConsentButtonLabel: String, loginButtonLabel: String) {
							self.heading = heading
							self.text = text
							self.editConsentButtonLabel = editConsentButtonLabel
							self.loginButtonLabel = loginButtonLabel
							self.__typename = "MissingConsentForContinueWatchingBanner"
					}
				}
						public struct Breaking: GraphApiResponse, Equatable {
					// MARK: - Response Fields
						public var analytics: StarWarsAPI.Breaking.Analytics {
							get {
								return asBreakingFragment.analytics
							}
							set {
								asBreakingFragment.analytics = newValue
							}
						}
						public var id: String {
							get {
								return asBreakingFragment.id
							}
							set {
								asBreakingFragment.id = newValue
							}
						}
						public var level: String {
							get {
								return asBreakingFragment.level
							}
							set {
								asBreakingFragment.level = newValue
							}
						}
						public var heading: String {
							get {
								return asBreakingFragment.heading
							}
							set {
								asBreakingFragment.heading = newValue
							}
						}
						public var subheading: String {
							get {
								return asBreakingFragment.subheading
							}
							set {
								asBreakingFragment.subheading = newValue
							}
						}
						public var svtId: String {
							get {
								return asBreakingFragment.svtId
							}
							set {
								asBreakingFragment.svtId = newValue
							}
						}
						public var videoSvtId: String {
							get {
								return asBreakingFragment.videoSvtId
							}
							set {
								asBreakingFragment.videoSvtId = newValue
							}
						}
						public var tagline: String {
							get {
								return asBreakingFragment.tagline
							}
							set {
								asBreakingFragment.tagline = newValue
							}
						}
						public var presentationHints: StarWarsAPI.Breaking.PresentationHints {
							get {
								return asBreakingFragment.presentationHints
							}
							set {
								asBreakingFragment.presentationHints = newValue
							}
						}
						public var image: StarWarsAPI.Breaking.Image {
							get {
								return asBreakingFragment.image
							}
							set {
								asBreakingFragment.image = newValue
							}
						}
						public var badge: StarWarsAPI.Breaking.Badge? {
							get {
								return asBreakingFragment.badge
							}
							set {
								asBreakingFragment.badge = newValue
							}
						}
						public var live: StarWarsAPI.Breaking.Live? {
							get {
								return asBreakingFragment.live
							}
							set {
								asBreakingFragment.live = newValue
							}
						}
						public var playButtonText: String {
							get {
								return asBreakingFragment.playButtonText
							}
							set {
								asBreakingFragment.playButtonText = newValue
							}
						}
						public var relatedList: StarWarsAPI.Breaking.RelatedList? {
							get {
								return asBreakingFragment.relatedList
							}
							set {
								asBreakingFragment.relatedList = newValue
							}
						}
						public var asBreakingFragment: StarWarsAPI.Breaking
					// MARK: - Helpers
					public let __typename: String
					public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
					public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
						private enum CodingKeys: String, CodingKey {
							case __typename
								case asBreakingFragment = "fragment:asBreakingFragment"
						}
						public init(from decoder: Decoder) throws {
							let container = try decoder.container(keyedBy: CodingKeys.self)
							self.__typename = try container.decode(String.self, forKey: .__typename)
								do {
									self.asBreakingFragment = try StarWarsAPI.Breaking(from: decoder)
								} catch let originalError {
									do {
										self.asBreakingFragment = try container.decode(StarWarsAPI.Breaking.self, forKey: .asBreakingFragment)
									} catch {
											throw originalError
									}
								}
						}
					public init(breakingFragment: StarWarsAPI.Breaking) {
							self.asBreakingFragment = breakingFragment
							self.__typename = "Breaking"
					}
				}
						public struct Survey: GraphApiResponse, Equatable {
					// MARK: - Response Fields
						public var id: String
						public var heading: String
						public var subHeading: String
						public var qrCodeImage: QrCodeImage
					// MARK: - Helpers
					public let __typename: String
					public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
					public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
					public init(id: String, heading: String, subHeading: String, qrCodeImage: QrCodeImage) {
							self.id = id
							self.heading = heading
							self.subHeading = subHeading
							self.qrCodeImage = qrCodeImage
							self.__typename = "Survey"
					}
						// MARK: - Nested Types
							public struct QrCodeImage: GraphApiResponse, Equatable {
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
		}
				public struct AnalyticsIdentifiers: GraphApiResponse, Equatable {
			// MARK: - Response Fields
				public var viewId: String
				public var viewType: String
			// MARK: - Helpers
			public let __typename: String
			public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
			public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
			public init(viewId: String, viewType: String) {
					self.viewId = viewId
					self.viewType = viewType
					self.__typename = "AnalyticsIdentifiers"
			}
		}
	}
			public struct GenresByIds: GraphApiResponse, Equatable {
		// MARK: - Response Fields
			///  Genres 
			public var genres: [Genres]
		// MARK: - Helpers
		public let __typename: String
		public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
		public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
		public init(genres: [Genres]) {
				self.genres = genres
				self.__typename = "Genres"
		}
			// MARK: - Nested Types
				public struct Genres: GraphApiResponse, Equatable {
			// MARK: - Response Fields
				///  Unique identifier for genre 
				public var id: GraphID {
					get {
						return asCategoryFragment.id
					}
					set {
						asCategoryFragment.id = newValue
					}
				}
				///  Image from Edith is used, see rules on contento startpage 
				public var image: StarWarsAPI.Category.Image? {
					get {
						return asCategoryFragment.image
					}
					set {
						asCategoryFragment.image = newValue
					}
				}
				///  The name of the genre, e.g. "Samhälle & fakta" 
				public var name: String {
					get {
						return asCategoryFragment.name
					}
					set {
						asCategoryFragment.name = newValue
					}
				}
				public var asCategoryFragment: StarWarsAPI.Category
			// MARK: - Helpers
			public let __typename: String
			public static let customDecoder: JSONDecoder = StarWarsAPI.customDecoder
			public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder
				private enum CodingKeys: String, CodingKey {
					case __typename
						case asCategoryFragment = "fragment:asCategoryFragment"
				}
				public init(from decoder: Decoder) throws {
					let container = try decoder.container(keyedBy: CodingKeys.self)
					self.__typename = try container.decode(String.self, forKey: .__typename)
						do {
							self.asCategoryFragment = try StarWarsAPI.Category(from: decoder)
						} catch let originalError {
							do {
								self.asCategoryFragment = try container.decode(StarWarsAPI.Category.self, forKey: .asCategoryFragment)
							} catch {
									throw originalError
							}
						}
				}
			public init(categoryFragment: StarWarsAPI.Category) {
					self.asCategoryFragment = categoryFragment
					self.__typename = "Genre"
			}
		}
	}
}
}

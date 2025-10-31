// Syrup auto-generated file
import Foundation

public extension StarWarsAPI {
	struct StartPageQuery: GraphApiQuery, ResponseAssociable, Equatable {
		// MARK: - Query Variables
			public let kidsProfile: Bool
			public let userIsAbroad: Bool
			public let history: [History]?
			public let seenSurveys: [String]
			public let abTestVariants: [AbTestVariant]
			public let favorites: [Favorite]?
			public let missingWatchHistoryConsent: Bool
			public let kidsFilter: Bool

		// MARK: - Initializer
		public init(kidsProfile: Bool, userIsAbroad: Bool, history: [History]? = nil, seenSurveys: [String], abTestVariants: [AbTestVariant], favorites: [Favorite]? = nil, missingWatchHistoryConsent: Bool, kidsFilter: Bool) {
				self.kidsProfile = kidsProfile
				self.userIsAbroad = userIsAbroad
				self.history = history
				self.seenSurveys = seenSurveys
				self.abTestVariants = abTestVariants
				self.favorites = favorites
				self.missingWatchHistoryConsent = missingWatchHistoryConsent
				self.kidsFilter = kidsFilter
		}

		// MARK: - Helpers

		public static let customEncoder: JSONEncoder = StarWarsAPI.customEncoder

		private enum CodingKeys: CodingKey {
				case kidsProfile
				case userIsAbroad
				case history
				case seenSurveys
				case abTestVariants
				case favorites
				case missingWatchHistoryConsent
				case kidsFilter
		}

		public typealias Response = StartPageResponse

		public let queryString: String = """
		fragment Analytics on Analytics { __typename mergeable map { __typename ... on StringAnalyticsValue { __typename key stringValue }... on NumericAnalyticsValue { __typename key numericValue } } } fragment Superhero on Superhero { __typename id heading subheading videoSvtId titleSvtId analytics { __typename ... Analytics } cleanImages { __typename wide { __typename id changed blurHash } } svtId logotype { __typename image { __typename id changed blurHash width height } logotypeAlignment } badge { __typename text altText backgroundColor textColor } } fragment Selection on Selection { __typename id selectionType name listPresentation presentationHint analytics { __typename ... Analytics } items { __typename ... Teaser } } fragment Teaser on Teaser { __typename byline name description subHeading progressFraction isFavorite analytics { __typename ... Analytics } badge { __typename text altText textColor backgroundColor } adaptiveImage { __typename id changed blurHash } item { __typename svtId videoSvtId parent { __typename svtId name } ... on Playable { __typename episode { __typename svtId } } } } fragment Breaking on Breaking { __typename analytics { __typename ... Analytics } id level heading subheading svtId videoSvtId tagline presentationHints { __typename playable prominent } image { __typename id changed blurHash } badge { __typename text altText backgroundColor textColor } live { __typename liveNow } playButtonText relatedList { __typename ... Selection } } fragment Category on Genre { __typename id image { __typename id changed blurHash } name } query StartPage($kidsProfile: Boolean!, $userIsAbroad: Boolean!, $history: [History!], $seenSurveys: [String!]!, $abTestVariants: [AbTestVariant!]!, $favorites: [Favorite!], $missingWatchHistoryConsent: Boolean!, $kidsFilter: Boolean!) { __typename startForSvtPlay(history: $history, abTestVariants: $abTestVariants, favorites: $favorites, kidsProfile: $kidsProfile) { __typename analytics { __typename ... Analytics } modules { __typename items { __typename id analytics { __typename ... Analytics } superhero { __typename ... Superhero } selection { __typename ... Selection } continueWatching { __typename ... Selection } favorites { __typename ... Selection } missingConsentForContinueWatchingBanner @include(if: $missingWatchHistoryConsent) { __typename heading text editConsentButtonLabel loginButtonLabel } breaking { __typename ... Breaking } survey(platform: appletv, surveysToExclude: $seenSurveys) { __typename id heading subHeading qrCodeImage { __typename id changed blurHash } } } } analyticsIdentifiers { __typename viewId viewType } } genresByIds(ids: ["syntolkat", "teckensprak"]) @include(if: $kidsProfile) { __typename genres { __typename ... Category } } }
		"""
	}
}


extension StarWarsAPI.StartPageQuery {
  public static let operationSelections: GraphSelections.Operation? = nil
}

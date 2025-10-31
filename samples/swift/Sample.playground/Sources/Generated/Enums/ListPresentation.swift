// Syrup auto-generated file
import Foundation

public extension StarWarsAPI {
	enum ListPresentation: String, Codable, CaseIterable {
		///  A selection that should be presented in the default way 
		case `default` = "Default"
		///  Promoted content. This means that it is presented in a more distinctive manner 
		case showcase = "Showcase"
		///  Playable items. Used for "snabbtittat" lists 
		case playlist = "Playlist"
		///  Present this as a season selection under a title
		case season = "Season"
		///  Content to discover related to other content 
		case discovery = "Discovery"
		///  Present this as a selection containing upcoming 
		case upcoming = "Upcoming"
		///  Should be displayed as a "Keep watching" list with for instance a progressbar 
		case keepwatching = "KeepWatching"
		///  Should be displayed with portrait poster images 
		case portraitposters = "PortraitPosters"
		///  Should be displayed as a list of categories 
		case relatedcategories = "RelatedCategories"
		///  Should be displayed as a grid 
		case grid = "Grid"
		///  Campaign mode 
		case campaign = "Campaign"
		///  Calendar view, tighter calendar list for upcoming 
		case calendar = "Calendar"
		case unknownValue = ""

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			let stringValue = try container.decode(String.self)
			if let value = ListPresentation(rawValue: stringValue) {
				self = value
			} else {
				self = .unknownValue
			}
		}

		public static var allCases: [ListPresentation] = [
			.`default`,
			.showcase,
			.playlist,
			.season,
			.discovery,
			.upcoming,
			.keepwatching,
			.portraitposters,
			.relatedcategories,
			.grid,
			.campaign,
			.calendar,
		]
	}
}

import UIKit
import PlaygroundSupport

let query = StarWarsAPI.StartPageQuery(kidsProfile: false,
                                       userIsAbroad: false,
                                       seenSurveys: [],
                                       abTestVariants: [],
                                       missingWatchHistoryConsent: false,
                                       kidsFilter: false)

let client = GraphQLClient(endpoint: URL(string: "https://contento.svt.se/graphql")!)

client.query(query, responseType: StarWarsAPI.StartPageResponse.self) { (response, error) in
	if let response = response {
        print(response.startForSvtPlay.modules.items.first?.id)
	}
}

PlaygroundPage.current.needsIndefiniteExecution = true

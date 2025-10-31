// Syrup auto-generated file
import Foundation

public extension StarWarsAPI {
	final class History: Encodable, Equatable {
		// MARK: - Input Fields
			public var id: String
			public var progressFraction: Input<Int32>
			public var progressSeconds: Input<Int32>
			public var lastEngagementTime: Input<Int32>

		// MARK: - Initializer
		public init(id: String, progressFraction: Input<Int32> = .undefined, progressSeconds: Input<Int32> = .undefined, lastEngagementTime: Input<Int32> = .undefined) {
			self.id = id
			self.progressFraction = progressFraction
			self.progressSeconds = progressSeconds
			self.lastEngagementTime = lastEngagementTime
		}

		enum CodingKeys: String, CodingKey {
				case id
				case progressFraction
				case progressSeconds
				case lastEngagementTime
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(id, forKey: .id)

	if case .value(let progressFraction) = progressFraction {
		try container.encode(progressFraction, forKey: .progressFraction)
	}

	if case .value(let progressSeconds) = progressSeconds {
		try container.encode(progressSeconds, forKey: .progressSeconds)
	}

	if case .value(let lastEngagementTime) = lastEngagementTime {
		try container.encode(lastEngagementTime, forKey: .lastEngagementTime)
	}
		}

		public static func ==(lhs: History, rhs: History) -> Bool {
					return lhs.id == rhs.id
					&& lhs.progressFraction == rhs.progressFraction
					&& lhs.progressSeconds == rhs.progressSeconds
					&& lhs.lastEngagementTime == rhs.lastEngagementTime
		}
	}
}

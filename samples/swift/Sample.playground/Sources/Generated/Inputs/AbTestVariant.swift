// Syrup auto-generated file
import Foundation

public extension StarWarsAPI {
		/// An allocated variant when participating in an A/B test
	final class AbTestVariant: Encodable, Equatable {
		// MARK: - Input Fields
			public var project: String
			public var experiment: String
			public var variant: String

		// MARK: - Initializer
		public init(project: String, experiment: String, variant: String) {
			self.project = project
			self.experiment = experiment
			self.variant = variant
		}

		enum CodingKeys: String, CodingKey {
				case project
				case experiment
				case variant
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.container(keyedBy: CodingKeys.self)

		try container.encode(project, forKey: .project)

		try container.encode(experiment, forKey: .experiment)

		try container.encode(variant, forKey: .variant)
		}

		public static func ==(lhs: AbTestVariant, rhs: AbTestVariant) -> Bool {
					return lhs.project == rhs.project
					&& lhs.experiment == rhs.experiment
					&& lhs.variant == rhs.variant
		}
	}
}

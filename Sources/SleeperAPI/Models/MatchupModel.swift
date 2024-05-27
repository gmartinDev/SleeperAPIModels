import Foundation

public struct MatchupModel: Codable {
    public let starters: [String]
    public let players: [String]
    public let rosterId: Int
    public let matchupId: Int
    public let points: Double
    
    enum CodingKeys: String, CodingKey {
        case starters
        case players
        case rosterId = "roster_id"
        case matchupId = "matchup_id"
        case points
    }
}

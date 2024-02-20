import Foundation

public struct MatchupModel: Codable {
    let starters: [String]
    let players: [String]
    let rosterId: Int
    let matchupId: Int
    let points: Double
    
    enum CodingKeys: String, CodingKey {
        case starters
        case players
        case rosterId = "roster_id"
        case matchupId = "matchup_id"
        case points
    }
}

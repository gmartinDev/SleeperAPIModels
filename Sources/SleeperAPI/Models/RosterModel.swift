import Foundation

public struct RosterModel: Codable {
    public let starters: [String]
    public let settings: RosterSettingsModel
    public let rosterId: Int
    public let reserve: [String]
    public let player: [String]
    public let ownerId: String
    public let leagueId: String
    public let keepers: [String]?
    public let coOwners: String?
    
    enum CodingKeys: String, CodingKey {
        case starters
        case settings
        case rosterId = "roster_id"
        case reserve
        case player
        case ownerId = "owner_id"
        case leagueId = "league_id"
        case keepers
        case coOwners = "co_owners"
    }
}

public struct RosterSettingsModel: Codable {
    public let wins: Int
    public let waiverPosition: Int
    public let waiverBudgetUsed: Int
    public let totalMoves: Int
    public let ties: Int
    public let losses: Int
    public let fpts: Int
    public let fptsDecimal: Int
    public let fptsAgainst: Int
    public let fptsAgainstDecimal: Int
    public let ppts: Int // Potential points total
    public let pptsDecimal: Int
    
    enum CodingKeys: String, CodingKey {
        case wins
        case waiverPosition = "waiver_position"
        case waiverBudgetUsed = "waiver_budget_used"
        case totalMoves = "total_moves"
        case ties
        case losses
        case fpts
        case fptsDecimal = "fpts_decimal"
        case fptsAgainst = "fpts_against"
        case fptsAgainstDecimal = "fpts_against_decimal"
        case ppts
        case pptsDecimal = "ppts_decimal"
    }
}

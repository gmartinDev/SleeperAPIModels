import Foundation

public struct RosterModel: Codable {
    let starters: [String]
    let settings: RosterSettingsModel
    let rosterId: Int
    let reserve: [String]
    let player: [String]
    let ownerId: String
    let leagueId: String
    let keepers: [String]?
    let coOwners: String?
    
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
    let wins: Int
    let waiverPosition: Int
    let waiverBudgetUsed: Int
    let totalMoves: Int
    let ties: Int
    let losses: Int
    let fpts: Int
    let fptsDecimal: Int
    let fptsAgainst: Int
    let fptsAgainstDecimal: Int
    let ppts: Int // Potential points total
    let pptsDecimal: Int
    
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

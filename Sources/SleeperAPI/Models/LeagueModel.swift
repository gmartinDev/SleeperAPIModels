import Foundation

public struct LeagueModel: Codable {
    let totalRosters: String
    let status: String
    let sport: String
    let settings: String
    let seasonType: String
    let season: String
    let scoringSettings: String
    let rosterPositions: String
    let previousLeagueId: String
    let name: String
    let leagueId: String
    let draftId: String
    let avatar: String
    
    enum CodingKeys: String, CodingKey {
        case totalRosters = "total_rosters"
        case status
        case sport
        case settings
        case seasonType = "season_type"
        case season
        case scoringSettings = "scoring_settings"
        case rosterPositions = "roster_positions"
        case previousLeagueId = "previous_league_id"
        case name
        case leagueId = "league_id"
        case draftId = "draft_id"
        case avatar
    }
}

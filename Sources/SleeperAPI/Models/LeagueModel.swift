import Foundation

public struct LeagueModel: Codable {
    public let totalRosters: String
    public let status: String
    public let sport: String
    public let settings: String
    public let seasonType: String
    public let season: String
    public let scoringSettings: String
    public let rosterPositions: String
    public let previousLeagueId: String
    public let name: String
    public let leagueId: String
    public let draftId: String
    public let avatar: String
    
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

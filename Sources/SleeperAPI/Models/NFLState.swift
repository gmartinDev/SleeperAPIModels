import Foundation

public struct NFLState: Codable {
    public let seasonHasScores: Bool
    public let leagueCreatedSeason: String
    public let displayWeek: Int
    public let startDate: Date?
    public let previousSeason: String
    public let leagueSeason: String
    public let season: String
    public let seasonType: String // off, pre, post, regular
    public let leg: Int
    public let week: Int
    
    enum CodingKeys: String, CodingKey {
        case seasonHasScores = "season_has_scores"
        case leagueCreatedSeason = "league_create_season"
        case displayWeek = "display_week"
        case startDate = "season_start_date"
        case previousSeason = "previous_season"
        case leagueSeason = "league_season"
        case season
        case seasonType = "season_type"
        case leg
        case week
    }
}

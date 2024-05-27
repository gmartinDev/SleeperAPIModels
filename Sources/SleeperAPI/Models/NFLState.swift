import Foundation

public struct NFLState: Codable {
    let seasonHasScores: Bool
    let leagueCreatedSeason: String
    let displayWeek: Int
    let startDate: Date?
    let previousSeason: String
    let leagueSeason: String
    let season: String
    let seasonType: String // off, pre, post, regular
    let leg: Int
    let week: Int
    
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

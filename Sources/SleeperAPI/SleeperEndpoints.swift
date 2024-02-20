import Foundation

public struct SleeperEndpoints {
    private enum Constants {
        static let scheme = "https"
        static let sleeperAPIHost = "api.sleeper.app"
        static let sleeperCDNHost = "sleepercdn.com"
        static let version = "v1"
        
        static var baseAPIURL: String {
            "\(Constants.scheme)://\(Constants.sleeperAPIHost)/\(Constants.version)"
        }
        
        static var baseCDNURL: String {
            "\(Constants.scheme)://\(Constants.sleeperCDNHost)"
        }
    }
    
    public enum PlayoffBracket: String {
        case winners = "winners_bracket"
        case losers = "loses_bracket"
    }
    
    public init() { }
    
    
    /// This endpoint returns information about the current state of the NFL
    /// - Returns: Endpoint `String` to use
    public static func getNFLState() -> String {
        "\(Constants.baseAPIURL)/state/nfl"
    }
    
    // MARK: - Avatar Endpoints
    public func getAvatar(id: String) -> String {
        "\(Constants.baseCDNURL)/avatars/\(id)"
    }
    
    public func getAvatarThumbnail(id: String) -> String {
        "\(Constants.baseCDNURL)/avatars/thumbs/\(id)"
    }
    
    // MARK: - League Endpoints
    
    /// This endpoint retrieves a specific league.
    /// - Parameter leagueId: The Id of the league to fetch
    /// - Returns: Endpoint `String` to use
    public func getLeague(leagueId: String) -> String {
        "\(Constants.baseAPIURL)/league/\(leagueId)"
    }
    
    /// This endpoint retrieves all rosters in a league.
    /// - Parameter leagueId: The Id of the league to fetch
    /// - Returns: Endpoint `String` to use
    public func getLeagueRosters(leagueId: String) -> String {
        "\(Constants.baseAPIURL)/league/\(leagueId)/rosters"
    }
    
    /// This endpoint retrieves all users in a league.
    /// - Parameter leagueId: The Id of the league to fetch
    /// - Returns: Endpoint `String` to use
    public func getLeagueUsers(leagueId: String) -> String {
        "\(Constants.baseAPIURL)/league/\(leagueId)/users"
    }
    
    /// This endpoint retrieves all matchups in a league for a given week.
    /// - Parameter leagueId: The Id of the league to fetch
    /// - Parameter week: The Id of the league to fetch
    /// - Returns: Endpoint `String` to use
    /// - Note: Each object in the list represents one team. The two teams with the same **matchup_id** match up against each other.
    public func getLeagueMatchups(leagueId: String, week: Int) -> String {
        "\(Constants.baseAPIURL)/league/\(leagueId)/matchups/\(week)"
    }
    
    /// This endpoint retrieves the playoff bracket for a league for 4, 6, and 8 team playoffs.
    /// - Parameter leagueId: The Id of the league to fetch
    /// - Parameter week: The Id of the league to fetch
    /// - Returns: Endpoint `String` to use
    public func getLeaguePlayoffBracket(leagueId: String, bracket: PlayoffBracket) -> String {
        "\(Constants.baseAPIURL)/league/\(leagueId)/\(bracket.rawValue)"
    }
    
    /// This endpoint retrieves all free agent transactions, waivers and trades.
    /// - Parameter leagueId: The Id of the league to fetch
    /// - Parameter week: The Id of the league to fetch
    /// - Returns: Endpoint `String` to use
    public func getLeagueTransactions(leagueId: String, week: Int) -> String {
        "\(Constants.baseAPIURL)/league/\(leagueId)/transactions/\(week)"
    }
    
    /// This endpoint retrieves all traded picks in a league, including future picks.
    /// - Parameter leagueId: The Id of the league to fetch
    /// - Returns: Endpoint `String` to use
    public func getLeagueTradedPicks(leagueId: String) -> String {
        "\(Constants.baseAPIURL)/league/\(leagueId)/traded_picks"
    }
    
    // MARK: - Draft Endpoints
    
    /// This endpoint retrieves all drafts for a league.
    /// - Parameter leagueId: The Id of the league to fetch
    /// - Returns: Endpoint `String` to use
    /// - Note: Keep in mind that a league can have multiple drafts, especially dynasty leagues.
    ///
    /// Drafts are sorted by most recent to earliest. Most leagues should only have one draft.
    public func getLeagueDrafts(leagueId: String) -> String {
        "\(Constants.baseAPIURL)/league/\(leagueId)/drafts"
    }
    
    /// This endpoint retrieves a specific draft.
    /// - Parameter leagueId: The Id of the league to fetch
    /// - Returns: Endpoint `String` to use
    public func getDraft(draftId: String) -> String {
        "\(Constants.baseAPIURL)/draft/\(draftId)"
    }
    
    /// This endpoint retrieves all picks in a draft.
    /// - Parameter leagueId: The Id of the league to fetch
    /// - Returns: Endpoint `String` to use
    public func getDraftPicks(draftId: String) -> String {
        "\(Constants.baseAPIURL)/draft/\(draftId)/picks"
    }
    
    /// TThis endpoint retrieves all traded picks in a draft.
    /// - Parameter leagueId: The Id of the league to fetch
    /// - Returns: Endpoint `String` to use
    public func getDraftTradedPicks(draftId: String) -> String {
        "\(Constants.baseAPIURL)/draft/\(draftId)/traded_picks"
    }
    
    // MARK: - Player Endpoints
    
    /// This endpoint retrieves all players in the nfl
    /// - Returns: Endpoint `String` to use
    /// - Important: Please use this call sparingly, as it is intended only to be used once per day at most to keep your player IDs updated. The average size of this query is 5MB.
    public func getAllPlayers() -> String {
        "\(Constants.baseAPIURL)/players/nfl"
    }
}

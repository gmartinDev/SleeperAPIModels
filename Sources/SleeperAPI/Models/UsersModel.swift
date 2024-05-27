import Foundation

public struct UsersModel: Codable {
    public let userId: String
    public let leagueId: String
    public let isOwner: Bool?
    public let isBot: Bool
    public let displayName: String
    public let avatar: String
    
    enum CodingKeys: String, CodingKey {
        case userId = "user_id"
        case leagueId = "league_id"
        case isOwner = "is_owner"
        case isBot = "is_bot"
        case displayName = "display_name"
        case avatar
    }
}

public struct UsersMetaDataModel: Codable {
    public let teamName: String?
    public let avatar: String?

    enum CodingKeys: String, CodingKey {
        case teamName = "team_name"
        case avatar
    }
}

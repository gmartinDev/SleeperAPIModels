import Foundation

public struct UsersModel: Codable {
    let userId: String
    let leagueId: String
    let isOwner: Bool?
    let isBot: Bool
    let displayName: String
    let avatar: String
    
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
    let teamName: String?
    let avatar: String?

    enum CodingKeys: String, CodingKey {
        case teamName = "team_name"
        case avatar
    }
}

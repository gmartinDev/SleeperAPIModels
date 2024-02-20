import Foundation

public struct SleeperPlayer: Codable {
    public let playerId: String
    public let firstName: String
    public let lastName: String
    public let fullName: String?
    public let age: Int?
    public let status: SleeperPlayerStatus?
    public let active: Bool
    public let injuryStatus: SleeperInjuryStatus?
    public let fantasyPositions: [SleeperNflPosition]?
    public let position: SleeperNflPosition?
    public let number: Int?
    public let height: String?
    public let weight: String?
    public let team: String?
    public let college: String?
    public let yearsExp: Int?
    public let espnId: Int?
    
    enum CodingKeys: String, CodingKey {
        case playerId = "player_id"
        case firstName = "first_name"
        case lastName = "last_name"
        case fullName = "full_name"
        case age
        case status
        case active
        case injuryStatus = "injury_status"
        case fantasyPositions = "fantasy_positions"
        case position
        case number
        case height
        case weight
        case team
        case college
        case yearsExp = "years_exp"
        case espnId = "espn_id"
    }
}

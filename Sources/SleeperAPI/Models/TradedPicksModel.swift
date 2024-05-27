import Foundation

public struct TradedPicksModel: Codable {
    public let season: Int
    public let week: Int
    public let rosterId: Int
    public let previousOwnerId: Int
    public let ownerId: Int
    
    enum CodingKeys: String, CodingKey {
        case season
        case week = "round"
        case rosterId = "roster_id"
        case previousOwnerId = "previous_owner_id"
        case ownerId = "owner_id"
    }
}

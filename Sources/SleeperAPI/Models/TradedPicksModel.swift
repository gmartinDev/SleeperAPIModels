import Foundation

public struct TradedPicksModel: Codable {
    let season: Int
    let week: Int
    let rosterId: Int
    let previousOwnerId: Int
    let ownerId: Int
    
    enum CodingKeys: String, CodingKey {
        case season
        case week = "round"
        case rosterId = "roster_id"
        case previousOwnerId = "previous_owner_id"
        case ownerId = "owner_id"
    }
}

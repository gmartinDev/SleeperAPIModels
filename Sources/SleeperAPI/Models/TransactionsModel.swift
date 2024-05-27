import Foundation

public enum TransactionType: String, Codable {
    case trade
    case waiver
    case freeAgent = "free_agent"
}

public struct TransactionsModel: Codable {
    public let type: TransactionType
    public let transactionId: String
    public let statusUpdated: Double
    public let status: String
    public let rosterIds: [String]
    public let week: Int
    public let drops: [String: Int]?
    public let draftPicks: [TradedPicksModel]
    public let creator: String
    public let created: Double
    public let consenterIds: [String]
    public let addds: [String: Int]?
    public let waiverBudget: [WaiverBudgetModel]?
    
    enum CodingKeys: String, CodingKey {
        case type
        case transactionId = "transaction_id"
        case statusUpdated = "status_updated"
        case status
        case rosterIds = "roster_ids"
        case week = "leg"
        case drops
        case draftPicks = "draft_picks"
        case creator
        case created
        case consenterIds = "consenter_ids"
        case addds
        case waiverBudget = "waiver_budget"
    }
}

public struct WaiverBudgetModel: Codable {
    public let sender: Int
    public let receiver: Int
    public let amount: Int
}

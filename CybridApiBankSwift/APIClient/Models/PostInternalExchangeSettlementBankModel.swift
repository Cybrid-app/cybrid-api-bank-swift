//
// PostInternalExchangeSettlementBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PostInternalExchangeSettlementBankModel: Codable, JSONEncodable, Hashable {

    /** The identifier of the exchange that corresponds to this settlement. */
    public var exchangeGuid: String
    /** The name of the exchange settlement. */
    public var name: String
    /** The exchange settlement's set of included trade guids. */
    public var tradeGuids: [String]

    public init(exchangeGuid: String, name: String, tradeGuids: [String]) {
        self.exchangeGuid = exchangeGuid
        self.name = name
        self.tradeGuids = tradeGuids
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case exchangeGuid = "exchange_guid"
        case name
        case tradeGuids = "trade_guids"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(exchangeGuid, forKey: .exchangeGuid)
        try container.encode(name, forKey: .name)
        try container.encode(tradeGuids, forKey: .tradeGuids)
    }
}


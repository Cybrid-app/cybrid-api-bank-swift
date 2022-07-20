//
// TradingConfigurationBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TradingConfigurationBankModel: Codable, JSONEncodable, Hashable {

    /** Auto-generated unique identifier for the exchange. */
    public var guid: String?
    /** The bank identifier. */
    public var bankGuid: String?
    /** The asset code. */
    public var asset: String?
    /** ISO8601 datetime the bank was created at. */
    public var createdAt: Date?
    /** The fees associated with the configuration */
    public var fees: [FeeBankModel]?

    public init(guid: String? = nil, bankGuid: String? = nil, asset: String? = nil, createdAt: Date? = nil, fees: [FeeBankModel]? = nil) {
        self.guid = guid
        self.bankGuid = bankGuid
        self.asset = asset
        self.createdAt = createdAt
        self.fees = fees
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case bankGuid = "bank_guid"
        case asset
        case createdAt = "created_at"
        case fees
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(bankGuid, forKey: .bankGuid)
        try container.encodeIfPresent(asset, forKey: .asset)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(fees, forKey: .fees)
    }
}


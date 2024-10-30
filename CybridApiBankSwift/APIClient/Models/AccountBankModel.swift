//
// AccountBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AccountBankModel: Codable, JSONEncodable, Hashable {

    /** The account type; one of trading, fee, fiat, gas, reserve, invoice_operations, or storage. */
    public var type: String?
    /** Auto-generated unique identifier for the account. */
    public var guid: String?
    /** ISO8601 datetime the record was created at. */
    public var createdAt: Date?
    /** ISO8601 datetime the record was last updated at. */
    public var updatedAt: Date?
    /** The asset code. */
    public var asset: String?
    /** The name of the account. */
    public var name: String?
    /** The bank identifier associated with the account. */
    public var bankGuid: String?
    /** The customer identifier associated with the account. */
    public var customerGuid: String?
    /** The amount of funds that are in the account, in base units of the asset. */
    public var platformBalance: String?
    /** The amount of funds that are in the account, in base units of the asset, that are available for use on the platform. */
    public var platformAvailable: String?
    /** The state of the account; one of storing or created. */
    public var state: String?
    /** The labels associated with the account. */
    public var labels: [String]?

    public init(type: String? = nil, guid: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, asset: String? = nil, name: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, platformBalance: String? = nil, platformAvailable: String? = nil, state: String? = nil, labels: [String]? = nil) {
        self.type = type
        self.guid = guid
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.asset = asset
        self.name = name
        self.bankGuid = bankGuid
        self.customerGuid = customerGuid
        self.platformBalance = platformBalance
        self.platformAvailable = platformAvailable
        self.state = state
        self.labels = labels
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case guid
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case asset
        case name
        case bankGuid = "bank_guid"
        case customerGuid = "customer_guid"
        case platformBalance = "platform_balance"
        case platformAvailable = "platform_available"
        case state
        case labels
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(asset, forKey: .asset)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(bankGuid, forKey: .bankGuid)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encodeIfPresent(platformBalance, forKey: .platformBalance)
        try container.encodeIfPresent(platformAvailable, forKey: .platformAvailable)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(labels, forKey: .labels)
    }
}


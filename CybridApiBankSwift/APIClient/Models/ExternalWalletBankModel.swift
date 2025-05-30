//
// ExternalWalletBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ExternalWalletBankModel: Codable, JSONEncodable, Hashable {

    /** Auto-generated unique identifier for the wallet. */
    public var guid: String?
    /** The name of the wallet. */
    public var name: String?
    /** The asset code. */
    public var asset: String?
    /** The environment that the wallet is configured for; one of sandbox or production. */
    public var environment: String?
    /** The bank identifier. */
    public var bankGuid: String?
    /** The customer identifier. */
    public var customerGuid: String?
    /** The counterparty identifier. */
    public var counterpartyGuid: String?
    /** The blockchain wallet address for the wallet. */
    public var address: String?
    /** The blockchain tag to use when transferring crypto to the wallet. */
    public var tag: String?
    /** ISO8601 datetime the record was created at. */
    public var createdAt: Date?
    /** ISO8601 datetime the record was last updated at. */
    public var updatedAt: Date?
    /** The state of the external wallet; one of storing, pending, failed, completed, deleting, or deleted. */
    public var state: String?
    /** The failure code of an external wallet (if any) */
    public var failureCode: String?

    public init(guid: String? = nil, name: String? = nil, asset: String? = nil, environment: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, counterpartyGuid: String? = nil, address: String? = nil, tag: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, state: String? = nil, failureCode: String? = nil) {
        self.guid = guid
        self.name = name
        self.asset = asset
        self.environment = environment
        self.bankGuid = bankGuid
        self.customerGuid = customerGuid
        self.counterpartyGuid = counterpartyGuid
        self.address = address
        self.tag = tag
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.state = state
        self.failureCode = failureCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case name
        case asset
        case environment
        case bankGuid = "bank_guid"
        case customerGuid = "customer_guid"
        case counterpartyGuid = "counterparty_guid"
        case address
        case tag
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case state
        case failureCode = "failure_code"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(asset, forKey: .asset)
        try container.encodeIfPresent(environment, forKey: .environment)
        try container.encodeIfPresent(bankGuid, forKey: .bankGuid)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encodeIfPresent(counterpartyGuid, forKey: .counterpartyGuid)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(tag, forKey: .tag)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(failureCode, forKey: .failureCode)
    }
}


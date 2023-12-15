//
// BankBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BankBankModel: Codable, JSONEncodable, Hashable {

    /** Auto-generated unique identifier for the bank. */
    public var guid: String
    /** The organization's identifier. */
    public var organizationGuid: String
    /** The bank's name. */
    public var name: String
    /** The bank type; one of sandbox or production. */
    public var type: String
    /** The bank's list of supported trading symbols. */
    public var supportedTradingSymbols: [String]?
    /** The bank's list of supported fiat symbols. */
    public var supportedFiatAccountAssets: [String]?
    /** The bank's list of supported country codes. */
    public var supportedCountryCodes: [String]?
    /** The bank's enabled features. */
    public var features: [String]
    /** Configuration for supporting creating routable bank accounts: one of unsupported, bank, or customer. */
    public var routableAccounts: String?
    /** ISO8601 datetime the record was created at. */
    public var createdAt: Date
    /** ISO8601 datetime the record was last updated at. */
    public var updatedAt: Date?

    public init(guid: String, organizationGuid: String, name: String, type: String, supportedTradingSymbols: [String]? = nil, supportedFiatAccountAssets: [String]? = nil, supportedCountryCodes: [String]? = nil, features: [String], routableAccounts: String? = nil, createdAt: Date, updatedAt: Date? = nil) {
        self.guid = guid
        self.organizationGuid = organizationGuid
        self.name = name
        self.type = type
        self.supportedTradingSymbols = supportedTradingSymbols
        self.supportedFiatAccountAssets = supportedFiatAccountAssets
        self.supportedCountryCodes = supportedCountryCodes
        self.features = features
        self.routableAccounts = routableAccounts
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case organizationGuid = "organization_guid"
        case name
        case type
        case supportedTradingSymbols = "supported_trading_symbols"
        case supportedFiatAccountAssets = "supported_fiat_account_assets"
        case supportedCountryCodes = "supported_country_codes"
        case features
        case routableAccounts = "routable_accounts"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(guid, forKey: .guid)
        try container.encode(organizationGuid, forKey: .organizationGuid)
        try container.encode(name, forKey: .name)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(supportedTradingSymbols, forKey: .supportedTradingSymbols)
        try container.encodeIfPresent(supportedFiatAccountAssets, forKey: .supportedFiatAccountAssets)
        try container.encodeIfPresent(supportedCountryCodes, forKey: .supportedCountryCodes)
        try container.encode(features, forKey: .features)
        try container.encodeIfPresent(routableAccounts, forKey: .routableAccounts)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
    }
}


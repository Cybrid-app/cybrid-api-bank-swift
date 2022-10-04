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

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case sandbox = "sandbox"
        case production = "production"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum FeaturesBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case attestationIdentityRecords = "attestation_identity_records"
        case backstoppedFundingSource = "backstopped_funding_source"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Auto-generated unique identifier for the bank. */
    public var guid: String
    /** The organization's identifier. */
    public var organizationGuid: String
    /** The bank's name. */
    public var name: String
    /** The bank's type. */
    public var type: TypeBankModel
    /** The bank's list of supported trading symbols. */
    public var supportedTradingSymbols: [String]?
    /** The bank's list of supported fiat symbols. */
    public var supportedFiatAccountAssets: [String]?
    /** The bank's enabled features. */
    public var features: [FeaturesBankModel]
    /** ISO8601 datetime the bank was created at. */
    public var createdAt: Date

    public init(guid: String, organizationGuid: String, name: String, type: TypeBankModel, supportedTradingSymbols: [String]? = nil, supportedFiatAccountAssets: [String]? = nil, features: [FeaturesBankModel], createdAt: Date) {
        self.guid = guid
        self.organizationGuid = organizationGuid
        self.name = name
        self.type = type
        self.supportedTradingSymbols = supportedTradingSymbols
        self.supportedFiatAccountAssets = supportedFiatAccountAssets
        self.features = features
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case organizationGuid = "organization_guid"
        case name
        case type
        case supportedTradingSymbols = "supported_trading_symbols"
        case supportedFiatAccountAssets = "supported_fiat_account_assets"
        case features
        case createdAt = "created_at"
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
        try container.encode(features, forKey: .features)
        try container.encode(createdAt, forKey: .createdAt)
    }
}


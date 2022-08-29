//
// PostBankBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PostBankBankModel: Codable, JSONEncodable, Hashable {

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
    /** The bank's name. */
    public var name: String
    /** The bank's type. At present, only **sandbox** is supported. */
    public var type: TypeBankModel
    /** The bank's list of supported trading symbols. */
    public var supportedTradingSymbols: [String]
    /** The bank's list of supported savings asset by provider. */
    public var supportedSavingsConfiguration: [String: [String]]?
    /** The bank's enabled features. At present, both **attestation_identity_records** and **backstopped_funding_source** must be set. */
    public var features: [FeaturesBankModel]

    public init(name: String, type: TypeBankModel, supportedTradingSymbols: [String], supportedSavingsConfiguration: [String: [String]]? = nil, features: [FeaturesBankModel]) {
        self.name = name
        self.type = type
        self.supportedTradingSymbols = supportedTradingSymbols
        self.supportedSavingsConfiguration = supportedSavingsConfiguration
        self.features = features
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case type
        case supportedTradingSymbols = "supported_trading_symbols"
        case supportedSavingsConfiguration = "supported_savings_configuration"
        case features
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(type, forKey: .type)
        try container.encode(supportedTradingSymbols, forKey: .supportedTradingSymbols)
        try container.encodeIfPresent(supportedSavingsConfiguration, forKey: .supportedSavingsConfiguration)
        try container.encode(features, forKey: .features)
    }
}


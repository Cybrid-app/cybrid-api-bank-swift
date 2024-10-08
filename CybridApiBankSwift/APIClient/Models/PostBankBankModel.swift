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
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum FeaturesBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case attestationIdentityRecords = "attestation_identity_records"
        case kycIdentityVerifications = "kyc_identity_verifications"
        case businessCustomers = "business_customers"
        case individualCustomers = "individual_customers"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The bank's name. */
    public var name: String
    /** The bank's type. At present, only **sandbox** is supported. */
    public var type: TypeBankModel
    /** The bank's list of supported trading symbols. */
    public var supportedTradingSymbols: [String]
    /** The bank's enabled features. */
    public var features: [FeaturesBankModel]
    /** The bank's list of supported fiat assets. */
    public var supportedFiatAccountAssets: [String]
    /** The bank's list of supported country codes. */
    public var supportedCountryCodes: [String]?

    public init(name: String, type: TypeBankModel, supportedTradingSymbols: [String], features: [FeaturesBankModel], supportedFiatAccountAssets: [String], supportedCountryCodes: [String]? = nil) {
        self.name = name
        self.type = type
        self.supportedTradingSymbols = supportedTradingSymbols
        self.features = features
        self.supportedFiatAccountAssets = supportedFiatAccountAssets
        self.supportedCountryCodes = supportedCountryCodes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case type
        case supportedTradingSymbols = "supported_trading_symbols"
        case features
        case supportedFiatAccountAssets = "supported_fiat_account_assets"
        case supportedCountryCodes = "supported_country_codes"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(type, forKey: .type)
        try container.encode(supportedTradingSymbols, forKey: .supportedTradingSymbols)
        try container.encode(features, forKey: .features)
        try container.encode(supportedFiatAccountAssets, forKey: .supportedFiatAccountAssets)
        try container.encodeIfPresent(supportedCountryCodes, forKey: .supportedCountryCodes)
    }
}


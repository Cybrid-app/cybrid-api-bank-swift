//
// InternalSavingsAssetConfigurationBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InternalSavingsAssetConfigurationBankModel: Codable, JSONEncodable, Hashable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case platform = "platform"
        case bank = "bank"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum ProductProviderBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case compound = "compound"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum EnvironmentBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case sandbox = "sandbox"
        case production = "production"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Auto-generated unique identifier for the configuration. */
    public var guid: String?
    /** The type of savings asset configuration: bank or platform. */
    public var type: TypeBankModel?
    /** The provider of the savings product. */
    public var productProvider: ProductProviderBankModel?
    /** The environment the configuration is associated with. */
    public var environment: EnvironmentBankModel?
    /** The bank identifier that the configuration is associated with. */
    public var bankGuid: String?
    /** Flag indicating if the symbol is enabled for trading on the platform. */
    public var enabled: Bool?
    /** The asset code. */
    public var asset: String?
    /** ISO8601 datetime the bank was created at. */
    public var createdAt: Date?

    public init(guid: String? = nil, type: TypeBankModel? = nil, productProvider: ProductProviderBankModel? = nil, environment: EnvironmentBankModel? = nil, bankGuid: String? = nil, enabled: Bool? = nil, asset: String? = nil, createdAt: Date? = nil) {
        self.guid = guid
        self.type = type
        self.productProvider = productProvider
        self.environment = environment
        self.bankGuid = bankGuid
        self.enabled = enabled
        self.asset = asset
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case type
        case productProvider = "product_provider"
        case environment
        case bankGuid = "bank_guid"
        case enabled
        case asset
        case createdAt = "created_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(productProvider, forKey: .productProvider)
        try container.encodeIfPresent(environment, forKey: .environment)
        try container.encodeIfPresent(bankGuid, forKey: .bankGuid)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(asset, forKey: .asset)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
    }
}


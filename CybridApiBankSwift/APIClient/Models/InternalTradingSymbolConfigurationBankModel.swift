//
// InternalTradingSymbolConfigurationBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InternalTradingSymbolConfigurationBankModel: Codable, JSONEncodable, Hashable {

    public enum EnvironmentBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case sandbox = "sandbox"
        case production = "production"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Auto-generated unique identifier for the configuration. */
    public var guid: String?
    /** The environment the configuration is associated with. */
    public var environment: EnvironmentBankModel?
    /** The bank identifier that the configuration is associated with. */
    public var bankGuid: String?
    /** Flag indicating if the symbol is enabled for trading on the platform. */
    public var enabled: Bool?
    /** The symbol code of the configuration. */
    public var symbol: String?
    /** ISO8601 datetime the bank was created at. */
    public var createdAt: Date?

    public init(guid: String? = nil, environment: EnvironmentBankModel? = nil, bankGuid: String? = nil, enabled: Bool? = nil, symbol: String? = nil, createdAt: Date? = nil) {
        self.guid = guid
        self.environment = environment
        self.bankGuid = bankGuid
        self.enabled = enabled
        self.symbol = symbol
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case environment
        case bankGuid = "bank_guid"
        case enabled
        case symbol
        case createdAt = "created_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(environment, forKey: .environment)
        try container.encodeIfPresent(bankGuid, forKey: .bankGuid)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(symbol, forKey: .symbol)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
    }
}


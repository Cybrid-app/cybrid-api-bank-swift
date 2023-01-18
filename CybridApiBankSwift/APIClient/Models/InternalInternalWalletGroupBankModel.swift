//
// InternalInternalWalletGroupBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InternalInternalWalletGroupBankModel: Codable, JSONEncodable, Hashable {

    public enum TypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case omnibus = "internal_omnibus"
        case tradingDeposits = "internal_trading_deposits"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum EnvironmentBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case sandbox = "sandbox"
        case production = "production"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum StateBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case storing = "storing"
        case created = "created"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Auto-generated unique identifier for the account. */
    public var guid: String?
    /** The wallet group type. */
    public var type: TypeBankModel?
    /** The name of the account. */
    public var name: String?
    /** The environment that the exchange is operating in. */
    public var environment: EnvironmentBankModel?
    /** ISO8601 datetime the exchange was created at. */
    public var createdAt: Date?
    /** The state of the wallet group. */
    public var state: StateBankModel?

    public init(guid: String? = nil, type: TypeBankModel? = nil, name: String? = nil, environment: EnvironmentBankModel? = nil, createdAt: Date? = nil, state: StateBankModel? = nil) {
        self.guid = guid
        self.type = type
        self.name = name
        self.environment = environment
        self.createdAt = createdAt
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case type
        case name
        case environment
        case createdAt = "created_at"
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(environment, forKey: .environment)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(state, forKey: .state)
    }
}


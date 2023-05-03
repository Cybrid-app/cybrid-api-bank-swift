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

    public enum AccountKindBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case fireblocksExternalWallet = "fireblocks_external_wallet"
        case circleWireExternalWallet = "circle_wire_external_wallet"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum EnvironmentBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case sandbox = "sandbox"
        case production = "production"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum StateBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case storing = "storing"
        case pending = "pending"
        case failed = "failed"
        case completed = "completed"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Auto-generated unique identifier for the account. */
    public var guid: String?
    /** The name of the account. */
    public var name: String?
    /** The asset code. */
    public var assetCode: String?
    /** The type of account. */
    public var accountKind: AccountKindBankModel?
    /** The environment that the exchange is operating in. */
    public var environment: EnvironmentBankModel?
    /** The exchange identifier. */
    public var exchangeGuid: String?
    /** ISO8601 datetime the exchange was created at. */
    public var createdAt: Date?
    /** The state of an external wallet */
    public var state: StateBankModel?
    /** The failure code of an external wallet (if any) */
    public var failureCode: String?

    public init(guid: String? = nil, name: String? = nil, assetCode: String? = nil, accountKind: AccountKindBankModel? = nil, environment: EnvironmentBankModel? = nil, exchangeGuid: String? = nil, createdAt: Date? = nil, state: StateBankModel? = nil, failureCode: String? = nil) {
        self.guid = guid
        self.name = name
        self.assetCode = assetCode
        self.accountKind = accountKind
        self.environment = environment
        self.exchangeGuid = exchangeGuid
        self.createdAt = createdAt
        self.state = state
        self.failureCode = failureCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case name
        case assetCode = "asset_code"
        case accountKind = "account_kind"
        case environment
        case exchangeGuid = "exchange_guid"
        case createdAt = "created_at"
        case state
        case failureCode = "failure_code"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(assetCode, forKey: .assetCode)
        try container.encodeIfPresent(accountKind, forKey: .accountKind)
        try container.encodeIfPresent(environment, forKey: .environment)
        try container.encodeIfPresent(exchangeGuid, forKey: .exchangeGuid)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(failureCode, forKey: .failureCode)
    }
}


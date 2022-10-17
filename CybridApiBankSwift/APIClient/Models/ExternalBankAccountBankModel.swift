//
// ExternalBankAccountBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ExternalBankAccountBankModel: Codable, JSONEncodable, Hashable {

    public enum AccountKindBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case plaid = "plaid"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum EnvironmentBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case sandbox = "sandbox"
        case production = "production"
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
    /** The environment that the external bank account is operating in. */
    public var environment: EnvironmentBankModel?
    /** The bank identifier. */
    public var bankGuid: String?
    /** The customer identifier. */
    public var customerGuid: String?
    /** ISO8601 datetime the exchange was created at. */
    public var createdAt: Date?
    /** The Plaid access token for the account. */
    public var plaidAccessToken: String?

    public init(guid: String? = nil, name: String? = nil, assetCode: String? = nil, accountKind: AccountKindBankModel? = nil, environment: EnvironmentBankModel? = nil, bankGuid: String? = nil, customerGuid: String? = nil, createdAt: Date? = nil, plaidAccessToken: String? = nil) {
        self.guid = guid
        self.name = name
        self.assetCode = assetCode
        self.accountKind = accountKind
        self.environment = environment
        self.bankGuid = bankGuid
        self.customerGuid = customerGuid
        self.createdAt = createdAt
        self.plaidAccessToken = plaidAccessToken
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case name
        case assetCode = "asset_code"
        case accountKind = "account_kind"
        case environment
        case bankGuid = "bank_guid"
        case customerGuid = "customer_guid"
        case createdAt = "created_at"
        case plaidAccessToken = "plaid_access_token"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(assetCode, forKey: .assetCode)
        try container.encodeIfPresent(accountKind, forKey: .accountKind)
        try container.encodeIfPresent(environment, forKey: .environment)
        try container.encodeIfPresent(bankGuid, forKey: .bankGuid)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(plaidAccessToken, forKey: .plaidAccessToken)
    }
}

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
        case plaidProcessorToken = "plaid_processor_token"
        case rawRoutingDetails = "raw_routing_details"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum EnvironmentBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case sandbox = "sandbox"
        case production = "production"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum StateBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case storing = "storing"
        case completed = "completed"
        case failed = "failed"
        case refreshRequired = "refresh_required"
        case unverified = "unverified"
        case deleting = "deleting"
        case deleted = "deleted"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Auto-generated unique identifier for the account. */
    public var guid: String?
    /** The name of the account. */
    public var name: String?
    /** The asset code. */
    public var asset: String?
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
    /** The Plaid institution ID for the account. */
    public var plaidInstitutionId: String?
    /** The account number mask for the account. */
    public var plaidAccountMask: String?
    /** The name for the account. */
    public var plaidAccountName: String?
    /** The state of the external bank account. */
    public var state: StateBankModel?
    /** The failure code for failed transfers. */
    public var failureCode: String?

    public init(guid: String? = nil, name: String? = nil, asset: String? = nil, accountKind: AccountKindBankModel? = nil, environment: EnvironmentBankModel? = nil, bankGuid: String? = nil, customerGuid: String? = nil, createdAt: Date? = nil, plaidInstitutionId: String? = nil, plaidAccountMask: String? = nil, plaidAccountName: String? = nil, state: StateBankModel? = nil, failureCode: String? = nil) {
        self.guid = guid
        self.name = name
        self.asset = asset
        self.accountKind = accountKind
        self.environment = environment
        self.bankGuid = bankGuid
        self.customerGuid = customerGuid
        self.createdAt = createdAt
        self.plaidInstitutionId = plaidInstitutionId
        self.plaidAccountMask = plaidAccountMask
        self.plaidAccountName = plaidAccountName
        self.state = state
        self.failureCode = failureCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case name
        case asset
        case accountKind = "account_kind"
        case environment
        case bankGuid = "bank_guid"
        case customerGuid = "customer_guid"
        case createdAt = "created_at"
        case plaidInstitutionId = "plaid_institution_id"
        case plaidAccountMask = "plaid_account_mask"
        case plaidAccountName = "plaid_account_name"
        case state
        case failureCode = "failure_code"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(asset, forKey: .asset)
        try container.encodeIfPresent(accountKind, forKey: .accountKind)
        try container.encodeIfPresent(environment, forKey: .environment)
        try container.encodeIfPresent(bankGuid, forKey: .bankGuid)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(plaidInstitutionId, forKey: .plaidInstitutionId)
        try container.encodeIfPresent(plaidAccountMask, forKey: .plaidAccountMask)
        try container.encodeIfPresent(plaidAccountName, forKey: .plaidAccountName)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(failureCode, forKey: .failureCode)
    }
}


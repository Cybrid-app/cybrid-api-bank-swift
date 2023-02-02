//
// PostExternalBankAccountBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PostExternalBankAccountBankModel: Codable, JSONEncodable, Hashable {

    public enum AccountKindBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case plaid = "plaid"
        case plaidProcessorToken = "plaid_processor_token"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The name of the account. */
    public var name: String
    /** The account type */
    public var accountKind: AccountKindBankModel
    /** The customer identifier. */
    public var customerGuid: String?
    /** The asset code. If not set will try and default to the Bank's configured fiat asset. */
    public var asset: String?
    /** The public token for the account. Required for 'plaid' accounts. */
    public var plaidPublicToken: String?
    /** The account identifier in plaid. Required for 'plaid' accounts. */
    public var plaidAccountId: String?
    /** The Plaid processor token used to access the account. Required for 'plaid_processor_token' accounts. */
    public var plaidProcessorToken: String?
    /** Plaid's institution ID for the account's institution. Required for 'plaid_processor_token' accounts. */
    public var plaidInstitutionId: String?
    /** The account mask for the account. Required for 'plaid_processor_token' accounts. */
    public var plaidAccountMask: String?
    /** The name of the account. Required for 'plaid_processor_token' accounts. */
    public var plaidAccountName: String?

    public init(name: String, accountKind: AccountKindBankModel, customerGuid: String? = nil, asset: String?, plaidPublicToken: String? = nil, plaidAccountId: String? = nil, plaidProcessorToken: String? = nil, plaidInstitutionId: String? = nil, plaidAccountMask: String? = nil, plaidAccountName: String? = nil) {
        self.name = name
        self.accountKind = accountKind
        self.customerGuid = customerGuid
        self.asset = asset
        self.plaidPublicToken = plaidPublicToken
        self.plaidAccountId = plaidAccountId
        self.plaidProcessorToken = plaidProcessorToken
        self.plaidInstitutionId = plaidInstitutionId
        self.plaidAccountMask = plaidAccountMask
        self.plaidAccountName = plaidAccountName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case accountKind = "account_kind"
        case customerGuid = "customer_guid"
        case asset
        case plaidPublicToken = "plaid_public_token"
        case plaidAccountId = "plaid_account_id"
        case plaidProcessorToken = "plaid_processor_token"
        case plaidInstitutionId = "plaid_institution_id"
        case plaidAccountMask = "plaid_account_mask"
        case plaidAccountName = "plaid_account_name"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(accountKind, forKey: .accountKind)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encode(asset, forKey: .asset)
        try container.encodeIfPresent(plaidPublicToken, forKey: .plaidPublicToken)
        try container.encodeIfPresent(plaidAccountId, forKey: .plaidAccountId)
        try container.encodeIfPresent(plaidProcessorToken, forKey: .plaidProcessorToken)
        try container.encodeIfPresent(plaidInstitutionId, forKey: .plaidInstitutionId)
        try container.encodeIfPresent(plaidAccountMask, forKey: .plaidAccountMask)
        try container.encodeIfPresent(plaidAccountName, forKey: .plaidAccountName)
    }
}


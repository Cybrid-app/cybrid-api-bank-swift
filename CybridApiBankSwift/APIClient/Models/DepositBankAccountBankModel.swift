//
// DepositBankAccountBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DepositBankAccountBankModel: Codable, JSONEncodable, Hashable {

    /** Auto-generated unique identifier for the identity verification. */
    public var guid: String?
    /** The account type; one of main or sub_account. */
    public var type: String?
    /** The address' bank identifier. */
    public var bankGuid: String?
    /** The address' customer identifier. */
    public var customerGuid: String?
    /** The address' account identifier. */
    public var accountGuid: String?
    /** ISO8601 datetime the record was created at. */
    public var createdAt: Date?
    /** ISO8601 datetime the record was last updated at. */
    public var updatedAt: Date?
    /** The asset the transfer is related to, e.g., USD. */
    public var asset: String?
    /** The state of the address; one of storing or created. */
    public var state: String?
    /** The unique memo identifier for the address. This is used to identify the recipient when sending funds to the account. This value MUST be included in all wire transfers to this account. */
    public var uniqueMemoId: String?
    /** The name of the account holder. */
    public var counterpartyName: String?
    public var counterpartyAddress: DepositBankAccountCounterpartyAddressBankModel?
    /** The account details for the bank account. */
    public var accountDetails: [DepositBankAccountAccountDetailsInnerBankModel]?
    /** The account details for the bank account. */
    public var routingDetails: [DepositBankAccountRoutingDetailsInnerBankModel]?
    /** The unique identifier for the bank-level deposit bank account. This is only set for sub-accounts. */
    public var parentDepositBankAccountGuid: String?
    /** The labels associated with the address. */
    public var labels: [String]?

    public init(guid: String? = nil, type: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, accountGuid: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, asset: String? = nil, state: String? = nil, uniqueMemoId: String? = nil, counterpartyName: String? = nil, counterpartyAddress: DepositBankAccountCounterpartyAddressBankModel? = nil, accountDetails: [DepositBankAccountAccountDetailsInnerBankModel]? = nil, routingDetails: [DepositBankAccountRoutingDetailsInnerBankModel]? = nil, parentDepositBankAccountGuid: String? = nil, labels: [String]? = nil) {
        self.guid = guid
        self.type = type
        self.bankGuid = bankGuid
        self.customerGuid = customerGuid
        self.accountGuid = accountGuid
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.asset = asset
        self.state = state
        self.uniqueMemoId = uniqueMemoId
        self.counterpartyName = counterpartyName
        self.counterpartyAddress = counterpartyAddress
        self.accountDetails = accountDetails
        self.routingDetails = routingDetails
        self.parentDepositBankAccountGuid = parentDepositBankAccountGuid
        self.labels = labels
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case type
        case bankGuid = "bank_guid"
        case customerGuid = "customer_guid"
        case accountGuid = "account_guid"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case asset
        case state
        case uniqueMemoId = "unique_memo_id"
        case counterpartyName = "counterparty_name"
        case counterpartyAddress = "counterparty_address"
        case accountDetails = "account_details"
        case routingDetails = "routing_details"
        case parentDepositBankAccountGuid = "parent_deposit_bank_account_guid"
        case labels
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(bankGuid, forKey: .bankGuid)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encodeIfPresent(accountGuid, forKey: .accountGuid)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(asset, forKey: .asset)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(uniqueMemoId, forKey: .uniqueMemoId)
        try container.encodeIfPresent(counterpartyName, forKey: .counterpartyName)
        try container.encodeIfPresent(counterpartyAddress, forKey: .counterpartyAddress)
        try container.encodeIfPresent(accountDetails, forKey: .accountDetails)
        try container.encodeIfPresent(routingDetails, forKey: .routingDetails)
        try container.encodeIfPresent(parentDepositBankAccountGuid, forKey: .parentDepositBankAccountGuid)
        try container.encodeIfPresent(labels, forKey: .labels)
    }
}


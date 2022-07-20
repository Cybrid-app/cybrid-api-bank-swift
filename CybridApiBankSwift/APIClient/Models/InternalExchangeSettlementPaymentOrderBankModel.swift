//
// InternalExchangeSettlementPaymentOrderBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct InternalExchangeSettlementPaymentOrderBankModel: Codable, JSONEncodable, Hashable {

    public enum InternalAccountTypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case wallet = "internal_wallet"
        case bankAccount = "internal_bank_account"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum ExternalAccountTypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case wallet = "external_wallet"
        case bankAccount = "external_bank_account"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum StateBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case storing = "storing"
        case pendingCreated = "pending__created"
        case pendingPrincipalReserved = "pending__principal_reserved"
        case pendingTransactionsClaimed = "pending__transactions_claimed"
        case notApproved = "not_approved"
        case inProgress = "in_progress"
        case notOwing = "not_owing"
        case amountIncorrect = "amount_incorrect"
        case invalidPrincipal = "invalid_principal"
        case nsf = "nsf"
        case sent = "sent"
        case rejected = "rejected"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Auto-generated unique identifier for the exchange settlement payment order. */
    public var guid: String?
    /** The identifier of the exchange settlement obligation that this payment is associated with. */
    public var exchangeSettlementObligationGuid: String?
    /** The sequence number of the payment order */
    public var sequenceNumber: String?
    /** The amount expected to be received as part of this payment. */
    public var paymentAmount: String?
    /** The identifier of the internal account that is expected to originate the payment. */
    public var internalAccountGuid: String?
    /** The type of the internal account that is expected to originate the payment. */
    public var internalAccountType: InternalAccountTypeBankModel?
    /** The identifier of the external account that is expected to receive the payment. */
    public var externalAccountGuid: String?
    /** The type of the external account that is expected to receive the payment. */
    public var externalAccountType: ExternalAccountTypeBankModel?
    /** The exchange settlement payment order's state */
    public var state: StateBankModel?
    /** ISO8601 datetime the exchange settlement payment order was created at. */
    public var createdAt: Date?

    public init(guid: String? = nil, exchangeSettlementObligationGuid: String? = nil, sequenceNumber: String? = nil, paymentAmount: String? = nil, internalAccountGuid: String? = nil, internalAccountType: InternalAccountTypeBankModel? = nil, externalAccountGuid: String? = nil, externalAccountType: ExternalAccountTypeBankModel? = nil, state: StateBankModel? = nil, createdAt: Date? = nil) {
        self.guid = guid
        self.exchangeSettlementObligationGuid = exchangeSettlementObligationGuid
        self.sequenceNumber = sequenceNumber
        self.paymentAmount = paymentAmount
        self.internalAccountGuid = internalAccountGuid
        self.internalAccountType = internalAccountType
        self.externalAccountGuid = externalAccountGuid
        self.externalAccountType = externalAccountType
        self.state = state
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case exchangeSettlementObligationGuid = "exchange_settlement_obligation_guid"
        case sequenceNumber = "sequence_number"
        case paymentAmount = "payment_amount"
        case internalAccountGuid = "internal_account_guid"
        case internalAccountType = "internal_account_type"
        case externalAccountGuid = "external_account_guid"
        case externalAccountType = "external_account_type"
        case state
        case createdAt = "created_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(exchangeSettlementObligationGuid, forKey: .exchangeSettlementObligationGuid)
        try container.encodeIfPresent(sequenceNumber, forKey: .sequenceNumber)
        try container.encodeIfPresent(paymentAmount, forKey: .paymentAmount)
        try container.encodeIfPresent(internalAccountGuid, forKey: .internalAccountGuid)
        try container.encodeIfPresent(internalAccountType, forKey: .internalAccountType)
        try container.encodeIfPresent(externalAccountGuid, forKey: .externalAccountGuid)
        try container.encodeIfPresent(externalAccountType, forKey: .externalAccountType)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
    }
}


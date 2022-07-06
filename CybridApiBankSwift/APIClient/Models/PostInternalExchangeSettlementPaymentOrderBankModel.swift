//
// PostInternalExchangeSettlementPaymentOrderBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

@objc public class PostInternalExchangeSettlementPaymentOrderBankModel: NSObject, Codable, JSONEncodable {

    public enum ExpectedStateBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case pending = "pending"
        case inProgress = "in_progress"
        case completed = "completed"
        case failed = "failed"
        case cancelled = "cancelled"
        case manualIntervention = "manual_intervention"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
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
    /** The identifier of the exchange settlement that this payment is associated with. */
    public var exchangeSettlementGuid: String
    /** The identifier of the exchange settlement obligation that this payment is associated with. */
    public var exchangeSettlementObligationGuid: String
    /** The sequence number of the payment order */
    public var sequenceNumber: Int
    /** The amount expected to be received as part of this payment. */
    public var paymentAmount: Int
    /** The expected state of the underlying money transfer for the payment order (sandbox only) */
    public var expectedState: ExpectedStateBankModel?
    /** The identifier of the internal account that is expected to originate the payment. */
    public var internalAccountGuid: String
    /** The type of the internal account that is expected to originate the payment. */
    public var internalAccountType: InternalAccountTypeBankModel
    /** The identifier of the external account that is expected to receive the payment. */
    public var externalAccountGuid: String
    /** The type of the external account that is expected to receive the payment. */
    public var externalAccountType: ExternalAccountTypeBankModel

    public init(exchangeSettlementGuid: String, exchangeSettlementObligationGuid: String, sequenceNumber: Int, paymentAmount: Int, expectedState: ExpectedStateBankModel? = nil, internalAccountGuid: String, internalAccountType: InternalAccountTypeBankModel, externalAccountGuid: String, externalAccountType: ExternalAccountTypeBankModel) {
        self.exchangeSettlementGuid = exchangeSettlementGuid
        self.exchangeSettlementObligationGuid = exchangeSettlementObligationGuid
        self.sequenceNumber = sequenceNumber
        self.paymentAmount = paymentAmount
        self.expectedState = expectedState
        self.internalAccountGuid = internalAccountGuid
        self.internalAccountType = internalAccountType
        self.externalAccountGuid = externalAccountGuid
        self.externalAccountType = externalAccountType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case exchangeSettlementGuid = "exchange_settlement_guid"
        case exchangeSettlementObligationGuid = "exchange_settlement_obligation_guid"
        case sequenceNumber = "sequence_number"
        case paymentAmount = "payment_amount"
        case expectedState = "expected_state"
        case internalAccountGuid = "internal_account_guid"
        case internalAccountType = "internal_account_type"
        case externalAccountGuid = "external_account_guid"
        case externalAccountType = "external_account_type"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(exchangeSettlementGuid, forKey: .exchangeSettlementGuid)
        try container.encode(exchangeSettlementObligationGuid, forKey: .exchangeSettlementObligationGuid)
        try container.encode(sequenceNumber, forKey: .sequenceNumber)
        try container.encode(paymentAmount, forKey: .paymentAmount)
        try container.encodeIfPresent(expectedState, forKey: .expectedState)
        try container.encode(internalAccountGuid, forKey: .internalAccountGuid)
        try container.encode(internalAccountType, forKey: .internalAccountType)
        try container.encode(externalAccountGuid, forKey: .externalAccountGuid)
        try container.encode(externalAccountType, forKey: .externalAccountType)
    }
}


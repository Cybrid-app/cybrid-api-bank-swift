//
// PostInternalExpectedPaymentBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PostInternalExpectedPaymentBankModel: Codable, JSONEncodable, Hashable {

    public enum PaymentKindBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case exchangeSettlement = "exchange_settlement"
        case platformPayment = "platform_payment"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum InternalAccountTypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case wallet = "internal_wallet"
        case bankAccount = "internal_bank_account"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum EnvironmentBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case sandbox = "sandbox"
        case production = "production"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The kind of expected payment. */
    public var paymentKind: PaymentKindBankModel
    /** The sequence number of the expected payment */
    public var nonce: String
    /** The amount expected to be received as part of this payment. */
    public var paymentAmount: String
    /** The identifier of the internal account that is expected to originate the payment. */
    public var internalAccountGuid: String
    /** The type of the internal account that is expected to originate the payment. */
    public var internalAccountType: InternalAccountTypeBankModel
    /** The identifier of the exchange settlement that this payment is associated with. */
    public var exchangeSettlementGuid: String?
    /** The identifier of the exchange settlement obligation that this payment is associated with. */
    public var exchangeSettlementObligationGuid: String?
    /** The environment the payment is expeged in. */
    public var environment: EnvironmentBankModel?
    /** The identifier of the credit platform account the payment should be credited to. */
    public var creditAccountGuid: String?

    public init(paymentKind: PaymentKindBankModel, nonce: String, paymentAmount: String, internalAccountGuid: String, internalAccountType: InternalAccountTypeBankModel, exchangeSettlementGuid: String? = nil, exchangeSettlementObligationGuid: String? = nil, environment: EnvironmentBankModel? = nil, creditAccountGuid: String? = nil) {
        self.paymentKind = paymentKind
        self.nonce = nonce
        self.paymentAmount = paymentAmount
        self.internalAccountGuid = internalAccountGuid
        self.internalAccountType = internalAccountType
        self.exchangeSettlementGuid = exchangeSettlementGuid
        self.exchangeSettlementObligationGuid = exchangeSettlementObligationGuid
        self.environment = environment
        self.creditAccountGuid = creditAccountGuid
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case paymentKind = "payment_kind"
        case nonce
        case paymentAmount = "payment_amount"
        case internalAccountGuid = "internal_account_guid"
        case internalAccountType = "internal_account_type"
        case exchangeSettlementGuid = "exchange_settlement_guid"
        case exchangeSettlementObligationGuid = "exchange_settlement_obligation_guid"
        case environment
        case creditAccountGuid = "credit_account_guid"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(paymentKind, forKey: .paymentKind)
        try container.encode(nonce, forKey: .nonce)
        try container.encode(paymentAmount, forKey: .paymentAmount)
        try container.encode(internalAccountGuid, forKey: .internalAccountGuid)
        try container.encode(internalAccountType, forKey: .internalAccountType)
        try container.encodeIfPresent(exchangeSettlementGuid, forKey: .exchangeSettlementGuid)
        try container.encodeIfPresent(exchangeSettlementObligationGuid, forKey: .exchangeSettlementObligationGuid)
        try container.encodeIfPresent(environment, forKey: .environment)
        try container.encodeIfPresent(creditAccountGuid, forKey: .creditAccountGuid)
    }
}


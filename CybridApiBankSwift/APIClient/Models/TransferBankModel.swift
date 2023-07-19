//
// TransferBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TransferBankModel: Codable, JSONEncodable, Hashable {

    public enum TransferTypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case savings = "savings"
        case funding = "funding"
        case book = "book"
        case crypto = "crypto"
        case internalBankRebalance = "internal_bank_rebalance"
        case internalWalletRebalance = "internal_wallet_rebalance"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum SideBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case deposit = "deposit"
        case withdrawal = "withdrawal"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum StateBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case storing = "storing"
        case initiating = "initiating"
        case pending = "pending"
        case completed = "completed"
        case failed = "failed"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Auto-generated unique identifier for the trade. */
    public var guid: String?
    /** The type of transfer. */
    public var transferType: TransferTypeBankModel?
    /** The associated bank's identifier. */
    public var bankGuid: String?
    /** The associated customer's identifier. */
    public var customerGuid: String?
    /** The associated quote's identifier. */
    public var quoteGuid: String?
    /** The associated external bank account's identifier. */
    public var externalBankAccountGuid: String?
    /** The asset the transfer is related to, e.g., USD. */
    public var asset: String?
    /** The direction of the quote: 'deposit' or 'withdrawal'. */
    public var side: SideBankModel?
    /** The trade's state */
    public var state: StateBankModel?
    /** The actual amount in base units of the asset. */
    public var amount: Int?
    /** The estimated amount in base units of the asset. */
    public var estimatedAmount: Int?
    /** The fee associated with the trade. */
    public var fee: Int?
    /** The estimated network fee in base units of network_fee_asset. Only present on `crypto` transfers. */
    public var estimatedNetworkFee: Int?
    /** The actual network fee in base units of network_fee_asset. Only present on `crypto` transfers that have successfully completed. */
    public var networkFee: Int?
    /** The asset code of the network fee. Only present on `crypto` transfers that have successfully completed. */
    public var networkFeeAsset: String?
    /** The equivalent fiat network fee in base units of network_fee_liability_amount_asset. Only present on `crypto` transfers that have successfully completed. */
    public var networkFeeLiabilityAmount: Int?
    /** The fiat asset the network_fee_liability_amount is denominated in. Only present on `crypto` transfers that have successfully completed. */
    public var networkFeeLiabilityAmountAsset: String?
    /** ISO8601 datetime the bank was created at. */
    public var createdAt: Date?

    public init(guid: String? = nil, transferType: TransferTypeBankModel? = nil, bankGuid: String? = nil, customerGuid: String? = nil, quoteGuid: String? = nil, externalBankAccountGuid: String? = nil, asset: String? = nil, side: SideBankModel? = nil, state: StateBankModel? = nil, amount: Int? = nil, estimatedAmount: Int? = nil, fee: Int? = nil, estimatedNetworkFee: Int? = nil, networkFee: Int? = nil, networkFeeAsset: String? = nil, networkFeeLiabilityAmount: Int? = nil, networkFeeLiabilityAmountAsset: String? = nil, createdAt: Date? = nil) {
        self.guid = guid
        self.transferType = transferType
        self.bankGuid = bankGuid
        self.customerGuid = customerGuid
        self.quoteGuid = quoteGuid
        self.externalBankAccountGuid = externalBankAccountGuid
        self.asset = asset
        self.side = side
        self.state = state
        self.amount = amount
        self.estimatedAmount = estimatedAmount
        self.fee = fee
        self.estimatedNetworkFee = estimatedNetworkFee
        self.networkFee = networkFee
        self.networkFeeAsset = networkFeeAsset
        self.networkFeeLiabilityAmount = networkFeeLiabilityAmount
        self.networkFeeLiabilityAmountAsset = networkFeeLiabilityAmountAsset
        self.createdAt = createdAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case transferType = "transfer_type"
        case bankGuid = "bank_guid"
        case customerGuid = "customer_guid"
        case quoteGuid = "quote_guid"
        case externalBankAccountGuid = "external_bank_account_guid"
        case asset
        case side
        case state
        case amount
        case estimatedAmount = "estimated_amount"
        case fee
        case estimatedNetworkFee = "estimated_network_fee"
        case networkFee = "network_fee"
        case networkFeeAsset = "network_fee_asset"
        case networkFeeLiabilityAmount = "network_fee_liability_amount"
        case networkFeeLiabilityAmountAsset = "network_fee_liability_amount_asset"
        case createdAt = "created_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(transferType, forKey: .transferType)
        try container.encodeIfPresent(bankGuid, forKey: .bankGuid)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encodeIfPresent(quoteGuid, forKey: .quoteGuid)
        try container.encodeIfPresent(externalBankAccountGuid, forKey: .externalBankAccountGuid)
        try container.encodeIfPresent(asset, forKey: .asset)
        try container.encodeIfPresent(side, forKey: .side)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(estimatedAmount, forKey: .estimatedAmount)
        try container.encodeIfPresent(fee, forKey: .fee)
        try container.encodeIfPresent(estimatedNetworkFee, forKey: .estimatedNetworkFee)
        try container.encodeIfPresent(networkFee, forKey: .networkFee)
        try container.encodeIfPresent(networkFeeAsset, forKey: .networkFeeAsset)
        try container.encodeIfPresent(networkFeeLiabilityAmount, forKey: .networkFeeLiabilityAmount)
        try container.encodeIfPresent(networkFeeLiabilityAmountAsset, forKey: .networkFeeLiabilityAmountAsset)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
    }
}


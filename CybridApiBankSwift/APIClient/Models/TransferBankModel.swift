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

    /** Auto-generated unique identifier for the transfer. */
    public var guid: String?
    /** The type of transfer; one of funding, book, crypto, instant_funding, funding_return, or crypto_return. */
    public var transferType: String?
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
    /** The direction of the quote; one of deposit or withdrawal. */
    public var side: String?
    /** The state of the transfer; one of storing, pending, reviewing, completed, or failed. */
    public var state: String?
    /** The failure code for failed transfers. */
    public var failureCode: String?
    /** The actual amount in base units of the asset. */
    public var amount: Int?
    /** The estimated amount in base units of the asset. */
    public var estimatedAmount: Int?
    /** The fee associated with the transfer. */
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
    /** The hash of the blockchain transaction */
    public var txnHash: String?
    /** The guid of the related transfer. Only present on `funding_return` transfers. */
    public var referenceTransferGuid: String?
    public var sourceAccount: TransferSourceAccountBankModel?
    public var destinationAccount: TransferDestinationAccountBankModel?
    /** ISO8601 datetime the record was created at. */
    public var createdAt: Date?
    /** ISO8601 datetime the record was last updated at. */
    public var updatedAt: Date?
    /** The raw details on the transfer from the bank. */
    public var transferDetails: String?
    /** The rail the payment was done on. One of: ach, eft, wire, rtp */
    public var paymentRail: String?
    /** The labels associated with the transfer. */
    public var labels: [String]?

    public init(guid: String? = nil, transferType: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, quoteGuid: String? = nil, externalBankAccountGuid: String? = nil, asset: String? = nil, side: String? = nil, state: String? = nil, failureCode: String? = nil, amount: Int? = nil, estimatedAmount: Int? = nil, fee: Int? = nil, estimatedNetworkFee: Int? = nil, networkFee: Int? = nil, networkFeeAsset: String? = nil, networkFeeLiabilityAmount: Int? = nil, networkFeeLiabilityAmountAsset: String? = nil, txnHash: String? = nil, referenceTransferGuid: String? = nil, sourceAccount: TransferSourceAccountBankModel? = nil, destinationAccount: TransferDestinationAccountBankModel? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, transferDetails: String? = nil, paymentRail: String? = nil, labels: [String]? = nil) {
        self.guid = guid
        self.transferType = transferType
        self.bankGuid = bankGuid
        self.customerGuid = customerGuid
        self.quoteGuid = quoteGuid
        self.externalBankAccountGuid = externalBankAccountGuid
        self.asset = asset
        self.side = side
        self.state = state
        self.failureCode = failureCode
        self.amount = amount
        self.estimatedAmount = estimatedAmount
        self.fee = fee
        self.estimatedNetworkFee = estimatedNetworkFee
        self.networkFee = networkFee
        self.networkFeeAsset = networkFeeAsset
        self.networkFeeLiabilityAmount = networkFeeLiabilityAmount
        self.networkFeeLiabilityAmountAsset = networkFeeLiabilityAmountAsset
        self.txnHash = txnHash
        self.referenceTransferGuid = referenceTransferGuid
        self.sourceAccount = sourceAccount
        self.destinationAccount = destinationAccount
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.transferDetails = transferDetails
        self.paymentRail = paymentRail
        self.labels = labels
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
        case failureCode = "failure_code"
        case amount
        case estimatedAmount = "estimated_amount"
        case fee
        case estimatedNetworkFee = "estimated_network_fee"
        case networkFee = "network_fee"
        case networkFeeAsset = "network_fee_asset"
        case networkFeeLiabilityAmount = "network_fee_liability_amount"
        case networkFeeLiabilityAmountAsset = "network_fee_liability_amount_asset"
        case txnHash = "txn_hash"
        case referenceTransferGuid = "reference_transfer_guid"
        case sourceAccount = "source_account"
        case destinationAccount = "destination_account"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case transferDetails = "transfer_details"
        case paymentRail = "payment_rail"
        case labels
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
        try container.encodeIfPresent(failureCode, forKey: .failureCode)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(estimatedAmount, forKey: .estimatedAmount)
        try container.encodeIfPresent(fee, forKey: .fee)
        try container.encodeIfPresent(estimatedNetworkFee, forKey: .estimatedNetworkFee)
        try container.encodeIfPresent(networkFee, forKey: .networkFee)
        try container.encodeIfPresent(networkFeeAsset, forKey: .networkFeeAsset)
        try container.encodeIfPresent(networkFeeLiabilityAmount, forKey: .networkFeeLiabilityAmount)
        try container.encodeIfPresent(networkFeeLiabilityAmountAsset, forKey: .networkFeeLiabilityAmountAsset)
        try container.encodeIfPresent(txnHash, forKey: .txnHash)
        try container.encodeIfPresent(referenceTransferGuid, forKey: .referenceTransferGuid)
        try container.encodeIfPresent(sourceAccount, forKey: .sourceAccount)
        try container.encodeIfPresent(destinationAccount, forKey: .destinationAccount)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(transferDetails, forKey: .transferDetails)
        try container.encodeIfPresent(paymentRail, forKey: .paymentRail)
        try container.encodeIfPresent(labels, forKey: .labels)
    }
}


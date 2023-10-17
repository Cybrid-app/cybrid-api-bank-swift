//
// PostTransferBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PostTransferBankModel: Codable, JSONEncodable, Hashable {

    public enum TransferTypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case funding = "funding"
        case book = "book"
        case crypto = "crypto"
        case instantFunding = "instant_funding"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The associated quote's identifier. */
    public var quoteGuid: String
    /** The type of transfer. */
    public var transferType: TransferTypeBankModel
    /** The source account's identifier. Required for book transfers. */
    public var sourceAccountGuid: String?
    /** The destination account's identifier. Required for book transfers. */
    public var destinationAccountGuid: String?
    /** The customer's external wallet's identifier. */
    public var externalWalletGuid: String?
    /** The customer's 'plaid' or 'plaid_processor_token' external bank account's identifier. */
    public var externalBankAccountGuid: String?
    /** The labels associated with the transfer. */
    public var labels: [String]?

    public init(quoteGuid: String, transferType: TransferTypeBankModel, sourceAccountGuid: String? = nil, destinationAccountGuid: String? = nil, externalWalletGuid: String? = nil, externalBankAccountGuid: String? = nil, labels: [String]? = nil) {
        self.quoteGuid = quoteGuid
        self.transferType = transferType
        self.sourceAccountGuid = sourceAccountGuid
        self.destinationAccountGuid = destinationAccountGuid
        self.externalWalletGuid = externalWalletGuid
        self.externalBankAccountGuid = externalBankAccountGuid
        self.labels = labels
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case quoteGuid = "quote_guid"
        case transferType = "transfer_type"
        case sourceAccountGuid = "source_account_guid"
        case destinationAccountGuid = "destination_account_guid"
        case externalWalletGuid = "external_wallet_guid"
        case externalBankAccountGuid = "external_bank_account_guid"
        case labels
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(quoteGuid, forKey: .quoteGuid)
        try container.encode(transferType, forKey: .transferType)
        try container.encodeIfPresent(sourceAccountGuid, forKey: .sourceAccountGuid)
        try container.encodeIfPresent(destinationAccountGuid, forKey: .destinationAccountGuid)
        try container.encodeIfPresent(externalWalletGuid, forKey: .externalWalletGuid)
        try container.encodeIfPresent(externalBankAccountGuid, forKey: .externalBankAccountGuid)
        try container.encodeIfPresent(labels, forKey: .labels)
    }
}


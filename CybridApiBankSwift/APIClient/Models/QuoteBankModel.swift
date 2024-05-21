//
// QuoteBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct QuoteBankModel: Codable, JSONEncodable, Hashable {

    /** Auto-generated unique identifier for the quote. */
    public var guid: String?
    /** The type of product the quote is for; one of trading, funding, book_transfer, crypto_transfer, inter_account, or lightning_transfer. */
    public var productType: String?
    /** The unique identifier for the bank. */
    public var bankGuid: String?
    /** The unique identifier for the customer. */
    public var customerGuid: String?
    /** Symbol the quote was requested for. Format is \"asset-counter_asset\" in uppercase. Populated for trade quotes. */
    public var symbol: String?
    /** The direction of the quote; one of buy, sell, deposit, or withdrawal. */
    public var side: String?
    /** The amount to be received in base units of the currency: currency is \"asset\" for buy and \"counter_asset\" for sell for trade quotes. */
    public var receiveAmount: String?
    /** The amount to be delivered in base units of the currency: currency is \"counter_asset\" for buy and \"asset\" for sell for trade quotes. */
    public var deliverAmount: String?
    /** The fee associated with the trade. Denominated in \"counter_asset\" base units for trade quotes. */
    public var fee: String?
    /** ISO8601 datetime the record was created at. */
    public var createdAt: Date?
    /** ISO8601 datetime the record was last updated at. */
    public var updatedAt: Date?
    /** ISO8601 datetime the quote was created at. */
    public var issuedAt: Date?
    /** ISO8601 datetime the quote is expiring at. Populated for trading quotes. */
    public var expiresAt: Date?
    /** The asset code the quote was requested for. Populated for book transfer and funding quotes. */
    public var asset: String?
    /** The network fee in base units of network_fee_asset. Only present on `crypto_transfer` quotes. */
    public var networkFee: String?
    /** The asset code of the network fee. */
    public var networkFeeAsset: String?
    /** The network address to pay the invoice to. Populated for lightning_transfer quotes. */
    public var networkAddress: String?

    public init(guid: String? = nil, productType: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, symbol: String? = nil, side: String? = nil, receiveAmount: String? = nil, deliverAmount: String? = nil, fee: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, issuedAt: Date? = nil, expiresAt: Date? = nil, asset: String? = nil, networkFee: String? = nil, networkFeeAsset: String? = nil, networkAddress: String? = nil) {
        self.guid = guid
        self.productType = productType
        self.bankGuid = bankGuid
        self.customerGuid = customerGuid
        self.symbol = symbol
        self.side = side
        self.receiveAmount = receiveAmount
        self.deliverAmount = deliverAmount
        self.fee = fee
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.issuedAt = issuedAt
        self.expiresAt = expiresAt
        self.asset = asset
        self.networkFee = networkFee
        self.networkFeeAsset = networkFeeAsset
        self.networkAddress = networkAddress
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case productType = "product_type"
        case bankGuid = "bank_guid"
        case customerGuid = "customer_guid"
        case symbol
        case side
        case receiveAmount = "receive_amount"
        case deliverAmount = "deliver_amount"
        case fee
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case issuedAt = "issued_at"
        case expiresAt = "expires_at"
        case asset
        case networkFee = "network_fee"
        case networkFeeAsset = "network_fee_asset"
        case networkAddress = "network_address"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(productType, forKey: .productType)
        try container.encodeIfPresent(bankGuid, forKey: .bankGuid)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encodeIfPresent(symbol, forKey: .symbol)
        try container.encodeIfPresent(side, forKey: .side)
        try container.encodeIfPresent(receiveAmount, forKey: .receiveAmount)
        try container.encodeIfPresent(deliverAmount, forKey: .deliverAmount)
        try container.encodeIfPresent(fee, forKey: .fee)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(issuedAt, forKey: .issuedAt)
        try container.encodeIfPresent(expiresAt, forKey: .expiresAt)
        try container.encodeIfPresent(asset, forKey: .asset)
        try container.encodeIfPresent(networkFee, forKey: .networkFee)
        try container.encodeIfPresent(networkFeeAsset, forKey: .networkFeeAsset)
        try container.encodeIfPresent(networkAddress, forKey: .networkAddress)
    }
}


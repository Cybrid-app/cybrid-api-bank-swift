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

    public enum ProductTypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case trading = "trading"
        case funding = "funding"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum SideBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case buy = "buy"
        case sell = "sell"
        case deposit = "deposit"
        case withdrawal = "withdrawal"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** Auto-generated unique identifier for the quote. */
    public var guid: String?
    /** The type of product the quote is for. */
    public var productType: ProductTypeBankModel?
    /** The unique identifier for the customer. */
    public var customerGuid: String?
    /** Symbol the quote was requested for. Format is \"asset-counter_asset\" in uppercase. Populated for trade quotes. */
    public var symbol: String?
    /** The direction of the quote: either 'buy' or 'sell' for trade quotes. */
    public var side: SideBankModel?
    /** The amount to be received in base units of the currency: currency is \"asset\" for buy and \"counter_asset\" for sell for trade quotes. */
    public var receiveAmount: String?
    /** The amount to be delivered in base units of the currency: currency is \"counter_asset\" for buy and \"asset\" for sell for trade quotes. */
    public var deliverAmount: String?
    /** The fee associated with the trade. Denominated in \"counter_asset\" base units for trade quotes. */
    public var fee: String?
    /** ISO8601 datetime the quote was created at. */
    public var issuedAt: Date?
    /** ISO8601 datetime the quote is expiring at. Populated for trading quotes. */
    public var expiresAt: Date?

    public init(guid: String? = nil, productType: ProductTypeBankModel? = nil, customerGuid: String? = nil, symbol: String? = nil, side: SideBankModel? = nil, receiveAmount: String? = nil, deliverAmount: String? = nil, fee: String? = nil, issuedAt: Date? = nil, expiresAt: Date? = nil) {
        self.guid = guid
        self.productType = productType
        self.customerGuid = customerGuid
        self.symbol = symbol
        self.side = side
        self.receiveAmount = receiveAmount
        self.deliverAmount = deliverAmount
        self.fee = fee
        self.issuedAt = issuedAt
        self.expiresAt = expiresAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case productType = "product_type"
        case customerGuid = "customer_guid"
        case symbol
        case side
        case receiveAmount = "receive_amount"
        case deliverAmount = "deliver_amount"
        case fee
        case issuedAt = "issued_at"
        case expiresAt = "expires_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(productType, forKey: .productType)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encodeIfPresent(symbol, forKey: .symbol)
        try container.encodeIfPresent(side, forKey: .side)
        try container.encodeIfPresent(receiveAmount, forKey: .receiveAmount)
        try container.encodeIfPresent(deliverAmount, forKey: .deliverAmount)
        try container.encodeIfPresent(fee, forKey: .fee)
        try container.encodeIfPresent(issuedAt, forKey: .issuedAt)
        try container.encodeIfPresent(expiresAt, forKey: .expiresAt)
    }
}


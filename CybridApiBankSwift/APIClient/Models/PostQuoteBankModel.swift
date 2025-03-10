//
// PostQuoteBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Request body for quote creation. */
public struct PostQuoteBankModel: Codable, JSONEncodable, Hashable {

    public enum ProductTypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case trading = "trading"
        case tradingExit = "trading_exit"
        case funding = "funding"
        case cryptoTransfer = "crypto_transfer"
        case interAccount = "inter_account"
        case lightningTransfer = "lightning_transfer"
        case bookTransfer = "book_transfer"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public enum SideBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case deposit = "deposit"
        case withdrawal = "withdrawal"
        case buy = "buy"
        case sell = "sell"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The type of product the quote is for. */
    public var productType: ProductTypeBankModel? = .trading
    /** The unique identifier for the bank. */
    public var bankGuid: String?
    /** The unique identifier for the customer. */
    public var customerGuid: String?
    /** The amount to be received in base units of the currency: currency is \"asset\" for buy and \"counter_asset\" for sell for trade quotes. */
    public var receiveAmount: String?
    /** The amount to be delivered in base units of the currency: currency is \"counter_asset\" for buy and \"asset\" for sell for trade quotes. */
    public var deliverAmount: String?
    /** The asset code the quote was requested for. Required when product_type is lightning_transfer, product_type is book_transfer, product_type is funding, product_type is crypto_transfer, or product_type is inter_account. */
    public var asset: String?
    /** The network address to pay the invoice to. Required when product_type is lightning_transfer. */
    public var networkAddress: String?
    /** The custom fees associated with the quote Optional when product_type is lightning_transfer, product_type is funding, product_type is trading, product_type is crypto_transfer, or product_type is trading_exit. */
    public var fees: [PostFeeBankModel]?
    /** The direction for trade quotes: either 'buy' or 'sell'. The direction for funding quotes: either 'deposit' or 'withdrawal'. The direction for crypto transfer quotes: 'withdrawal'. Book transfers do not require a side. They are all 'deposit's.  Required when product_type is funding, product_type is trading, or product_type is crypto_transfer. */
    public var side: SideBankModel?
    /** Symbol the quote is being requested for. Format is \"asset-counter_asset\" in uppercase. See the Symbols API for a complete list of cryptocurrencies supported.  Required when product_type is trading. */
    public var symbol: String?
    /** Destination accounts for batch transactions Optional when product_type is crypto_transfer. */
    public var destinationAccounts: [PostQuoteEntryBankModel]?
    /** The guid of the related trade. Only present on `exit` trades. Required when product_type is trading_exit. */
    public var referenceTradeGuid: String?
    /** The source account's identifier. Required when product_type is inter_account. */
    public var sourceAccountGuid: String?
    /** The destination account's identifier. Required when product_type is inter_account. */
    public var destinationAccountGuid: String?

    public init(productType: ProductTypeBankModel? = .trading, bankGuid: String? = nil, customerGuid: String? = nil, receiveAmount: String? = nil, deliverAmount: String? = nil, asset: String? = nil, networkAddress: String? = nil, fees: [PostFeeBankModel]? = nil, side: SideBankModel? = nil, symbol: String? = nil, destinationAccounts: [PostQuoteEntryBankModel]? = nil, referenceTradeGuid: String? = nil, sourceAccountGuid: String? = nil, destinationAccountGuid: String? = nil) {
        self.productType = productType
        self.bankGuid = bankGuid
        self.customerGuid = customerGuid
        self.receiveAmount = receiveAmount
        self.deliverAmount = deliverAmount
        self.asset = asset
        self.networkAddress = networkAddress
        self.fees = fees
        self.side = side
        self.symbol = symbol
        self.destinationAccounts = destinationAccounts
        self.referenceTradeGuid = referenceTradeGuid
        self.sourceAccountGuid = sourceAccountGuid
        self.destinationAccountGuid = destinationAccountGuid
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case productType = "product_type"
        case bankGuid = "bank_guid"
        case customerGuid = "customer_guid"
        case receiveAmount = "receive_amount"
        case deliverAmount = "deliver_amount"
        case asset
        case networkAddress = "network_address"
        case fees
        case side
        case symbol
        case destinationAccounts = "destination_accounts"
        case referenceTradeGuid = "reference_trade_guid"
        case sourceAccountGuid = "source_account_guid"
        case destinationAccountGuid = "destination_account_guid"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(productType, forKey: .productType)
        try container.encodeIfPresent(bankGuid, forKey: .bankGuid)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encodeIfPresent(receiveAmount, forKey: .receiveAmount)
        try container.encodeIfPresent(deliverAmount, forKey: .deliverAmount)
        try container.encodeIfPresent(asset, forKey: .asset)
        try container.encodeIfPresent(networkAddress, forKey: .networkAddress)
        try container.encodeIfPresent(fees, forKey: .fees)
        try container.encodeIfPresent(side, forKey: .side)
        try container.encodeIfPresent(symbol, forKey: .symbol)
        try container.encodeIfPresent(destinationAccounts, forKey: .destinationAccounts)
        try container.encodeIfPresent(referenceTradeGuid, forKey: .referenceTradeGuid)
        try container.encodeIfPresent(sourceAccountGuid, forKey: .sourceAccountGuid)
        try container.encodeIfPresent(destinationAccountGuid, forKey: .destinationAccountGuid)
    }
}


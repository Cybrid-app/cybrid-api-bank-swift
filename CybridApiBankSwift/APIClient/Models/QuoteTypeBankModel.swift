//
// QuoteTypeBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum QuoteTypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
    case trading = "trading"
    case tradingExit = "trading_exit"
    case funding = "funding"
    case cryptoTransfer = "crypto_transfer"
    case interAccount = "inter_account"
    case lightningTransfer = "lightning_transfer"
    case unknownDefaultOpenApi = "unknown_default_open_api"
}

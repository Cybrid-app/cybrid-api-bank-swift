//
// TransferTypeBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum TransferTypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
    case funding = "funding"
    case book = "book"
    case crypto = "crypto"
    case instantFunding = "instant_funding"
    case fundingReturn = "funding_return"
    case cryptoReturn = "crypto_return"
    case unknownDefaultOpenApi = "unknown_default_open_api"
}

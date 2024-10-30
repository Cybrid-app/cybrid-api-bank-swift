//
// AccountTypeBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum AccountTypeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
    case trading = "trading"
    case fee = "fee"
    case fiat = "fiat"
    case gas = "gas"
    case reserve = "reserve"
    case invoiceOperations = "invoice_operations"
    case storage = "storage"
    case unknownDefaultOpenApi = "unknown_default_open_api"
}

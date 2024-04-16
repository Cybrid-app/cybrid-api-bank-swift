//
// TransferFailureCodeBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum TransferFailureCodeBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
    case nonSufficientFunds = "non_sufficient_funds"
    case refreshRequired = "refresh_required"
    case partyNameInvalid = "party_name_invalid"
    case paymentRailInvalid = "payment_rail_invalid"
    case complianceRejection = "compliance_rejection"
    case cancelled = "cancelled"
    case reversed = "reversed"
    case limitExceeded = "limit_exceeded"
    case networkFeeTooLow = "network_fee_too_low"
    case amountTooLow = "amount_too_low"
    case unknownDefaultOpenApi = "unknown_default_open_api"
}

//
// IdentityVerificationStateBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum IdentityVerificationStateBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
    case storing = "storing"
    case waiting = "waiting"
    case pending = "pending"
    case reviewing = "reviewing"
    case expired = "expired"
    case completed = "completed"
    case unknownDefaultOpenApi = "unknown_default_open_api"
}

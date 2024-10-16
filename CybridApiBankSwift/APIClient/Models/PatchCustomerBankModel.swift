//
// PatchCustomerBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Request body for customer modification. */
public struct PatchCustomerBankModel: Codable, JSONEncodable, Hashable {

    public enum StateBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case unverified = "unverified"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The customer's state. */
    public var state: StateBankModel?

    public init(state: StateBankModel? = nil) {
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(state, forKey: .state)
    }
}


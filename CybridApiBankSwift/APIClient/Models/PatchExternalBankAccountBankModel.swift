//
// PatchExternalBankAccountBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PatchExternalBankAccountBankModel: Codable, JSONEncodable, Hashable {

    public enum StateBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case completed = "completed"
        case refreshRequired = "refresh_required"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The state of the external bank account. */
    public var state: StateBankModel

    public init(state: StateBankModel) {
        self.state = state
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case state
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(state, forKey: .state)
    }
}


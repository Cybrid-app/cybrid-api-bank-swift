//
// PostDepositAddressBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Request body for deposit address creation. */
public struct PostDepositAddressBankModel: Codable, JSONEncodable, Hashable {

    /** The trading account guid. */
    public var accountGuid: String
    /** The labels associated with the address. */
    public var labels: [String]?

    public init(accountGuid: String, labels: [String]? = nil) {
        self.accountGuid = accountGuid
        self.labels = labels
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accountGuid = "account_guid"
        case labels
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(accountGuid, forKey: .accountGuid)
        try container.encodeIfPresent(labels, forKey: .labels)
    }
}


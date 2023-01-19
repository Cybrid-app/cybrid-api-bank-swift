//
// InternalTransactionsListPageInfoBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The cursor info for the next page. */
public struct InternalTransactionsListPageInfoBankModel: Codable, JSONEncodable, Hashable {

    /** The cursor to use to get the next page. */
    public var nextCursor: String?

    public init(nextCursor: String? = nil) {
        self.nextCursor = nextCursor
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nextCursor = "next_cursor"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(nextCursor, forKey: .nextCursor)
    }
}


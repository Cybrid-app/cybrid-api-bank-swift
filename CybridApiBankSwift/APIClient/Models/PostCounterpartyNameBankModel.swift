//
// PostCounterpartyNameBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The name of the counterparty. Required when type is business or type is individual. */
public struct PostCounterpartyNameBankModel: Codable, JSONEncodable, Hashable {

    /** The counterparty's full name. Required when type is business. */
    public var full: String?
    /** The counterparty's first name. Required when type is individual. */
    public var first: String?
    /** The counterparty's middle name. Optional when type is individual. */
    public var middle: String?
    /** The counterparty's last name. Required when type is individual. */
    public var last: String?

    public init(full: String? = nil, first: String? = nil, middle: String? = nil, last: String? = nil) {
        self.full = full
        self.first = first
        self.middle = middle
        self.last = last
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case full
        case first
        case middle
        case last
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(full, forKey: .full)
        try container.encodeIfPresent(first, forKey: .first)
        try container.encodeIfPresent(middle, forKey: .middle)
        try container.encodeIfPresent(last, forKey: .last)
    }
}


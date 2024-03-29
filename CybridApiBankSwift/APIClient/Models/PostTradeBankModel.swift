//
// PostTradeBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PostTradeBankModel: Codable, JSONEncodable, Hashable {

    public enum ExpectedErrorBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case expiredQuote = "expired_quote"
        case nonSufficientFunds = "non_sufficient_funds"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The associated quote's identifier. */
    public var quoteGuid: String
    /** The optional expected error to simulate trade failure. */
    public var expectedError: ExpectedErrorBankModel?
    /** The labels associated with the trade. */
    public var labels: [String]?

    public init(quoteGuid: String, expectedError: ExpectedErrorBankModel? = nil, labels: [String]? = nil) {
        self.quoteGuid = quoteGuid
        self.expectedError = expectedError
        self.labels = labels
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case quoteGuid = "quote_guid"
        case expectedError = "expected_error"
        case labels
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(quoteGuid, forKey: .quoteGuid)
        try container.encodeIfPresent(expectedError, forKey: .expectedError)
        try container.encodeIfPresent(labels, forKey: .labels)
    }
}


//
// PlatformFileBankModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PlatformFileBankModel: Codable, JSONEncodable, Hashable {

    public enum StateBankModel: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case storing = "storing"
        case completed = "completed"
        case failed = "failed"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    /** The unique identifier for the file. */
    public var guid: String?
    /** The organization identifier. */
    public var organizationGuid: String?
    /** The bank identifier. */
    public var bankGuid: String?
    /** The customer identifier. */
    public var customerGuid: String?
    /** The file type; one of drivers_license_front, drivers_license_back, passport, passport_card, visa, identification_card, residence_card, selfie, selfie_video, selfie_left, selfie_right, utility_bill, proof_of_address, bank_statement, property_tax, tax_document, ein_letter, incorporation_certificate, persona_inquiry_report, or persona_inquiry_export. */
    public var type: String?
    /** The media type; one of image/jpeg, image/png, application/pdf, application/json, or video/mp4. */
    public var contentType: String?
    /** The name of the file. */
    public var filename: String?
    /** The ISO8601 datetime the file was completed at. */
    public var completedAt: Date?
    /** The ISO8601 datetime the file failed at. */
    public var failedAt: Date?
    /** The state of the file. One of storing, completed, or failed. */
    public var state: StateBankModel?
    /** The failure code for failed files. */
    public var failureCode: String?
    /** The URL to upload the file to. */
    public var uploadUrl: String?
    /** The ISO8601 datetime the upload URL expires at. */
    public var uploadExpiresAt: Date?
    /** The URL to download the file from. */
    public var downloadUrl: String?
    /** The ISO8601 datetime the download URL expires at. */
    public var downloadExpiresAt: Date?

    public init(guid: String? = nil, organizationGuid: String? = nil, bankGuid: String? = nil, customerGuid: String? = nil, type: String? = nil, contentType: String? = nil, filename: String? = nil, completedAt: Date? = nil, failedAt: Date? = nil, state: StateBankModel? = nil, failureCode: String? = nil, uploadUrl: String? = nil, uploadExpiresAt: Date? = nil, downloadUrl: String? = nil, downloadExpiresAt: Date? = nil) {
        self.guid = guid
        self.organizationGuid = organizationGuid
        self.bankGuid = bankGuid
        self.customerGuid = customerGuid
        self.type = type
        self.contentType = contentType
        self.filename = filename
        self.completedAt = completedAt
        self.failedAt = failedAt
        self.state = state
        self.failureCode = failureCode
        self.uploadUrl = uploadUrl
        self.uploadExpiresAt = uploadExpiresAt
        self.downloadUrl = downloadUrl
        self.downloadExpiresAt = downloadExpiresAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case guid
        case organizationGuid = "organization_guid"
        case bankGuid = "bank_guid"
        case customerGuid = "customer_guid"
        case type
        case contentType = "content_type"
        case filename
        case completedAt = "completed_at"
        case failedAt = "failed_at"
        case state
        case failureCode = "failure_code"
        case uploadUrl = "upload_url"
        case uploadExpiresAt = "upload_expires_at"
        case downloadUrl = "download_url"
        case downloadExpiresAt = "download_expires_at"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(organizationGuid, forKey: .organizationGuid)
        try container.encodeIfPresent(bankGuid, forKey: .bankGuid)
        try container.encodeIfPresent(customerGuid, forKey: .customerGuid)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(contentType, forKey: .contentType)
        try container.encodeIfPresent(filename, forKey: .filename)
        try container.encodeIfPresent(completedAt, forKey: .completedAt)
        try container.encodeIfPresent(failedAt, forKey: .failedAt)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(failureCode, forKey: .failureCode)
        try container.encodeIfPresent(uploadUrl, forKey: .uploadUrl)
        try container.encodeIfPresent(uploadExpiresAt, forKey: .uploadExpiresAt)
        try container.encodeIfPresent(downloadUrl, forKey: .downloadUrl)
        try container.encodeIfPresent(downloadExpiresAt, forKey: .downloadExpiresAt)
    }
}


// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct NewAnnotationInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  ///   - xfdf
  ///   - annotContents
  ///   - mentionedUserIds
  ///   - authorId
  ///   - annotationId
  ///   - documentId
  ///   - pageNumber
  ///   - inReplyTo
  ///   - createdAt
  ///   - updatedAt
  public init(id: Swift.Optional<GraphQLID?> = nil, xfdf: String, annotContents: Swift.Optional<String?> = nil, mentionedUserIds: Swift.Optional<[GraphQLID]?> = nil, authorId: Swift.Optional<GraphQLID?> = nil, annotationId: GraphQLID, documentId: Swift.Optional<GraphQLID?> = nil, pageNumber: Int, inReplyTo: Swift.Optional<GraphQLID?> = nil, createdAt: String, updatedAt: String) {
    graphQLMap = ["id": id, "xfdf": xfdf, "annotContents": annotContents, "mentionedUserIds": mentionedUserIds, "authorId": authorId, "annotationId": annotationId, "documentId": documentId, "pageNumber": pageNumber, "inReplyTo": inReplyTo, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var xfdf: String {
    get {
      return graphQLMap["xfdf"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "xfdf")
    }
  }

  public var annotContents: Swift.Optional<String?> {
    get {
      return graphQLMap["annotContents"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "annotContents")
    }
  }

  public var mentionedUserIds: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["mentionedUserIds"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mentionedUserIds")
    }
  }

  public var authorId: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["authorId"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authorId")
    }
  }

  public var annotationId: GraphQLID {
    get {
      return graphQLMap["annotationId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "annotationId")
    }
  }

  public var documentId: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["documentId"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "documentId")
    }
  }

  public var pageNumber: Int {
    get {
      return graphQLMap["pageNumber"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pageNumber")
    }
  }

  public var inReplyTo: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["inReplyTo"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "inReplyTo")
    }
  }

  public var createdAt: String {
    get {
      return graphQLMap["createdAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: String {
    get {
      return graphQLMap["updatedAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }
}

public struct NewAnnotationMemberInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - annotationId
  ///   - documentId
  ///   - userId
  ///   - updatedAt
  ///   - createdAt
  public init(annotationId: GraphQLID, documentId: GraphQLID, userId: GraphQLID, updatedAt: String, createdAt: String) {
    graphQLMap = ["annotationId": annotationId, "documentId": documentId, "userId": userId, "updatedAt": updatedAt, "createdAt": createdAt]
  }

  public var annotationId: GraphQLID {
    get {
      return graphQLMap["annotationId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "annotationId")
    }
  }

  public var documentId: GraphQLID {
    get {
      return graphQLMap["documentId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "documentId")
    }
  }

  public var userId: GraphQLID {
    get {
      return graphQLMap["userId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var updatedAt: String {
    get {
      return graphQLMap["updatedAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var createdAt: String {
    get {
      return graphQLMap["createdAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }
}

public struct NewDocumentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  ///   - name
  ///   - authorId
  ///   - isPublic
  ///   - updatedAt
  ///   - createdAt
  public init(id: Swift.Optional<GraphQLID?> = nil, name: Swift.Optional<String?> = nil, authorId: GraphQLID, isPublic: Swift.Optional<Bool?> = nil, updatedAt: String, createdAt: String) {
    graphQLMap = ["id": id, "name": name, "authorId": authorId, "isPublic": isPublic, "updatedAt": updatedAt, "createdAt": createdAt]
  }

  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var authorId: GraphQLID {
    get {
      return graphQLMap["authorId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authorId")
    }
  }

  public var isPublic: Swift.Optional<Bool?> {
    get {
      return graphQLMap["isPublic"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "isPublic")
    }
  }

  public var updatedAt: String {
    get {
      return graphQLMap["updatedAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var createdAt: String {
    get {
      return graphQLMap["createdAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }
}

public enum UserTypes: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case anonymous
  case standard
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ANONYMOUS": self = .anonymous
      case "STANDARD": self = .standard
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .anonymous: return "ANONYMOUS"
      case .standard: return "STANDARD"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: UserTypes, rhs: UserTypes) -> Bool {
    switch (lhs, rhs) {
      case (.anonymous, .anonymous): return true
      case (.standard, .standard): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [UserTypes] {
    return [
      .anonymous,
      .standard,
    ]
  }
}

public struct NewDocumentMemberInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - documentId
  ///   - userId
  ///   - lastRead
  ///   - updatedAt
  ///   - createdAt
  public init(documentId: GraphQLID, userId: GraphQLID, lastRead: String, updatedAt: String, createdAt: String) {
    graphQLMap = ["documentId": documentId, "userId": userId, "lastRead": lastRead, "updatedAt": updatedAt, "createdAt": createdAt]
  }

  public var documentId: GraphQLID {
    get {
      return graphQLMap["documentId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "documentId")
    }
  }

  public var userId: GraphQLID {
    get {
      return graphQLMap["userId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var lastRead: String {
    get {
      return graphQLMap["lastRead"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastRead")
    }
  }

  public var updatedAt: String {
    get {
      return graphQLMap["updatedAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var createdAt: String {
    get {
      return graphQLMap["createdAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }
}

public struct NewMentionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - userId
  ///   - annotationId
  ///   - documentId
  ///   - updatedAt
  ///   - createdAt
  public init(userId: GraphQLID, annotationId: GraphQLID, documentId: GraphQLID, updatedAt: String, createdAt: String) {
    graphQLMap = ["userId": userId, "annotationId": annotationId, "documentId": documentId, "updatedAt": updatedAt, "createdAt": createdAt]
  }

  public var userId: GraphQLID {
    get {
      return graphQLMap["userId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var annotationId: GraphQLID {
    get {
      return graphQLMap["annotationId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "annotationId")
    }
  }

  public var documentId: GraphQLID {
    get {
      return graphQLMap["documentId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "documentId")
    }
  }

  public var updatedAt: String {
    get {
      return graphQLMap["updatedAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var createdAt: String {
    get {
      return graphQLMap["createdAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }
}

public struct NewSnapshotInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  ///   - authorId
  ///   - documentId
  ///   - name
  ///   - createdAt
  ///   - updatedAt
  public init(id: Swift.Optional<GraphQLID?> = nil, authorId: GraphQLID, documentId: GraphQLID, name: String, createdAt: String, updatedAt: String) {
    graphQLMap = ["id": id, "authorId": authorId, "documentId": documentId, "name": name, "createdAt": createdAt, "updatedAt": updatedAt]
  }

  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var authorId: GraphQLID {
    get {
      return graphQLMap["authorId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "authorId")
    }
  }

  public var documentId: GraphQLID {
    get {
      return graphQLMap["documentId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "documentId")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var createdAt: String {
    get {
      return graphQLMap["createdAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }

  public var updatedAt: String {
    get {
      return graphQLMap["updatedAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }
}

public struct NewUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - userName
  ///   - email
  ///   - type
  ///   - updatedAt
  ///   - createdAt
  public init(userName: Swift.Optional<String?> = nil, email: Swift.Optional<String?> = nil, type: Swift.Optional<UserTypes?> = nil, updatedAt: String, createdAt: String) {
    graphQLMap = ["userName": userName, "email": email, "type": type, "updatedAt": updatedAt, "createdAt": createdAt]
  }

  public var userName: Swift.Optional<String?> {
    get {
      return graphQLMap["userName"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userName")
    }
  }

  public var email: Swift.Optional<String?> {
    get {
      return graphQLMap["email"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var type: Swift.Optional<UserTypes?> {
    get {
      return graphQLMap["type"] as? Swift.Optional<UserTypes?> ?? Swift.Optional<UserTypes?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var updatedAt: String {
    get {
      return graphQLMap["updatedAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }

  public var createdAt: String {
    get {
      return graphQLMap["createdAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }
}

public struct ScrollSyncPositionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - scrollTop
  ///   - scrollHeight
  public init(scrollTop: Swift.Optional<Int?> = nil, scrollHeight: Swift.Optional<Int?> = nil) {
    graphQLMap = ["scrollTop": scrollTop, "scrollHeight": scrollHeight]
  }

  public var scrollTop: Swift.Optional<Int?> {
    get {
      return graphQLMap["scrollTop"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "scrollTop")
    }
  }

  public var scrollHeight: Swift.Optional<Int?> {
    get {
      return graphQLMap["scrollHeight"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "scrollHeight")
    }
  }
}

public struct DeleteAnnotationMemberInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - memberId
  ///   - annotationId
  ///   - userId
  public init(memberId: Swift.Optional<GraphQLID?> = nil, annotationId: Swift.Optional<GraphQLID?> = nil, userId: Swift.Optional<GraphQLID?> = nil) {
    graphQLMap = ["memberId": memberId, "annotationId": annotationId, "userId": userId]
  }

  public var memberId: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["memberId"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "memberId")
    }
  }

  public var annotationId: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["annotationId"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "annotationId")
    }
  }

  public var userId: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["userId"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }
}

public struct DeleteConnectedDocUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - documentId
  ///   - userId
  public init(documentId: GraphQLID, userId: GraphQLID) {
    graphQLMap = ["documentId": documentId, "userId": userId]
  }

  public var documentId: GraphQLID {
    get {
      return graphQLMap["documentId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "documentId")
    }
  }

  public var userId: GraphQLID {
    get {
      return graphQLMap["userId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }
}

public struct EditAnnotationInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - xfdf
  ///   - annotContents
  ///   - pageNumber
  ///   - mentionedUserIds
  ///   - updatedAt
  public init(xfdf: Swift.Optional<String?> = nil, annotContents: Swift.Optional<String?> = nil, pageNumber: Swift.Optional<Int?> = nil, mentionedUserIds: Swift.Optional<[GraphQLID]?> = nil, updatedAt: String) {
    graphQLMap = ["xfdf": xfdf, "annotContents": annotContents, "pageNumber": pageNumber, "mentionedUserIds": mentionedUserIds, "updatedAt": updatedAt]
  }

  public var xfdf: Swift.Optional<String?> {
    get {
      return graphQLMap["xfdf"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "xfdf")
    }
  }

  public var annotContents: Swift.Optional<String?> {
    get {
      return graphQLMap["annotContents"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "annotContents")
    }
  }

  public var pageNumber: Swift.Optional<Int?> {
    get {
      return graphQLMap["pageNumber"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "pageNumber")
    }
  }

  public var mentionedUserIds: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["mentionedUserIds"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mentionedUserIds")
    }
  }

  public var updatedAt: String {
    get {
      return graphQLMap["updatedAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }
}

public struct EditConnectedDocUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - documentId
  ///   - userId
  ///   - currentPage
  public init(documentId: GraphQLID, userId: GraphQLID, currentPage: Swift.Optional<Int?> = nil) {
    graphQLMap = ["documentId": documentId, "userId": userId, "currentPage": currentPage]
  }

  public var documentId: GraphQLID {
    get {
      return graphQLMap["documentId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "documentId")
    }
  }

  public var userId: GraphQLID {
    get {
      return graphQLMap["userId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var currentPage: Swift.Optional<Int?> {
    get {
      return graphQLMap["currentPage"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "currentPage")
    }
  }
}

public struct EditDocumentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - isPublic
  ///   - name
  ///   - updatedAt
  public init(isPublic: Swift.Optional<Bool?> = nil, name: Swift.Optional<String?> = nil, updatedAt: String) {
    graphQLMap = ["isPublic": isPublic, "name": name, "updatedAt": updatedAt]
  }

  public var isPublic: Swift.Optional<Bool?> {
    get {
      return graphQLMap["isPublic"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "isPublic")
    }
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var updatedAt: String {
    get {
      return graphQLMap["updatedAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }
}

public struct EditSnapshotInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - name
  ///   - updatedAt
  public init(name: Swift.Optional<String?> = nil, updatedAt: String) {
    graphQLMap = ["name": name, "updatedAt": updatedAt]
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var updatedAt: String {
    get {
      return graphQLMap["updatedAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "updatedAt")
    }
  }
}

public enum EncodeContextActions: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case `set`
  case merge
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "SET": self = .set
      case "MERGE": self = .merge
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .set: return "SET"
      case .merge: return "MERGE"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: EncodeContextActions, rhs: EncodeContextActions) -> Bool {
    switch (lhs, rhs) {
      case (.set, .set): return true
      case (.merge, .merge): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [EncodeContextActions] {
    return [
      .set,
      .merge,
    ]
  }
}

public struct InvitedUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  ///   - userName
  ///   - email
  public init(id: Swift.Optional<GraphQLID?> = nil, userName: Swift.Optional<String?> = nil, email: Swift.Optional<String?> = nil) {
    graphQLMap = ["id": id, "userName": userName, "email": email]
  }

  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var userName: Swift.Optional<String?> {
    get {
      return graphQLMap["userName"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userName")
    }
  }

  public var email: Swift.Optional<String?> {
    get {
      return graphQLMap["email"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }
}

public struct DeleteDocumentMemberInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - memberId
  public init(memberId: GraphQLID) {
    graphQLMap = ["memberId": memberId]
  }

  public var memberId: GraphQLID {
    get {
      return graphQLMap["memberId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "memberId")
    }
  }
}

public struct RestoreSnapshotInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  ///   - name
  ///   - createdAt
  public init(id: GraphQLID, name: String, createdAt: String) {
    graphQLMap = ["id": id, "name": name, "createdAt": createdAt]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var createdAt: String {
    get {
      return graphQLMap["createdAt"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdAt")
    }
  }
}

public enum OrderTypes: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case updatedAt
  case createdAt
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "updatedAt": self = .updatedAt
      case "createdAt": self = .createdAt
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .updatedAt: return "updatedAt"
      case .createdAt: return "createdAt"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: OrderTypes, rhs: OrderTypes) -> Bool {
    switch (lhs, rhs) {
      case (.updatedAt, .updatedAt): return true
      case (.createdAt, .createdAt): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [OrderTypes] {
    return [
      .updatedAt,
      .createdAt,
    ]
  }
}

public enum OrderDirections: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case asc
  case desc
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ASC": self = .asc
      case "DESC": self = .desc
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .asc: return "ASC"
      case .desc: return "DESC"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: OrderDirections, rhs: OrderDirections) -> Bool {
    switch (lhs, rhs) {
      case (.asc, .asc): return true
      case (.desc, .desc): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [OrderDirections] {
    return [
      .asc,
      .desc,
    ]
  }
}

public struct QuerySettings: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - xfdfFormat
  public init(xfdfFormat: Swift.Optional<XFDFTypes?> = nil) {
    graphQLMap = ["xfdfFormat": xfdfFormat]
  }

  public var xfdfFormat: Swift.Optional<XFDFTypes?> {
    get {
      return graphQLMap["xfdfFormat"] as? Swift.Optional<XFDFTypes?> ?? Swift.Optional<XFDFTypes?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "xfdfFormat")
    }
  }
}

public enum XFDFTypes: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case raw
  case commandAdd
  case commandModify
  case commandAll
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "RAW": self = .raw
      case "COMMAND_ADD": self = .commandAdd
      case "COMMAND_MODIFY": self = .commandModify
      case "COMMAND_ALL": self = .commandAll
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .raw: return "RAW"
      case .commandAdd: return "COMMAND_ADD"
      case .commandModify: return "COMMAND_MODIFY"
      case .commandAll: return "COMMAND_ALL"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: XFDFTypes, rhs: XFDFTypes) -> Bool {
    switch (lhs, rhs) {
      case (.raw, .raw): return true
      case (.commandAdd, .commandAdd): return true
      case (.commandModify, .commandModify): return true
      case (.commandAll, .commandAll): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [XFDFTypes] {
    return [
      .raw,
      .commandAdd,
      .commandModify,
      .commandAll,
    ]
  }
}

public enum ChangeEventTypes: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case add
  case edit
  case delete
  case invite
  case markAsRead
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ADD": self = .add
      case "EDIT": self = .edit
      case "DELETE": self = .delete
      case "INVITE": self = .invite
      case "MARK_AS_READ": self = .markAsRead
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .add: return "ADD"
      case .edit: return "EDIT"
      case .delete: return "DELETE"
      case .invite: return "INVITE"
      case .markAsRead: return "MARK_AS_READ"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ChangeEventTypes, rhs: ChangeEventTypes) -> Bool {
    switch (lhs, rhs) {
      case (.add, .add): return true
      case (.edit, .edit): return true
      case (.delete, .delete): return true
      case (.invite, .invite): return true
      case (.markAsRead, .markAsRead): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ChangeEventTypes] {
    return [
      .add,
      .edit,
      .delete,
      .invite,
      .markAsRead,
    ]
  }
}

public enum ScrollSyncChangedEventTypes: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case add
  case delete
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ADD": self = .add
      case "DELETE": self = .delete
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .add: return "ADD"
      case .delete: return "DELETE"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ScrollSyncChangedEventTypes, rhs: ScrollSyncChangedEventTypes) -> Bool {
    switch (lhs, rhs) {
      case (.add, .add): return true
      case (.delete, .delete): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ScrollSyncChangedEventTypes] {
    return [
      .add,
      .delete,
    ]
  }
}

public enum SnapshotChangeEventTypes: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case add
  case edit
  case delete
  case restore
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ADD": self = .add
      case "EDIT": self = .edit
      case "DELETE": self = .delete
      case "RESTORE": self = .restore
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .add: return "ADD"
      case .edit: return "EDIT"
      case .delete: return "DELETE"
      case .restore: return "RESTORE"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: SnapshotChangeEventTypes, rhs: SnapshotChangeEventTypes) -> Bool {
    switch (lhs, rhs) {
      case (.add, .add): return true
      case (.edit, .edit): return true
      case (.delete, .delete): return true
      case (.restore, .restore): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [SnapshotChangeEventTypes] {
    return [
      .add,
      .edit,
      .delete,
      .restore,
    ]
  }
}

public final class AddAnnotationMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddAnnotation($input: NewAnnotationInput!) {
      addAnnotation(input: $input) {
        __typename
        id
        xfdf
        pageNumber
        annotationId
        createdAt
        author {
          __typename
          id
        }
        documentId
        membership {
          __typename
          id
          lastRead
        }
        inReplyTo
      }
    }
    """

  public let operationName: String = "AddAnnotation"

  public let operationIdentifier: String? = "1f4d12ff2af25e554269519d05c4acb74b09a48ab13ca4db8c70754115ac3745"

  public var input: NewAnnotationInput

  public init(input: NewAnnotationInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addAnnotation", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(AddAnnotation.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addAnnotation: AddAnnotation) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addAnnotation": addAnnotation.resultMap])
    }

    public var addAnnotation: AddAnnotation {
      get {
        return AddAnnotation(unsafeResultMap: resultMap["addAnnotation"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addAnnotation")
      }
    }

    public struct AddAnnotation: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Annotation"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("xfdf", type: .nonNull(.scalar(String.self))),
          GraphQLField("pageNumber", type: .nonNull(.scalar(Int.self))),
          GraphQLField("annotationId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .object(Author.selections)),
          GraphQLField("documentId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("membership", type: .object(Membership.selections)),
          GraphQLField("inReplyTo", type: .scalar(GraphQLID.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, xfdf: String, pageNumber: Int, annotationId: GraphQLID, createdAt: String, author: Author? = nil, documentId: GraphQLID, membership: Membership? = nil, inReplyTo: GraphQLID? = nil) {
        self.init(unsafeResultMap: ["__typename": "Annotation", "id": id, "xfdf": xfdf, "pageNumber": pageNumber, "annotationId": annotationId, "createdAt": createdAt, "author": author.flatMap { (value: Author) -> ResultMap in value.resultMap }, "documentId": documentId, "membership": membership.flatMap { (value: Membership) -> ResultMap in value.resultMap }, "inReplyTo": inReplyTo])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var xfdf: String {
        get {
          return resultMap["xfdf"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "xfdf")
        }
      }

      public var pageNumber: Int {
        get {
          return resultMap["pageNumber"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "pageNumber")
        }
      }

      public var annotationId: GraphQLID {
        get {
          return resultMap["annotationId"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "annotationId")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["createdAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var author: Author? {
        get {
          return (resultMap["author"] as? ResultMap).flatMap { Author(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "author")
        }
      }

      public var documentId: GraphQLID {
        get {
          return resultMap["documentId"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "documentId")
        }
      }

      public var membership: Membership? {
        get {
          return (resultMap["membership"] as? ResultMap).flatMap { Membership(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "membership")
        }
      }

      public var inReplyTo: GraphQLID? {
        get {
          return resultMap["inReplyTo"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "inReplyTo")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }
      }

      public struct Membership: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["AnnotationMember"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("lastRead", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, lastRead: String) {
          self.init(unsafeResultMap: ["__typename": "AnnotationMember", "id": id, "lastRead": lastRead])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var lastRead: String {
          get {
            return resultMap["lastRead"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "lastRead")
          }
        }
      }
    }
  }
}

public final class AddAnnotationMemberMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddAnnotationMember($input: NewAnnotationMemberInput!) {
      addAnnotationMember(input: $input) {
        __typename
        id
        annotationId
        documentId
        lastRead
      }
    }
    """

  public let operationName: String = "AddAnnotationMember"

  public let operationIdentifier: String? = "3a41549aedad5a9df8c75e150c02afd9e7b3192a39ed2ce51847c9da92cae74a"

  public var input: NewAnnotationMemberInput

  public init(input: NewAnnotationMemberInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addAnnotationMember", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(AddAnnotationMember.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addAnnotationMember: AddAnnotationMember) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addAnnotationMember": addAnnotationMember.resultMap])
    }

    public var addAnnotationMember: AddAnnotationMember {
      get {
        return AddAnnotationMember(unsafeResultMap: resultMap["addAnnotationMember"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addAnnotationMember")
      }
    }

    public struct AddAnnotationMember: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["AnnotationMember"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("annotationId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("documentId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("lastRead", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, annotationId: GraphQLID, documentId: GraphQLID, lastRead: String) {
        self.init(unsafeResultMap: ["__typename": "AnnotationMember", "id": id, "annotationId": annotationId, "documentId": documentId, "lastRead": lastRead])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var annotationId: GraphQLID {
        get {
          return resultMap["annotationId"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "annotationId")
        }
      }

      public var documentId: GraphQLID {
        get {
          return resultMap["documentId"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "documentId")
        }
      }

      public var lastRead: String {
        get {
          return resultMap["lastRead"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastRead")
        }
      }
    }
  }
}

public final class AddDocumentMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddDocument($document: NewDocumentInput!, $annotations: [NewAnnotationInput!]) {
      addDocument(document: $document, annotations: $annotations) {
        __typename
        author {
          __typename
          id
          userName
          email
          type
        }
        createdAt
        id
        name
        isPublic
        annotations {
          __typename
          id
          xfdf
          annotationId
          documentId
          author {
            __typename
            id
          }
          createdAt
          inReplyTo
          pageNumber
          membership {
            __typename
            id
            lastRead
          }
        }
        members {
          __typename
          id
          createdAt
          user {
            __typename
            id
            userName
            email
            createdAt
          }
        }
      }
    }
    """

  public let operationName: String = "AddDocument"

  public let operationIdentifier: String? = "7891e7d9fb78600d0a5b1b3db69891e88c12982a58f7f5b35cbc2caf3053587d"

  public var document: NewDocumentInput
  public var annotations: [NewAnnotationInput]?

  public init(document: NewDocumentInput, annotations: [NewAnnotationInput]?) {
    self.document = document
    self.annotations = annotations
  }

  public var variables: GraphQLMap? {
    return ["document": document, "annotations": annotations]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addDocument", arguments: ["document": GraphQLVariable("document"), "annotations": GraphQLVariable("annotations")], type: .nonNull(.object(AddDocument.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addDocument: AddDocument) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addDocument": addDocument.resultMap])
    }

    public var addDocument: AddDocument {
      get {
        return AddDocument(unsafeResultMap: resultMap["addDocument"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addDocument")
      }
    }

    public struct AddDocument: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Document"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.object(Author.selections))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("isPublic", type: .scalar(Bool.self)),
          GraphQLField("annotations", type: .nonNull(.list(.nonNull(.object(Annotation.selections))))),
          GraphQLField("members", type: .nonNull(.list(.nonNull(.object(Member.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(author: Author, createdAt: String, id: GraphQLID, name: String? = nil, isPublic: Bool? = nil, annotations: [Annotation], members: [Member]) {
        self.init(unsafeResultMap: ["__typename": "Document", "author": author.resultMap, "createdAt": createdAt, "id": id, "name": name, "isPublic": isPublic, "annotations": annotations.map { (value: Annotation) -> ResultMap in value.resultMap }, "members": members.map { (value: Member) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var author: Author {
        get {
          return Author(unsafeResultMap: resultMap["author"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "author")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["createdAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var isPublic: Bool? {
        get {
          return resultMap["isPublic"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isPublic")
        }
      }

      public var annotations: [Annotation] {
        get {
          return (resultMap["annotations"] as! [ResultMap]).map { (value: ResultMap) -> Annotation in Annotation(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Annotation) -> ResultMap in value.resultMap }, forKey: "annotations")
        }
      }

      public var members: [Member] {
        get {
          return (resultMap["members"] as! [ResultMap]).map { (value: ResultMap) -> Member in Member(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Member) -> ResultMap in value.resultMap }, forKey: "members")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userName", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("type", type: .nonNull(.scalar(UserTypes.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, userName: String? = nil, email: String? = nil, type: UserTypes) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id, "userName": userName, "email": email, "type": type])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var userName: String? {
          get {
            return resultMap["userName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userName")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var type: UserTypes {
          get {
            return resultMap["type"]! as! UserTypes
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }
      }

      public struct Annotation: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Annotation"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("xfdf", type: .nonNull(.scalar(String.self))),
            GraphQLField("annotationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("documentId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("author", type: .object(Author.selections)),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("inReplyTo", type: .scalar(GraphQLID.self)),
            GraphQLField("pageNumber", type: .nonNull(.scalar(Int.self))),
            GraphQLField("membership", type: .object(Membership.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, xfdf: String, annotationId: GraphQLID, documentId: GraphQLID, author: Author? = nil, createdAt: String, inReplyTo: GraphQLID? = nil, pageNumber: Int, membership: Membership? = nil) {
          self.init(unsafeResultMap: ["__typename": "Annotation", "id": id, "xfdf": xfdf, "annotationId": annotationId, "documentId": documentId, "author": author.flatMap { (value: Author) -> ResultMap in value.resultMap }, "createdAt": createdAt, "inReplyTo": inReplyTo, "pageNumber": pageNumber, "membership": membership.flatMap { (value: Membership) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var xfdf: String {
          get {
            return resultMap["xfdf"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "xfdf")
          }
        }

        public var annotationId: GraphQLID {
          get {
            return resultMap["annotationId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "annotationId")
          }
        }

        public var documentId: GraphQLID {
          get {
            return resultMap["documentId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "documentId")
          }
        }

        public var author: Author? {
          get {
            return (resultMap["author"] as? ResultMap).flatMap { Author(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "author")
          }
        }

        public var createdAt: String {
          get {
            return resultMap["createdAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var inReplyTo: GraphQLID? {
          get {
            return resultMap["inReplyTo"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "inReplyTo")
          }
        }

        public var pageNumber: Int {
          get {
            return resultMap["pageNumber"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "pageNumber")
          }
        }

        public var membership: Membership? {
          get {
            return (resultMap["membership"] as? ResultMap).flatMap { Membership(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "membership")
          }
        }

        public struct Author: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["User"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID) {
            self.init(unsafeResultMap: ["__typename": "User", "id": id])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }
        }

        public struct Membership: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["AnnotationMember"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("lastRead", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, lastRead: String) {
            self.init(unsafeResultMap: ["__typename": "AnnotationMember", "id": id, "lastRead": lastRead])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var lastRead: String {
            get {
              return resultMap["lastRead"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "lastRead")
            }
          }
        }
      }

      public struct Member: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["DocumentMember"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("user", type: .nonNull(.object(User.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, createdAt: String, user: User) {
          self.init(unsafeResultMap: ["__typename": "DocumentMember", "id": id, "createdAt": createdAt, "user": user.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var createdAt: String {
          get {
            return resultMap["createdAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var user: User {
          get {
            return User(unsafeResultMap: resultMap["user"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "user")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["User"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("userName", type: .scalar(String.self)),
              GraphQLField("email", type: .scalar(String.self)),
              GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, userName: String? = nil, email: String? = nil, createdAt: String) {
            self.init(unsafeResultMap: ["__typename": "User", "id": id, "userName": userName, "email": email, "createdAt": createdAt])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var userName: String? {
            get {
              return resultMap["userName"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "userName")
            }
          }

          public var email: String? {
            get {
              return resultMap["email"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "email")
            }
          }

          public var createdAt: String {
            get {
              return resultMap["createdAt"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "createdAt")
            }
          }
        }
      }
    }
  }
}

public final class AddDocumentMemberMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddDocumentMember($input: NewDocumentMemberInput!) {
      addDocumentMember(input: $input) {
        __typename
        id
        user {
          __typename
          id
        }
        documentId
        lastRead
      }
    }
    """

  public let operationName: String = "AddDocumentMember"

  public let operationIdentifier: String? = "9ad06ace9e9d90292c774f110d288dbbfb86c5de3f7ec8051eb422d79174f662"

  public var input: NewDocumentMemberInput

  public init(input: NewDocumentMemberInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addDocumentMember", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(AddDocumentMember.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addDocumentMember: AddDocumentMember) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addDocumentMember": addDocumentMember.resultMap])
    }

    public var addDocumentMember: AddDocumentMember {
      get {
        return AddDocumentMember(unsafeResultMap: resultMap["addDocumentMember"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addDocumentMember")
      }
    }

    public struct AddDocumentMember: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DocumentMember"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("user", type: .nonNull(.object(User.selections))),
          GraphQLField("documentId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("lastRead", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, user: User, documentId: GraphQLID, lastRead: String) {
        self.init(unsafeResultMap: ["__typename": "DocumentMember", "id": id, "user": user.resultMap, "documentId": documentId, "lastRead": lastRead])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var user: User {
        get {
          return User(unsafeResultMap: resultMap["user"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "user")
        }
      }

      public var documentId: GraphQLID {
        get {
          return resultMap["documentId"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "documentId")
        }
      }

      public var lastRead: String {
        get {
          return resultMap["lastRead"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastRead")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }
      }
    }
  }
}

public final class AddMentionMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddMention($input: NewMentionInput!) {
      addMention(input: $input) {
        __typename
        id
        annotationId
        mentionedUser {
          __typename
          id
          userName
          email
        }
      }
    }
    """

  public let operationName: String = "AddMention"

  public let operationIdentifier: String? = "32065448120681aac06616c6c2ffecd1f7de8b85d5021133012caa4f987a0aee"

  public var input: NewMentionInput

  public init(input: NewMentionInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addMention", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(AddMention.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addMention: AddMention) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addMention": addMention.resultMap])
    }

    public var addMention: AddMention {
      get {
        return AddMention(unsafeResultMap: resultMap["addMention"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addMention")
      }
    }

    public struct AddMention: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Mention"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("annotationId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("mentionedUser", type: .nonNull(.object(MentionedUser.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, annotationId: GraphQLID, mentionedUser: MentionedUser) {
        self.init(unsafeResultMap: ["__typename": "Mention", "id": id, "annotationId": annotationId, "mentionedUser": mentionedUser.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var annotationId: GraphQLID {
        get {
          return resultMap["annotationId"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "annotationId")
        }
      }

      public var mentionedUser: MentionedUser {
        get {
          return MentionedUser(unsafeResultMap: resultMap["mentionedUser"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "mentionedUser")
        }
      }

      public struct MentionedUser: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userName", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, userName: String? = nil, email: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id, "userName": userName, "email": email])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var userName: String? {
          get {
            return resultMap["userName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userName")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }
      }
    }
  }
}

public final class AddSnapshotMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddSnapshot($addSnapshotInput: NewSnapshotInput!) {
      addSnapshot(input: $addSnapshotInput) {
        __typename
        id
        author {
          __typename
          id
          email
          userName
        }
        documentId
        xfdf
        name
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "AddSnapshot"

  public let operationIdentifier: String? = "748f2389c3c2a1d623b7c29384ac3990a39296fd55ef8a05366e1d4e606d7e4a"

  public var addSnapshotInput: NewSnapshotInput

  public init(addSnapshotInput: NewSnapshotInput) {
    self.addSnapshotInput = addSnapshotInput
  }

  public var variables: GraphQLMap? {
    return ["addSnapshotInput": addSnapshotInput]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addSnapshot", arguments: ["input": GraphQLVariable("addSnapshotInput")], type: .nonNull(.object(AddSnapshot.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addSnapshot: AddSnapshot) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addSnapshot": addSnapshot.resultMap])
    }

    public var addSnapshot: AddSnapshot {
      get {
        return AddSnapshot(unsafeResultMap: resultMap["addSnapshot"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addSnapshot")
      }
    }

    public struct AddSnapshot: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Snapshot"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("author", type: .object(Author.selections)),
          GraphQLField("documentId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("xfdf", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, author: Author? = nil, documentId: GraphQLID, xfdf: String, name: String? = nil, createdAt: String, updatedAt: String) {
        self.init(unsafeResultMap: ["__typename": "Snapshot", "id": id, "author": author.flatMap { (value: Author) -> ResultMap in value.resultMap }, "documentId": documentId, "xfdf": xfdf, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var author: Author? {
        get {
          return (resultMap["author"] as? ResultMap).flatMap { Author(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "author")
        }
      }

      public var documentId: GraphQLID {
        get {
          return resultMap["documentId"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "documentId")
        }
      }

      public var xfdf: String {
        get {
          return resultMap["xfdf"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "xfdf")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["createdAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return resultMap["updatedAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("userName", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, email: String? = nil, userName: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id, "email": email, "userName": userName])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var userName: String? {
          get {
            return resultMap["userName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userName")
          }
        }
      }
    }
  }
}

public final class AddUserMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddUser($input: NewUserInput!) {
      addUser(input: $input) {
        __typename
        id
        email
        type
        userName
      }
    }
    """

  public let operationName: String = "AddUser"

  public let operationIdentifier: String? = "5bd0d7a96d66a16150c3b41ba3c339db076b4dcdc4672445ddcd04270ec4168d"

  public var input: NewUserInput

  public init(input: NewUserInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addUser", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(AddUser.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addUser: AddUser) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addUser": addUser.resultMap])
    }

    public var addUser: AddUser {
      get {
        return AddUser(unsafeResultMap: resultMap["addUser"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addUser")
      }
    }

    public struct AddUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("type", type: .nonNull(.scalar(UserTypes.self))),
          GraphQLField("userName", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, email: String? = nil, type: UserTypes, userName: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "email": email, "type": type, "userName": userName])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var type: UserTypes {
        get {
          return resultMap["type"]! as! UserTypes
        }
        set {
          resultMap.updateValue(newValue, forKey: "type")
        }
      }

      public var userName: String? {
        get {
          return resultMap["userName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userName")
        }
      }
    }
  }
}

public final class ConnectUserToDocumentMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation ConnectUserToDocument($documentId: ID!, $userId: ID!, $pageNumber: Int) {
      connectUserToDocument(
        documentId: $documentId
        userId: $userId
        pageNumber: $pageNumber
      ) {
        __typename
        userId
        documentId
        successful
      }
    }
    """

  public let operationName: String = "ConnectUserToDocument"

  public let operationIdentifier: String? = "d6a77e7845288aeb6c021f5948740fe1a5af952a9ea035fed1d881a451f84f97"

  public var documentId: GraphQLID
  public var userId: GraphQLID
  public var pageNumber: Int?

  public init(documentId: GraphQLID, userId: GraphQLID, pageNumber: Int? = nil) {
    self.documentId = documentId
    self.userId = userId
    self.pageNumber = pageNumber
  }

  public var variables: GraphQLMap? {
    return ["documentId": documentId, "userId": userId, "pageNumber": pageNumber]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("connectUserToDocument", arguments: ["documentId": GraphQLVariable("documentId"), "userId": GraphQLVariable("userId"), "pageNumber": GraphQLVariable("pageNumber")], type: .nonNull(.object(ConnectUserToDocument.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(connectUserToDocument: ConnectUserToDocument) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "connectUserToDocument": connectUserToDocument.resultMap])
    }

    public var connectUserToDocument: ConnectUserToDocument {
      get {
        return ConnectUserToDocument(unsafeResultMap: resultMap["connectUserToDocument"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "connectUserToDocument")
      }
    }

    public struct ConnectUserToDocument: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ConnectResult"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .scalar(GraphQLID.self)),
          GraphQLField("documentId", type: .scalar(GraphQLID.self)),
          GraphQLField("successful", type: .nonNull(.scalar(Bool.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(userId: GraphQLID? = nil, documentId: GraphQLID? = nil, successful: Bool) {
        self.init(unsafeResultMap: ["__typename": "ConnectResult", "userId": userId, "documentId": documentId, "successful": successful])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var userId: GraphQLID? {
        get {
          return resultMap["userId"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var documentId: GraphQLID? {
        get {
          return resultMap["documentId"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "documentId")
        }
      }

      public var successful: Bool {
        get {
          return resultMap["successful"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "successful")
        }
      }
    }
  }
}

public final class CopyAnnotationsMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CopyAnnotations($fromDocId: ID!, $toDocId: ID!) {
      copyAnnotations(fromDocId: $fromDocId, toDocId: $toDocId)
    }
    """

  public let operationName: String = "CopyAnnotations"

  public let operationIdentifier: String? = "f087c7fc5d0eb457d2b4f3eb7d444cc8221f03b01f06f5e3207b6330ea50464b"

  public var fromDocId: GraphQLID
  public var toDocId: GraphQLID

  public init(fromDocId: GraphQLID, toDocId: GraphQLID) {
    self.fromDocId = fromDocId
    self.toDocId = toDocId
  }

  public var variables: GraphQLMap? {
    return ["fromDocId": fromDocId, "toDocId": toDocId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("copyAnnotations", arguments: ["fromDocId": GraphQLVariable("fromDocId"), "toDocId": GraphQLVariable("toDocId")], type: .nonNull(.scalar(Bool.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(copyAnnotations: Bool) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "copyAnnotations": copyAnnotations])
    }

    public var copyAnnotations: Bool {
      get {
        return resultMap["copyAnnotations"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "copyAnnotations")
      }
    }
  }
}

public final class CreateScrollSyncSessionMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CreateScrollSyncSession($documentId: ID!, $position: ScrollSyncPositionInput!) {
      createScrollSyncSession(documentId: $documentId, position: $position) {
        __typename
        leaderId
        documentId
        position {
          __typename
          scrollTop
          scrollHeight
        }
        sessionId
      }
    }
    """

  public let operationName: String = "CreateScrollSyncSession"

  public let operationIdentifier: String? = "c60fe219aa8ea762ac91e2f80271b1998bef8a1fba6ccea1894df7cec74e635d"

  public var documentId: GraphQLID
  public var position: ScrollSyncPositionInput

  public init(documentId: GraphQLID, position: ScrollSyncPositionInput) {
    self.documentId = documentId
    self.position = position
  }

  public var variables: GraphQLMap? {
    return ["documentId": documentId, "position": position]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createScrollSyncSession", arguments: ["documentId": GraphQLVariable("documentId"), "position": GraphQLVariable("position")], type: .nonNull(.object(CreateScrollSyncSession.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createScrollSyncSession: CreateScrollSyncSession) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createScrollSyncSession": createScrollSyncSession.resultMap])
    }

    public var createScrollSyncSession: CreateScrollSyncSession {
      get {
        return CreateScrollSyncSession(unsafeResultMap: resultMap["createScrollSyncSession"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "createScrollSyncSession")
      }
    }

    public struct CreateScrollSyncSession: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ScrollSyncSession"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("leaderId", type: .nonNull(.scalar(String.self))),
          GraphQLField("documentId", type: .nonNull(.scalar(String.self))),
          GraphQLField("position", type: .nonNull(.object(Position.selections))),
          GraphQLField("sessionId", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(leaderId: String, documentId: String, position: Position, sessionId: String) {
        self.init(unsafeResultMap: ["__typename": "ScrollSyncSession", "leaderId": leaderId, "documentId": documentId, "position": position.resultMap, "sessionId": sessionId])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var leaderId: String {
        get {
          return resultMap["leaderId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "leaderId")
        }
      }

      public var documentId: String {
        get {
          return resultMap["documentId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "documentId")
        }
      }

      public var position: Position {
        get {
          return Position(unsafeResultMap: resultMap["position"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "position")
        }
      }

      public var sessionId: String {
        get {
          return resultMap["sessionId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "sessionId")
        }
      }

      public struct Position: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ScrollSyncPosition"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("scrollTop", type: .scalar(Int.self)),
            GraphQLField("scrollHeight", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(scrollTop: Int? = nil, scrollHeight: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "ScrollSyncPosition", "scrollTop": scrollTop, "scrollHeight": scrollHeight])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var scrollTop: Int? {
          get {
            return resultMap["scrollTop"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "scrollTop")
          }
        }

        public var scrollHeight: Int? {
          get {
            return resultMap["scrollHeight"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "scrollHeight")
          }
        }
      }
    }
  }
}

public final class DeleteAnnotationMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DeleteAnnotation($id: ID!) {
      deleteAnnotation(id: $id) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "DeleteAnnotation"

  public let operationIdentifier: String? = "a86522b468b0ec19c78eac77105bf002fb399265ebc17ef5c8e579449052b6fb"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deleteAnnotation", arguments: ["id": GraphQLVariable("id")], type: .nonNull(.object(DeleteAnnotation.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteAnnotation: DeleteAnnotation) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteAnnotation": deleteAnnotation.resultMap])
    }

    public var deleteAnnotation: DeleteAnnotation {
      get {
        return DeleteAnnotation(unsafeResultMap: resultMap["deleteAnnotation"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "deleteAnnotation")
      }
    }

    public struct DeleteAnnotation: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DeleteResult"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil) {
        self.init(unsafeResultMap: ["__typename": "DeleteResult", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class DeleteAnnotationMemberMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DeleteAnnotationMember($input: DeleteAnnotationMemberInput!) {
      deleteAnnotationMember(input: $input) {
        __typename
        id
        successful
      }
    }
    """

  public let operationName: String = "DeleteAnnotationMember"

  public let operationIdentifier: String? = "3ddf59226988afd57ae21f6d4945dc048b36b304ab04a756800b3932f54f1250"

  public var input: DeleteAnnotationMemberInput

  public init(input: DeleteAnnotationMemberInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deleteAnnotationMember", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(DeleteAnnotationMember.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteAnnotationMember: DeleteAnnotationMember) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteAnnotationMember": deleteAnnotationMember.resultMap])
    }

    public var deleteAnnotationMember: DeleteAnnotationMember {
      get {
        return DeleteAnnotationMember(unsafeResultMap: resultMap["deleteAnnotationMember"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "deleteAnnotationMember")
      }
    }

    public struct DeleteAnnotationMember: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DeleteResult"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("successful", type: .nonNull(.scalar(Bool.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, successful: Bool) {
        self.init(unsafeResultMap: ["__typename": "DeleteResult", "id": id, "successful": successful])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var successful: Bool {
        get {
          return resultMap["successful"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "successful")
        }
      }
    }
  }
}

public final class DeleteConnectedDocUserMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DeleteConnectedDocUser($input: DeleteConnectedDocUserInput!) {
      deleteConnectedDocUser(input: $input) {
        __typename
        successful
      }
    }
    """

  public let operationName: String = "DeleteConnectedDocUser"

  public let operationIdentifier: String? = "ed25a7fa162582ecceab3c626023a1cc1748c7d8a89f4606ba450b79ae84647e"

  public var input: DeleteConnectedDocUserInput

  public init(input: DeleteConnectedDocUserInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deleteConnectedDocUser", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(DeleteConnectedDocUser.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteConnectedDocUser: DeleteConnectedDocUser) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteConnectedDocUser": deleteConnectedDocUser.resultMap])
    }

    public var deleteConnectedDocUser: DeleteConnectedDocUser {
      get {
        return DeleteConnectedDocUser(unsafeResultMap: resultMap["deleteConnectedDocUser"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "deleteConnectedDocUser")
      }
    }

    public struct DeleteConnectedDocUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DeleteResult"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("successful", type: .nonNull(.scalar(Bool.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(successful: Bool) {
        self.init(unsafeResultMap: ["__typename": "DeleteResult", "successful": successful])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var successful: Bool {
        get {
          return resultMap["successful"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "successful")
        }
      }
    }
  }
}

public final class DeleteMentionMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DeleteMention($userId: ID!, $annotationId: ID!) {
      deleteMention(userId: $userId, annotationId: $annotationId) {
        __typename
        successful
        message
      }
    }
    """

  public let operationName: String = "DeleteMention"

  public let operationIdentifier: String? = "7879656c24dec9934db0cf2fa5194209e595938a5e4885de1931ffd7bce78c56"

  public var userId: GraphQLID
  public var annotationId: GraphQLID

  public init(userId: GraphQLID, annotationId: GraphQLID) {
    self.userId = userId
    self.annotationId = annotationId
  }

  public var variables: GraphQLMap? {
    return ["userId": userId, "annotationId": annotationId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deleteMention", arguments: ["userId": GraphQLVariable("userId"), "annotationId": GraphQLVariable("annotationId")], type: .nonNull(.object(DeleteMention.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteMention: DeleteMention) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteMention": deleteMention.resultMap])
    }

    public var deleteMention: DeleteMention {
      get {
        return DeleteMention(unsafeResultMap: resultMap["deleteMention"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "deleteMention")
      }
    }

    public struct DeleteMention: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DeleteResult"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("successful", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("message", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(successful: Bool, message: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "DeleteResult", "successful": successful, "message": message])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var successful: Bool {
        get {
          return resultMap["successful"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "successful")
        }
      }

      public var message: String? {
        get {
          return resultMap["message"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }
    }
  }
}

public final class DeleteSnapshotMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DeleteSnapshot($id: ID!) {
      deleteSnapshot(id: $id) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "DeleteSnapshot"

  public let operationIdentifier: String? = "4dd578c70746a9e7c89c821a58010d50cd405d22f1ff19286d21b0a0ceca0100"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deleteSnapshot", arguments: ["id": GraphQLVariable("id")], type: .nonNull(.object(DeleteSnapshot.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteSnapshot: DeleteSnapshot) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteSnapshot": deleteSnapshot.resultMap])
    }

    public var deleteSnapshot: DeleteSnapshot {
      get {
        return DeleteSnapshot(unsafeResultMap: resultMap["deleteSnapshot"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "deleteSnapshot")
      }
    }

    public struct DeleteSnapshot: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DeleteResult"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil) {
        self.init(unsafeResultMap: ["__typename": "DeleteResult", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class EditAnnotationMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation EditAnnotation($id: ID!, $input: EditAnnotationInput!) {
      editAnnotation(id: $id, input: $input) {
        __typename
        id
        xfdf
      }
    }
    """

  public let operationName: String = "EditAnnotation"

  public let operationIdentifier: String? = "a76071ae4c3573f81bf1bd8dcd46f6bf526cb44f768785806e25ecacc118123b"

  public var id: GraphQLID
  public var input: EditAnnotationInput

  public init(id: GraphQLID, input: EditAnnotationInput) {
    self.id = id
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["id": id, "input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("editAnnotation", arguments: ["id": GraphQLVariable("id"), "input": GraphQLVariable("input")], type: .nonNull(.object(EditAnnotation.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(editAnnotation: EditAnnotation) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "editAnnotation": editAnnotation.resultMap])
    }

    public var editAnnotation: EditAnnotation {
      get {
        return EditAnnotation(unsafeResultMap: resultMap["editAnnotation"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "editAnnotation")
      }
    }

    public struct EditAnnotation: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Annotation"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("xfdf", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, xfdf: String) {
        self.init(unsafeResultMap: ["__typename": "Annotation", "id": id, "xfdf": xfdf])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var xfdf: String {
        get {
          return resultMap["xfdf"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "xfdf")
        }
      }
    }
  }
}

public final class EditConnectedDocUserMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation EditConnectedDocUser($input: EditConnectedDocUserInput!) {
      editConnectedDocUser(input: $input) {
        __typename
        userId
        currentPage
      }
    }
    """

  public let operationName: String = "EditConnectedDocUser"

  public let operationIdentifier: String? = "3ba3440c1c4ff195f6c4b5755c19ad6c41b56b908262e47316b8e9bcba67529c"

  public var input: EditConnectedDocUserInput

  public init(input: EditConnectedDocUserInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("editConnectedDocUser", arguments: ["input": GraphQLVariable("input")], type: .list(.object(EditConnectedDocUser.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(editConnectedDocUser: [EditConnectedDocUser?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "editConnectedDocUser": editConnectedDocUser.flatMap { (value: [EditConnectedDocUser?]) -> [ResultMap?] in value.map { (value: EditConnectedDocUser?) -> ResultMap? in value.flatMap { (value: EditConnectedDocUser) -> ResultMap in value.resultMap } } }])
    }

    public var editConnectedDocUser: [EditConnectedDocUser?]? {
      get {
        return (resultMap["editConnectedDocUser"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [EditConnectedDocUser?] in value.map { (value: ResultMap?) -> EditConnectedDocUser? in value.flatMap { (value: ResultMap) -> EditConnectedDocUser in EditConnectedDocUser(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [EditConnectedDocUser?]) -> [ResultMap?] in value.map { (value: EditConnectedDocUser?) -> ResultMap? in value.flatMap { (value: EditConnectedDocUser) -> ResultMap in value.resultMap } } }, forKey: "editConnectedDocUser")
      }
    }

    public struct EditConnectedDocUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ConnectedDocUser"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("currentPage", type: .scalar(Int.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(userId: GraphQLID, currentPage: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "ConnectedDocUser", "userId": userId, "currentPage": currentPage])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var userId: GraphQLID {
        get {
          return resultMap["userId"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var currentPage: Int? {
        get {
          return resultMap["currentPage"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "currentPage")
        }
      }
    }
  }
}

public final class EditDocumentMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation EditDocument($id: ID!, $input: EditDocumentInput!) {
      editDocument(id: $id, input: $input) {
        __typename
        id
        name
        isPublic
      }
    }
    """

  public let operationName: String = "EditDocument"

  public let operationIdentifier: String? = "22e5226ffa4aabc322a53c9018d14da46349d6d9f9a680210b9b29ccab8fe0a9"

  public var id: GraphQLID
  public var input: EditDocumentInput

  public init(id: GraphQLID, input: EditDocumentInput) {
    self.id = id
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["id": id, "input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("editDocument", arguments: ["id": GraphQLVariable("id"), "input": GraphQLVariable("input")], type: .nonNull(.object(EditDocument.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(editDocument: EditDocument) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "editDocument": editDocument.resultMap])
    }

    public var editDocument: EditDocument {
      get {
        return EditDocument(unsafeResultMap: resultMap["editDocument"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "editDocument")
      }
    }

    public struct EditDocument: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Document"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("isPublic", type: .scalar(Bool.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String? = nil, isPublic: Bool? = nil) {
        self.init(unsafeResultMap: ["__typename": "Document", "id": id, "name": name, "isPublic": isPublic])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var isPublic: Bool? {
        get {
          return resultMap["isPublic"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isPublic")
        }
      }
    }
  }
}

public final class EditSnapshotMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation EditSnapshot($id: ID!, $input: EditSnapshotInput!) {
      editSnapshot(id: $id, input: $input) {
        __typename
        id
      }
    }
    """

  public let operationName: String = "EditSnapshot"

  public let operationIdentifier: String? = "cad023f6e513c2e33e0fe7d3b315a0ddd8db82837faa5f19bfd280cde4ca5e94"

  public var id: GraphQLID
  public var input: EditSnapshotInput

  public init(id: GraphQLID, input: EditSnapshotInput) {
    self.id = id
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["id": id, "input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("editSnapshot", arguments: ["id": GraphQLVariable("id"), "input": GraphQLVariable("input")], type: .nonNull(.object(EditSnapshot.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(editSnapshot: EditSnapshot) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "editSnapshot": editSnapshot.resultMap])
    }

    public var editSnapshot: EditSnapshot {
      get {
        return EditSnapshot(unsafeResultMap: resultMap["editSnapshot"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "editSnapshot")
      }
    }

    public struct EditSnapshot: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Snapshot"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID) {
        self.init(unsafeResultMap: ["__typename": "Snapshot", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class EncodeContextMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation EncodeContext($context: String!, $action: EncodeContextActions!) {
      encodeContext(context: $context, action: $action) {
        __typename
        token
      }
    }
    """

  public let operationName: String = "EncodeContext"

  public let operationIdentifier: String? = "af9b7194dee220a83d01f425f2abfcfce59ea68ec6433be22cc5d5d6be930ce0"

  public var context: String
  public var action: EncodeContextActions

  public init(context: String, action: EncodeContextActions) {
    self.context = context
    self.action = action
  }

  public var variables: GraphQLMap? {
    return ["context": context, "action": action]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("encodeContext", arguments: ["context": GraphQLVariable("context"), "action": GraphQLVariable("action")], type: .nonNull(.object(EncodeContext.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(encodeContext: EncodeContext) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "encodeContext": encodeContext.resultMap])
    }

    public var encodeContext: EncodeContext {
      get {
        return EncodeContext(unsafeResultMap: resultMap["encodeContext"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "encodeContext")
      }
    }

    public struct EncodeContext: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ContextResult"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("token", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(token: String) {
        self.init(unsafeResultMap: ["__typename": "ContextResult", "token": token])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var token: String {
        get {
          return resultMap["token"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }
    }
  }
}

public final class ExitScrollSyncSessionMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation ExitScrollSyncSession($sessionId: String!) {
      exitScrollSyncSession(sessionId: $sessionId)
    }
    """

  public let operationName: String = "ExitScrollSyncSession"

  public let operationIdentifier: String? = "aaf11927d5f94c6000114294a0e960a3609f47e9780d49d1989cd5e5d3259610"

  public var sessionId: String

  public init(sessionId: String) {
    self.sessionId = sessionId
  }

  public var variables: GraphQLMap? {
    return ["sessionId": sessionId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("exitScrollSyncSession", arguments: ["sessionId": GraphQLVariable("sessionId")], type: .nonNull(.scalar(Bool.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(exitScrollSyncSession: Bool) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "exitScrollSyncSession": exitScrollSyncSession])
    }

    public var exitScrollSyncSession: Bool {
      get {
        return resultMap["exitScrollSyncSession"]! as! Bool
      }
      set {
        resultMap.updateValue(newValue, forKey: "exitScrollSyncSession")
      }
    }
  }
}

public final class InviteUsersToDocumentMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation InviteUsersToDocument($id: ID!, $usersInvited: [InvitedUserInput!]) {
      inviteUsersToDocument(id: $id, usersInvited: $usersInvited) {
        __typename
        id
        name
        isPublic
        author {
          __typename
          id
          userName
          email
          type
        }
        unreadCount
        members {
          __typename
          createdAt
          user {
            __typename
            id
            email
            userName
          }
        }
      }
    }
    """

  public let operationName: String = "InviteUsersToDocument"

  public let operationIdentifier: String? = "b481faec36990bef2e439a97f4540d9a772cbcd2045f543c145212d00bc77881"

  public var id: GraphQLID
  public var usersInvited: [InvitedUserInput]?

  public init(id: GraphQLID, usersInvited: [InvitedUserInput]?) {
    self.id = id
    self.usersInvited = usersInvited
  }

  public var variables: GraphQLMap? {
    return ["id": id, "usersInvited": usersInvited]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("inviteUsersToDocument", arguments: ["id": GraphQLVariable("id"), "usersInvited": GraphQLVariable("usersInvited")], type: .nonNull(.object(InviteUsersToDocument.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(inviteUsersToDocument: InviteUsersToDocument) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "inviteUsersToDocument": inviteUsersToDocument.resultMap])
    }

    public var inviteUsersToDocument: InviteUsersToDocument {
      get {
        return InviteUsersToDocument(unsafeResultMap: resultMap["inviteUsersToDocument"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "inviteUsersToDocument")
      }
    }

    public struct InviteUsersToDocument: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Document"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("isPublic", type: .scalar(Bool.self)),
          GraphQLField("author", type: .nonNull(.object(Author.selections))),
          GraphQLField("unreadCount", type: .nonNull(.scalar(Int.self))),
          GraphQLField("members", type: .nonNull(.list(.nonNull(.object(Member.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String? = nil, isPublic: Bool? = nil, author: Author, unreadCount: Int, members: [Member]) {
        self.init(unsafeResultMap: ["__typename": "Document", "id": id, "name": name, "isPublic": isPublic, "author": author.resultMap, "unreadCount": unreadCount, "members": members.map { (value: Member) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var isPublic: Bool? {
        get {
          return resultMap["isPublic"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isPublic")
        }
      }

      public var author: Author {
        get {
          return Author(unsafeResultMap: resultMap["author"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "author")
        }
      }

      public var unreadCount: Int {
        get {
          return resultMap["unreadCount"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "unreadCount")
        }
      }

      public var members: [Member] {
        get {
          return (resultMap["members"] as! [ResultMap]).map { (value: ResultMap) -> Member in Member(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Member) -> ResultMap in value.resultMap }, forKey: "members")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userName", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("type", type: .nonNull(.scalar(UserTypes.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, userName: String? = nil, email: String? = nil, type: UserTypes) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id, "userName": userName, "email": email, "type": type])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var userName: String? {
          get {
            return resultMap["userName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userName")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var type: UserTypes {
          get {
            return resultMap["type"]! as! UserTypes
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }
      }

      public struct Member: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["DocumentMember"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("user", type: .nonNull(.object(User.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(createdAt: String, user: User) {
          self.init(unsafeResultMap: ["__typename": "DocumentMember", "createdAt": createdAt, "user": user.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAt: String {
          get {
            return resultMap["createdAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var user: User {
          get {
            return User(unsafeResultMap: resultMap["user"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "user")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["User"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("email", type: .scalar(String.self)),
              GraphQLField("userName", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, email: String? = nil, userName: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "User", "id": id, "email": email, "userName": userName])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var email: String? {
            get {
              return resultMap["email"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "email")
            }
          }

          public var userName: String? {
            get {
              return resultMap["userName"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "userName")
            }
          }
        }
      }
    }
  }
}

public final class JoinScrollSyncSessionMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation JoinScrollSyncSession($sessionId: String!) {
      joinScrollSyncSession(sessionId: $sessionId) {
        __typename
        leaderId
        documentId
        position {
          __typename
          scrollTop
          scrollHeight
        }
        sessionId
      }
    }
    """

  public let operationName: String = "JoinScrollSyncSession"

  public let operationIdentifier: String? = "d3bcb0255b0cdfa4b21bdf17fd09a62f658a30ac25058516a7646fc4f35ec998"

  public var sessionId: String

  public init(sessionId: String) {
    self.sessionId = sessionId
  }

  public var variables: GraphQLMap? {
    return ["sessionId": sessionId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("joinScrollSyncSession", arguments: ["sessionId": GraphQLVariable("sessionId")], type: .nonNull(.object(JoinScrollSyncSession.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(joinScrollSyncSession: JoinScrollSyncSession) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "joinScrollSyncSession": joinScrollSyncSession.resultMap])
    }

    public var joinScrollSyncSession: JoinScrollSyncSession {
      get {
        return JoinScrollSyncSession(unsafeResultMap: resultMap["joinScrollSyncSession"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "joinScrollSyncSession")
      }
    }

    public struct JoinScrollSyncSession: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ScrollSyncSession"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("leaderId", type: .nonNull(.scalar(String.self))),
          GraphQLField("documentId", type: .nonNull(.scalar(String.self))),
          GraphQLField("position", type: .nonNull(.object(Position.selections))),
          GraphQLField("sessionId", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(leaderId: String, documentId: String, position: Position, sessionId: String) {
        self.init(unsafeResultMap: ["__typename": "ScrollSyncSession", "leaderId": leaderId, "documentId": documentId, "position": position.resultMap, "sessionId": sessionId])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var leaderId: String {
        get {
          return resultMap["leaderId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "leaderId")
        }
      }

      public var documentId: String {
        get {
          return resultMap["documentId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "documentId")
        }
      }

      public var position: Position {
        get {
          return Position(unsafeResultMap: resultMap["position"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "position")
        }
      }

      public var sessionId: String {
        get {
          return resultMap["sessionId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "sessionId")
        }
      }

      public struct Position: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ScrollSyncPosition"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("scrollTop", type: .scalar(Int.self)),
            GraphQLField("scrollHeight", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(scrollTop: Int? = nil, scrollHeight: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "ScrollSyncPosition", "scrollTop": scrollTop, "scrollHeight": scrollHeight])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var scrollTop: Int? {
          get {
            return resultMap["scrollTop"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "scrollTop")
          }
        }

        public var scrollHeight: Int? {
          get {
            return resultMap["scrollHeight"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "scrollHeight")
          }
        }
      }
    }
  }
}

public final class LeaveDocumentMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation LeaveDocument($input: DeleteDocumentMemberInput!) {
      deleteDocumentMember(input: $input) {
        __typename
        successful
      }
    }
    """

  public let operationName: String = "LeaveDocument"

  public let operationIdentifier: String? = "5b7e394f896a46efc636486e7c1508ac22ca6d5f4d642c73f62cda5cf0c00938"

  public var input: DeleteDocumentMemberInput

  public init(input: DeleteDocumentMemberInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deleteDocumentMember", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(DeleteDocumentMember.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteDocumentMember: DeleteDocumentMember) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteDocumentMember": deleteDocumentMember.resultMap])
    }

    public var deleteDocumentMember: DeleteDocumentMember {
      get {
        return DeleteDocumentMember(unsafeResultMap: resultMap["deleteDocumentMember"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "deleteDocumentMember")
      }
    }

    public struct DeleteDocumentMember: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DeleteResult"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("successful", type: .nonNull(.scalar(Bool.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(successful: Bool) {
        self.init(unsafeResultMap: ["__typename": "DeleteResult", "successful": successful])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var successful: Bool {
        get {
          return resultMap["successful"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "successful")
        }
      }
    }
  }
}

public final class LoginMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation Login($email: String, $password: String, $token: String) {
      login(email: $email, password: $password, token: $token) {
        __typename
        user {
          __typename
          id
          email
          type
          userName
        }
        token
      }
    }
    """

  public let operationName: String = "Login"

  public let operationIdentifier: String? = "f56fd5eb8b08f78b95b2ee4d030ce0c2d17ac23ce5785f2c4349a076d550f4cc"

  public var email: String?
  public var password: String?
  public var token: String?

  public init(email: String? = nil, password: String? = nil, token: String? = nil) {
    self.email = email
    self.password = password
    self.token = token
  }

  public var variables: GraphQLMap? {
    return ["email": email, "password": password, "token": token]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("login", arguments: ["email": GraphQLVariable("email"), "password": GraphQLVariable("password"), "token": GraphQLVariable("token")], type: .nonNull(.object(Login.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(login: Login) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "login": login.resultMap])
    }

    public var login: Login {
      get {
        return Login(unsafeResultMap: resultMap["login"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "login")
      }
    }

    public struct Login: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["AuthPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("user", type: .object(User.selections)),
          GraphQLField("token", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(user: User? = nil, token: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "AuthPayload", "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }, "token": token])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var user: User? {
        get {
          return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "user")
        }
      }

      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("type", type: .nonNull(.scalar(UserTypes.self))),
            GraphQLField("userName", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, email: String? = nil, type: UserTypes, userName: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id, "email": email, "type": type, "userName": userName])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var type: UserTypes {
          get {
            return resultMap["type"]! as! UserTypes
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }

        public var userName: String? {
          get {
            return resultMap["userName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userName")
          }
        }
      }
    }
  }
}

public final class LoginAnonymousMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation LoginAnonymous($userName: String) {
      loginAnonymous(userName: $userName) {
        __typename
        user {
          __typename
          id
          userName
          type
          email
        }
        token
      }
    }
    """

  public let operationName: String = "LoginAnonymous"

  public let operationIdentifier: String? = "919fb4a1bbc2434e8963abc98b9d31de5078a0d6d81a8fae55cc7abe19458fbc"

  public var userName: String?

  public init(userName: String? = nil) {
    self.userName = userName
  }

  public var variables: GraphQLMap? {
    return ["userName": userName]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("loginAnonymous", arguments: ["userName": GraphQLVariable("userName")], type: .nonNull(.object(LoginAnonymou.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(loginAnonymous: LoginAnonymou) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "loginAnonymous": loginAnonymous.resultMap])
    }

    public var loginAnonymous: LoginAnonymou {
      get {
        return LoginAnonymou(unsafeResultMap: resultMap["loginAnonymous"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "loginAnonymous")
      }
    }

    public struct LoginAnonymou: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["AuthPayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("user", type: .object(User.selections)),
          GraphQLField("token", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(user: User? = nil, token: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "AuthPayload", "user": user.flatMap { (value: User) -> ResultMap in value.resultMap }, "token": token])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var user: User? {
        get {
          return (resultMap["user"] as? ResultMap).flatMap { User(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "user")
        }
      }

      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userName", type: .scalar(String.self)),
            GraphQLField("type", type: .nonNull(.scalar(UserTypes.self))),
            GraphQLField("email", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, userName: String? = nil, type: UserTypes, email: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id, "userName": userName, "type": type, "email": email])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var userName: String? {
          get {
            return resultMap["userName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userName")
          }
        }

        public var type: UserTypes {
          get {
            return resultMap["type"]! as! UserTypes
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }
      }
    }
  }
}

public final class MarkAllAsReadMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation MarkAllAsRead($documentId: ID!) {
      markAllAsRead(documentId: $documentId) {
        __typename
        id
        annotations {
          __typename
          id
          annotationId
          membership {
            __typename
            id
            lastRead
          }
        }
      }
    }
    """

  public let operationName: String = "MarkAllAsRead"

  public let operationIdentifier: String? = "f6ba33de63725c4f190a8a76eb41a50857a37fa3433bbadcf8c5a9bca1c663c4"

  public var documentId: GraphQLID

  public init(documentId: GraphQLID) {
    self.documentId = documentId
  }

  public var variables: GraphQLMap? {
    return ["documentId": documentId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("markAllAsRead", arguments: ["documentId": GraphQLVariable("documentId")], type: .nonNull(.object(MarkAllAsRead.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(markAllAsRead: MarkAllAsRead) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "markAllAsRead": markAllAsRead.resultMap])
    }

    public var markAllAsRead: MarkAllAsRead {
      get {
        return MarkAllAsRead(unsafeResultMap: resultMap["markAllAsRead"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "markAllAsRead")
      }
    }

    public struct MarkAllAsRead: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Document"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("annotations", type: .nonNull(.list(.nonNull(.object(Annotation.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, annotations: [Annotation]) {
        self.init(unsafeResultMap: ["__typename": "Document", "id": id, "annotations": annotations.map { (value: Annotation) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var annotations: [Annotation] {
        get {
          return (resultMap["annotations"] as! [ResultMap]).map { (value: ResultMap) -> Annotation in Annotation(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Annotation) -> ResultMap in value.resultMap }, forKey: "annotations")
        }
      }

      public struct Annotation: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Annotation"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("annotationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("membership", type: .object(Membership.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, annotationId: GraphQLID, membership: Membership? = nil) {
          self.init(unsafeResultMap: ["__typename": "Annotation", "id": id, "annotationId": annotationId, "membership": membership.flatMap { (value: Membership) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var annotationId: GraphQLID {
          get {
            return resultMap["annotationId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "annotationId")
          }
        }

        public var membership: Membership? {
          get {
            return (resultMap["membership"] as? ResultMap).flatMap { Membership(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "membership")
          }
        }

        public struct Membership: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["AnnotationMember"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("lastRead", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, lastRead: String) {
            self.init(unsafeResultMap: ["__typename": "AnnotationMember", "id": id, "lastRead": lastRead])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var lastRead: String {
            get {
              return resultMap["lastRead"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "lastRead")
            }
          }
        }
      }
    }
  }
}

public final class RestoreSnapshotMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation RestoreSnapshot($restoreSnapshotInput: RestoreSnapshotInput!) {
      restoreSnapshot(input: $restoreSnapshotInput) {
        __typename
        id
        successful
        message
        annotations {
          __typename
          id
          annotationId
          documentId
          xfdf
        }
      }
    }
    """

  public let operationName: String = "RestoreSnapshot"

  public let operationIdentifier: String? = "e68ad5a32091f1e462df14010e101654f584bd6d16de86f91695144d9c3b5ac3"

  public var restoreSnapshotInput: RestoreSnapshotInput

  public init(restoreSnapshotInput: RestoreSnapshotInput) {
    self.restoreSnapshotInput = restoreSnapshotInput
  }

  public var variables: GraphQLMap? {
    return ["restoreSnapshotInput": restoreSnapshotInput]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("restoreSnapshot", arguments: ["input": GraphQLVariable("restoreSnapshotInput")], type: .nonNull(.object(RestoreSnapshot.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(restoreSnapshot: RestoreSnapshot) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "restoreSnapshot": restoreSnapshot.resultMap])
    }

    public var restoreSnapshot: RestoreSnapshot {
      get {
        return RestoreSnapshot(unsafeResultMap: resultMap["restoreSnapshot"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "restoreSnapshot")
      }
    }

    public struct RestoreSnapshot: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["RestoreSnapshotResult"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("successful", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("message", type: .scalar(String.self)),
          GraphQLField("annotations", type: .list(.object(Annotation.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, successful: Bool, message: String? = nil, annotations: [Annotation?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "RestoreSnapshotResult", "id": id, "successful": successful, "message": message, "annotations": annotations.flatMap { (value: [Annotation?]) -> [ResultMap?] in value.map { (value: Annotation?) -> ResultMap? in value.flatMap { (value: Annotation) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var successful: Bool {
        get {
          return resultMap["successful"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "successful")
        }
      }

      public var message: String? {
        get {
          return resultMap["message"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var annotations: [Annotation?]? {
        get {
          return (resultMap["annotations"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Annotation?] in value.map { (value: ResultMap?) -> Annotation? in value.flatMap { (value: ResultMap) -> Annotation in Annotation(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Annotation?]) -> [ResultMap?] in value.map { (value: Annotation?) -> ResultMap? in value.flatMap { (value: Annotation) -> ResultMap in value.resultMap } } }, forKey: "annotations")
        }
      }

      public struct Annotation: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Annotation"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("annotationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("documentId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("xfdf", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, annotationId: GraphQLID, documentId: GraphQLID, xfdf: String) {
          self.init(unsafeResultMap: ["__typename": "Annotation", "id": id, "annotationId": annotationId, "documentId": documentId, "xfdf": xfdf])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var annotationId: GraphQLID {
          get {
            return resultMap["annotationId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "annotationId")
          }
        }

        public var documentId: GraphQLID {
          get {
            return resultMap["documentId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "documentId")
          }
        }

        public var xfdf: String {
          get {
            return resultMap["xfdf"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "xfdf")
          }
        }
      }
    }
  }
}

public final class UpdateAnnotationMemberLastReadMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateAnnotationMemberLastRead($annotationId: ID!, $userId: ID!) {
      updateAnnotationMemberLastRead(annotationId: $annotationId, userId: $userId) {
        __typename
        ... on AnnotationMember {
          __typename
          id
          annotationId
          lastRead
        }
        ... on AnnotationNotFound {
          __typename
          message
          annotationId
        }
        ... on IgnoreMembership {
          __typename
          message
          annotationId
        }
      }
    }
    """

  public let operationName: String = "UpdateAnnotationMemberLastRead"

  public let operationIdentifier: String? = "04c0a56d799a0430e71a71a2350efab8b8412d050ab8c51ab318675d09796d04"

  public var annotationId: GraphQLID
  public var userId: GraphQLID

  public init(annotationId: GraphQLID, userId: GraphQLID) {
    self.annotationId = annotationId
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["annotationId": annotationId, "userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateAnnotationMemberLastRead", arguments: ["annotationId": GraphQLVariable("annotationId"), "userId": GraphQLVariable("userId")], type: .nonNull(.object(UpdateAnnotationMemberLastRead.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateAnnotationMemberLastRead: UpdateAnnotationMemberLastRead) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateAnnotationMemberLastRead": updateAnnotationMemberLastRead.resultMap])
    }

    public var updateAnnotationMemberLastRead: UpdateAnnotationMemberLastRead {
      get {
        return UpdateAnnotationMemberLastRead(unsafeResultMap: resultMap["updateAnnotationMemberLastRead"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updateAnnotationMemberLastRead")
      }
    }

    public struct UpdateAnnotationMemberLastRead: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["AnnotationMember", "AnnotationNotFound", "IgnoreMembership"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLTypeCase(
            variants: ["AnnotationMember": AsAnnotationMember.selections, "AnnotationNotFound": AsAnnotationNotFound.selections, "IgnoreMembership": AsIgnoreMembership.selections],
            default: [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            ]
          )
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public static func makeAnnotationMember(id: GraphQLID, annotationId: GraphQLID, lastRead: String) -> UpdateAnnotationMemberLastRead {
        return UpdateAnnotationMemberLastRead(unsafeResultMap: ["__typename": "AnnotationMember", "id": id, "annotationId": annotationId, "lastRead": lastRead])
      }

      public static func makeAnnotationNotFound(message: String? = nil, annotationId: GraphQLID) -> UpdateAnnotationMemberLastRead {
        return UpdateAnnotationMemberLastRead(unsafeResultMap: ["__typename": "AnnotationNotFound", "message": message, "annotationId": annotationId])
      }

      public static func makeIgnoreMembership(message: String? = nil, annotationId: GraphQLID) -> UpdateAnnotationMemberLastRead {
        return UpdateAnnotationMemberLastRead(unsafeResultMap: ["__typename": "IgnoreMembership", "message": message, "annotationId": annotationId])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var asAnnotationMember: AsAnnotationMember? {
        get {
          if !AsAnnotationMember.possibleTypes.contains(__typename) { return nil }
          return AsAnnotationMember(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap = newValue.resultMap
        }
      }

      public struct AsAnnotationMember: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["AnnotationMember"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("annotationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("lastRead", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, annotationId: GraphQLID, lastRead: String) {
          self.init(unsafeResultMap: ["__typename": "AnnotationMember", "id": id, "annotationId": annotationId, "lastRead": lastRead])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var annotationId: GraphQLID {
          get {
            return resultMap["annotationId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "annotationId")
          }
        }

        public var lastRead: String {
          get {
            return resultMap["lastRead"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "lastRead")
          }
        }
      }

      public var asAnnotationNotFound: AsAnnotationNotFound? {
        get {
          if !AsAnnotationNotFound.possibleTypes.contains(__typename) { return nil }
          return AsAnnotationNotFound(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap = newValue.resultMap
        }
      }

      public struct AsAnnotationNotFound: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["AnnotationNotFound"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("message", type: .scalar(String.self)),
            GraphQLField("annotationId", type: .nonNull(.scalar(GraphQLID.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(message: String? = nil, annotationId: GraphQLID) {
          self.init(unsafeResultMap: ["__typename": "AnnotationNotFound", "message": message, "annotationId": annotationId])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var message: String? {
          get {
            return resultMap["message"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }

        public var annotationId: GraphQLID {
          get {
            return resultMap["annotationId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "annotationId")
          }
        }
      }

      public var asIgnoreMembership: AsIgnoreMembership? {
        get {
          if !AsIgnoreMembership.possibleTypes.contains(__typename) { return nil }
          return AsIgnoreMembership(unsafeResultMap: resultMap)
        }
        set {
          guard let newValue = newValue else { return }
          resultMap = newValue.resultMap
        }
      }

      public struct AsIgnoreMembership: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["IgnoreMembership"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("message", type: .scalar(String.self)),
            GraphQLField("annotationId", type: .nonNull(.scalar(GraphQLID.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(message: String? = nil, annotationId: GraphQLID) {
          self.init(unsafeResultMap: ["__typename": "IgnoreMembership", "message": message, "annotationId": annotationId])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var message: String? {
          get {
            return resultMap["message"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }

        public var annotationId: GraphQLID {
          get {
            return resultMap["annotationId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "annotationId")
          }
        }
      }
    }
  }
}

public final class UpdateScrollSyncSessionMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateScrollSyncSession($sessionId: String!, $position: ScrollSyncPositionInput!) {
      updateScrollSyncSession(sessionId: $sessionId, position: $position) {
        __typename
        leaderId
        documentId
        position {
          __typename
          scrollTop
          scrollHeight
        }
        sessionId
      }
    }
    """

  public let operationName: String = "UpdateScrollSyncSession"

  public let operationIdentifier: String? = "e4754abe2dc35667293e56528cc7fdf5cbc062f8748399bec0d99d4727b2a8e7"

  public var sessionId: String
  public var position: ScrollSyncPositionInput

  public init(sessionId: String, position: ScrollSyncPositionInput) {
    self.sessionId = sessionId
    self.position = position
  }

  public var variables: GraphQLMap? {
    return ["sessionId": sessionId, "position": position]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateScrollSyncSession", arguments: ["sessionId": GraphQLVariable("sessionId"), "position": GraphQLVariable("position")], type: .nonNull(.object(UpdateScrollSyncSession.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateScrollSyncSession: UpdateScrollSyncSession) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateScrollSyncSession": updateScrollSyncSession.resultMap])
    }

    public var updateScrollSyncSession: UpdateScrollSyncSession {
      get {
        return UpdateScrollSyncSession(unsafeResultMap: resultMap["updateScrollSyncSession"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updateScrollSyncSession")
      }
    }

    public struct UpdateScrollSyncSession: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ScrollSyncSession"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("leaderId", type: .nonNull(.scalar(String.self))),
          GraphQLField("documentId", type: .nonNull(.scalar(String.self))),
          GraphQLField("position", type: .nonNull(.object(Position.selections))),
          GraphQLField("sessionId", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(leaderId: String, documentId: String, position: Position, sessionId: String) {
        self.init(unsafeResultMap: ["__typename": "ScrollSyncSession", "leaderId": leaderId, "documentId": documentId, "position": position.resultMap, "sessionId": sessionId])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var leaderId: String {
        get {
          return resultMap["leaderId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "leaderId")
        }
      }

      public var documentId: String {
        get {
          return resultMap["documentId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "documentId")
        }
      }

      public var position: Position {
        get {
          return Position(unsafeResultMap: resultMap["position"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "position")
        }
      }

      public var sessionId: String {
        get {
          return resultMap["sessionId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "sessionId")
        }
      }

      public struct Position: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ScrollSyncPosition"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("scrollTop", type: .scalar(Int.self)),
            GraphQLField("scrollHeight", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(scrollTop: Int? = nil, scrollHeight: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "ScrollSyncPosition", "scrollTop": scrollTop, "scrollHeight": scrollHeight])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var scrollTop: Int? {
          get {
            return resultMap["scrollTop"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "scrollTop")
          }
        }

        public var scrollHeight: Int? {
          get {
            return resultMap["scrollHeight"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "scrollHeight")
          }
        }
      }
    }
  }
}

public final class GetAnnotationByIdQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetAnnotationById($id: ID!) {
      annotation(id: $id) {
        __typename
        id
        xfdf
        pageNumber
        annotationId
        createdAt
        updatedAt
        annotContents
        mentions {
          __typename
          id
          annotationId
          documentId
          mentionedUser {
            __typename
            id
            userName
            email
          }
        }
        author {
          __typename
          id
        }
        documentId
        membership {
          __typename
          id
          lastRead
        }
        inReplyTo
      }
    }
    """

  public let operationName: String = "GetAnnotationById"

  public let operationIdentifier: String? = "49272eee52ba116a61d094ee6ceae81ddded29b543423a2f3f7eff75d8cabb1d"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("annotation", arguments: ["id": GraphQLVariable("id")], type: .object(Annotation.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(annotation: Annotation? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "annotation": annotation.flatMap { (value: Annotation) -> ResultMap in value.resultMap }])
    }

    public var annotation: Annotation? {
      get {
        return (resultMap["annotation"] as? ResultMap).flatMap { Annotation(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "annotation")
      }
    }

    public struct Annotation: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Annotation"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("xfdf", type: .nonNull(.scalar(String.self))),
          GraphQLField("pageNumber", type: .nonNull(.scalar(Int.self))),
          GraphQLField("annotationId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("annotContents", type: .scalar(String.self)),
          GraphQLField("mentions", type: .nonNull(.list(.nonNull(.object(Mention.selections))))),
          GraphQLField("author", type: .object(Author.selections)),
          GraphQLField("documentId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("membership", type: .object(Membership.selections)),
          GraphQLField("inReplyTo", type: .scalar(GraphQLID.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, xfdf: String, pageNumber: Int, annotationId: GraphQLID, createdAt: String, updatedAt: String, annotContents: String? = nil, mentions: [Mention], author: Author? = nil, documentId: GraphQLID, membership: Membership? = nil, inReplyTo: GraphQLID? = nil) {
        self.init(unsafeResultMap: ["__typename": "Annotation", "id": id, "xfdf": xfdf, "pageNumber": pageNumber, "annotationId": annotationId, "createdAt": createdAt, "updatedAt": updatedAt, "annotContents": annotContents, "mentions": mentions.map { (value: Mention) -> ResultMap in value.resultMap }, "author": author.flatMap { (value: Author) -> ResultMap in value.resultMap }, "documentId": documentId, "membership": membership.flatMap { (value: Membership) -> ResultMap in value.resultMap }, "inReplyTo": inReplyTo])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var xfdf: String {
        get {
          return resultMap["xfdf"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "xfdf")
        }
      }

      public var pageNumber: Int {
        get {
          return resultMap["pageNumber"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "pageNumber")
        }
      }

      public var annotationId: GraphQLID {
        get {
          return resultMap["annotationId"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "annotationId")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["createdAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return resultMap["updatedAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var annotContents: String? {
        get {
          return resultMap["annotContents"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "annotContents")
        }
      }

      public var mentions: [Mention] {
        get {
          return (resultMap["mentions"] as! [ResultMap]).map { (value: ResultMap) -> Mention in Mention(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Mention) -> ResultMap in value.resultMap }, forKey: "mentions")
        }
      }

      public var author: Author? {
        get {
          return (resultMap["author"] as? ResultMap).flatMap { Author(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "author")
        }
      }

      public var documentId: GraphQLID {
        get {
          return resultMap["documentId"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "documentId")
        }
      }

      public var membership: Membership? {
        get {
          return (resultMap["membership"] as? ResultMap).flatMap { Membership(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "membership")
        }
      }

      public var inReplyTo: GraphQLID? {
        get {
          return resultMap["inReplyTo"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "inReplyTo")
        }
      }

      public struct Mention: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Mention"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("annotationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("documentId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("mentionedUser", type: .nonNull(.object(MentionedUser.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, annotationId: GraphQLID, documentId: GraphQLID, mentionedUser: MentionedUser) {
          self.init(unsafeResultMap: ["__typename": "Mention", "id": id, "annotationId": annotationId, "documentId": documentId, "mentionedUser": mentionedUser.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var annotationId: GraphQLID {
          get {
            return resultMap["annotationId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "annotationId")
          }
        }

        public var documentId: GraphQLID {
          get {
            return resultMap["documentId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "documentId")
          }
        }

        public var mentionedUser: MentionedUser {
          get {
            return MentionedUser(unsafeResultMap: resultMap["mentionedUser"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "mentionedUser")
          }
        }

        public struct MentionedUser: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["User"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("userName", type: .scalar(String.self)),
              GraphQLField("email", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, userName: String? = nil, email: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "User", "id": id, "userName": userName, "email": email])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var userName: String? {
            get {
              return resultMap["userName"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "userName")
            }
          }

          public var email: String? {
            get {
              return resultMap["email"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "email")
            }
          }
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }
      }

      public struct Membership: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["AnnotationMember"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("lastRead", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, lastRead: String) {
          self.init(unsafeResultMap: ["__typename": "AnnotationMember", "id": id, "lastRead": lastRead])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var lastRead: String {
          get {
            return resultMap["lastRead"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "lastRead")
          }
        }
      }
    }
  }
}

public final class GetConnectedDocUsersQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetConnectedDocUsers($documentId: ID!) {
      connectedDocUsers(documentId: $documentId) {
        __typename
        userId
        currentPage
      }
    }
    """

  public let operationName: String = "GetConnectedDocUsers"

  public let operationIdentifier: String? = "85ed24f54348aebb83a2f5f6ba76f1331af3c00b9a00bbff60cbe118bc3a969c"

  public var documentId: GraphQLID

  public init(documentId: GraphQLID) {
    self.documentId = documentId
  }

  public var variables: GraphQLMap? {
    return ["documentId": documentId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("connectedDocUsers", arguments: ["documentId": GraphQLVariable("documentId")], type: .nonNull(.list(.nonNull(.object(ConnectedDocUser.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(connectedDocUsers: [ConnectedDocUser]) {
      self.init(unsafeResultMap: ["__typename": "Query", "connectedDocUsers": connectedDocUsers.map { (value: ConnectedDocUser) -> ResultMap in value.resultMap }])
    }

    public var connectedDocUsers: [ConnectedDocUser] {
      get {
        return (resultMap["connectedDocUsers"] as! [ResultMap]).map { (value: ResultMap) -> ConnectedDocUser in ConnectedDocUser(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: ConnectedDocUser) -> ResultMap in value.resultMap }, forKey: "connectedDocUsers")
      }
    }

    public struct ConnectedDocUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ConnectedDocUser"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("currentPage", type: .scalar(Int.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(userId: GraphQLID, currentPage: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "ConnectedDocUser", "userId": userId, "currentPage": currentPage])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var userId: GraphQLID {
        get {
          return resultMap["userId"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "userId")
        }
      }

      public var currentPage: Int? {
        get {
          return resultMap["currentPage"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "currentPage")
        }
      }
    }
  }
}

public final class GetDocumentByIdQueryQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetDocumentByIdQuery($id: ID!) {
      document(id: $id) {
        __typename
        id
        name
        isPublic
        unreadCount
        createdAt
        updatedAt
        author {
          __typename
          id
          userName
          email
          type
        }
        annotations {
          __typename
          id
          xfdf
          annotationId
          documentId
          annotContents
          author {
            __typename
            id
          }
          createdAt
          updatedAt
          inReplyTo
          pageNumber
          membership {
            __typename
            id
            lastRead
          }
          mentions {
            __typename
            id
            annotationId
            documentId
            createdAt
            updatedAt
            mentionedUser {
              __typename
              id
              userName
              email
            }
          }
        }
        members {
          __typename
          id
          createdAt
          user {
            __typename
            id
            userName
            email
          }
        }
      }
    }
    """

  public let operationName: String = "GetDocumentByIdQuery"

  public let operationIdentifier: String? = "714671b39584cdcd1fe716fe06443a3bbea9e261b914a58108ad127b9cbe7a94"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("document", arguments: ["id": GraphQLVariable("id")], type: .object(Document.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(document: Document? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "document": document.flatMap { (value: Document) -> ResultMap in value.resultMap }])
    }

    public var document: Document? {
      get {
        return (resultMap["document"] as? ResultMap).flatMap { Document(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "document")
      }
    }

    public struct Document: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Document"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("isPublic", type: .scalar(Bool.self)),
          GraphQLField("unreadCount", type: .nonNull(.scalar(Int.self))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.object(Author.selections))),
          GraphQLField("annotations", type: .nonNull(.list(.nonNull(.object(Annotation.selections))))),
          GraphQLField("members", type: .nonNull(.list(.nonNull(.object(Member.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String? = nil, isPublic: Bool? = nil, unreadCount: Int, createdAt: String, updatedAt: String, author: Author, annotations: [Annotation], members: [Member]) {
        self.init(unsafeResultMap: ["__typename": "Document", "id": id, "name": name, "isPublic": isPublic, "unreadCount": unreadCount, "createdAt": createdAt, "updatedAt": updatedAt, "author": author.resultMap, "annotations": annotations.map { (value: Annotation) -> ResultMap in value.resultMap }, "members": members.map { (value: Member) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var isPublic: Bool? {
        get {
          return resultMap["isPublic"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isPublic")
        }
      }

      public var unreadCount: Int {
        get {
          return resultMap["unreadCount"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "unreadCount")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["createdAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return resultMap["updatedAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var author: Author {
        get {
          return Author(unsafeResultMap: resultMap["author"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "author")
        }
      }

      public var annotations: [Annotation] {
        get {
          return (resultMap["annotations"] as! [ResultMap]).map { (value: ResultMap) -> Annotation in Annotation(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Annotation) -> ResultMap in value.resultMap }, forKey: "annotations")
        }
      }

      public var members: [Member] {
        get {
          return (resultMap["members"] as! [ResultMap]).map { (value: ResultMap) -> Member in Member(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Member) -> ResultMap in value.resultMap }, forKey: "members")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userName", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("type", type: .nonNull(.scalar(UserTypes.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, userName: String? = nil, email: String? = nil, type: UserTypes) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id, "userName": userName, "email": email, "type": type])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var userName: String? {
          get {
            return resultMap["userName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userName")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var type: UserTypes {
          get {
            return resultMap["type"]! as! UserTypes
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }
      }

      public struct Annotation: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Annotation"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("xfdf", type: .nonNull(.scalar(String.self))),
            GraphQLField("annotationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("documentId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("annotContents", type: .scalar(String.self)),
            GraphQLField("author", type: .object(Author.selections)),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("inReplyTo", type: .scalar(GraphQLID.self)),
            GraphQLField("pageNumber", type: .nonNull(.scalar(Int.self))),
            GraphQLField("membership", type: .object(Membership.selections)),
            GraphQLField("mentions", type: .nonNull(.list(.nonNull(.object(Mention.selections))))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, xfdf: String, annotationId: GraphQLID, documentId: GraphQLID, annotContents: String? = nil, author: Author? = nil, createdAt: String, updatedAt: String, inReplyTo: GraphQLID? = nil, pageNumber: Int, membership: Membership? = nil, mentions: [Mention]) {
          self.init(unsafeResultMap: ["__typename": "Annotation", "id": id, "xfdf": xfdf, "annotationId": annotationId, "documentId": documentId, "annotContents": annotContents, "author": author.flatMap { (value: Author) -> ResultMap in value.resultMap }, "createdAt": createdAt, "updatedAt": updatedAt, "inReplyTo": inReplyTo, "pageNumber": pageNumber, "membership": membership.flatMap { (value: Membership) -> ResultMap in value.resultMap }, "mentions": mentions.map { (value: Mention) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var xfdf: String {
          get {
            return resultMap["xfdf"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "xfdf")
          }
        }

        public var annotationId: GraphQLID {
          get {
            return resultMap["annotationId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "annotationId")
          }
        }

        public var documentId: GraphQLID {
          get {
            return resultMap["documentId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "documentId")
          }
        }

        public var annotContents: String? {
          get {
            return resultMap["annotContents"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "annotContents")
          }
        }

        public var author: Author? {
          get {
            return (resultMap["author"] as? ResultMap).flatMap { Author(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "author")
          }
        }

        public var createdAt: String {
          get {
            return resultMap["createdAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return resultMap["updatedAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var inReplyTo: GraphQLID? {
          get {
            return resultMap["inReplyTo"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "inReplyTo")
          }
        }

        public var pageNumber: Int {
          get {
            return resultMap["pageNumber"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "pageNumber")
          }
        }

        public var membership: Membership? {
          get {
            return (resultMap["membership"] as? ResultMap).flatMap { Membership(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "membership")
          }
        }

        public var mentions: [Mention] {
          get {
            return (resultMap["mentions"] as! [ResultMap]).map { (value: ResultMap) -> Mention in Mention(unsafeResultMap: value) }
          }
          set {
            resultMap.updateValue(newValue.map { (value: Mention) -> ResultMap in value.resultMap }, forKey: "mentions")
          }
        }

        public struct Author: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["User"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID) {
            self.init(unsafeResultMap: ["__typename": "User", "id": id])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }
        }

        public struct Membership: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["AnnotationMember"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("lastRead", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, lastRead: String) {
            self.init(unsafeResultMap: ["__typename": "AnnotationMember", "id": id, "lastRead": lastRead])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var lastRead: String {
            get {
              return resultMap["lastRead"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "lastRead")
            }
          }
        }

        public struct Mention: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Mention"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("annotationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("documentId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
              GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
              GraphQLField("mentionedUser", type: .nonNull(.object(MentionedUser.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, annotationId: GraphQLID, documentId: GraphQLID, createdAt: String, updatedAt: String, mentionedUser: MentionedUser) {
            self.init(unsafeResultMap: ["__typename": "Mention", "id": id, "annotationId": annotationId, "documentId": documentId, "createdAt": createdAt, "updatedAt": updatedAt, "mentionedUser": mentionedUser.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var annotationId: GraphQLID {
            get {
              return resultMap["annotationId"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "annotationId")
            }
          }

          public var documentId: GraphQLID {
            get {
              return resultMap["documentId"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "documentId")
            }
          }

          public var createdAt: String {
            get {
              return resultMap["createdAt"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var updatedAt: String {
            get {
              return resultMap["updatedAt"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "updatedAt")
            }
          }

          public var mentionedUser: MentionedUser {
            get {
              return MentionedUser(unsafeResultMap: resultMap["mentionedUser"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "mentionedUser")
            }
          }

          public struct MentionedUser: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["User"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("userName", type: .scalar(String.self)),
                GraphQLField("email", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID, userName: String? = nil, email: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "User", "id": id, "userName": userName, "email": email])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return resultMap["id"]! as! GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            public var userName: String? {
              get {
                return resultMap["userName"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "userName")
              }
            }

            public var email: String? {
              get {
                return resultMap["email"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "email")
              }
            }
          }
        }
      }

      public struct Member: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["DocumentMember"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("user", type: .nonNull(.object(User.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, createdAt: String, user: User) {
          self.init(unsafeResultMap: ["__typename": "DocumentMember", "id": id, "createdAt": createdAt, "user": user.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var createdAt: String {
          get {
            return resultMap["createdAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var user: User {
          get {
            return User(unsafeResultMap: resultMap["user"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "user")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["User"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("userName", type: .scalar(String.self)),
              GraphQLField("email", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, userName: String? = nil, email: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "User", "id": id, "userName": userName, "email": email])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var userName: String? {
            get {
              return resultMap["userName"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "userName")
            }
          }

          public var email: String? {
            get {
              return resultMap["email"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "email")
            }
          }
        }
      }
    }
  }
}

public final class GetDocumentMetadataByIdQueryQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetDocumentMetadataByIdQuery($id: ID!) {
      document(id: $id) {
        __typename
        id
        name
        isPublic
        author {
          __typename
          id
          userName
          email
          type
        }
        createdAt
        updatedAt
        unreadCount
      }
    }
    """

  public let operationName: String = "GetDocumentMetadataByIdQuery"

  public let operationIdentifier: String? = "cbcfd015a5dbba3cc28f4f8def93dabb9ecdab5794af70a96319152ac61a6089"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("document", arguments: ["id": GraphQLVariable("id")], type: .object(Document.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(document: Document? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "document": document.flatMap { (value: Document) -> ResultMap in value.resultMap }])
    }

    public var document: Document? {
      get {
        return (resultMap["document"] as? ResultMap).flatMap { Document(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "document")
      }
    }

    public struct Document: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Document"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("isPublic", type: .scalar(Bool.self)),
          GraphQLField("author", type: .nonNull(.object(Author.selections))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("unreadCount", type: .nonNull(.scalar(Int.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String? = nil, isPublic: Bool? = nil, author: Author, createdAt: String, updatedAt: String, unreadCount: Int) {
        self.init(unsafeResultMap: ["__typename": "Document", "id": id, "name": name, "isPublic": isPublic, "author": author.resultMap, "createdAt": createdAt, "updatedAt": updatedAt, "unreadCount": unreadCount])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var isPublic: Bool? {
        get {
          return resultMap["isPublic"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isPublic")
        }
      }

      public var author: Author {
        get {
          return Author(unsafeResultMap: resultMap["author"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "author")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["createdAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return resultMap["updatedAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var unreadCount: Int {
        get {
          return resultMap["unreadCount"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "unreadCount")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userName", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("type", type: .nonNull(.scalar(UserTypes.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, userName: String? = nil, email: String? = nil, type: UserTypes) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id, "userName": userName, "email": email, "type": type])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var userName: String? {
          get {
            return resultMap["userName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userName")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var type: UserTypes {
          get {
            return resultMap["type"]! as! UserTypes
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }
      }
    }
  }
}

public final class GetDocumentsFilteredQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetDocumentsFiltered($userId: ID!, $limit: Int!, $before: Date, $orderBy: OrderTypes, $orderDirection: OrderDirections) {
      documents(
        userId: $userId
        limit: $limit
        before: $before
        orderBy: $orderBy
        orderDirection: $orderDirection
      ) {
        __typename
        id
        name
        isPublic
        author {
          __typename
          id
          userName
          email
          type
        }
        createdAt
        updatedAt
        unreadCount
      }
    }
    """

  public let operationName: String = "GetDocumentsFiltered"

  public let operationIdentifier: String? = "bfc5c9f99180be5eacce9683a6cc1b2ab28d40032e34ed4398858d9a02d49c33"

  public var userId: GraphQLID
  public var limit: Int
  public var before: String?
  public var orderBy: OrderTypes?
  public var orderDirection: OrderDirections?

  public init(userId: GraphQLID, limit: Int, before: String? = nil, orderBy: OrderTypes? = nil, orderDirection: OrderDirections? = nil) {
    self.userId = userId
    self.limit = limit
    self.before = before
    self.orderBy = orderBy
    self.orderDirection = orderDirection
  }

  public var variables: GraphQLMap? {
    return ["userId": userId, "limit": limit, "before": before, "orderBy": orderBy, "orderDirection": orderDirection]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("documents", arguments: ["userId": GraphQLVariable("userId"), "limit": GraphQLVariable("limit"), "before": GraphQLVariable("before"), "orderBy": GraphQLVariable("orderBy"), "orderDirection": GraphQLVariable("orderDirection")], type: .nonNull(.list(.nonNull(.object(Document.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(documents: [Document]) {
      self.init(unsafeResultMap: ["__typename": "Query", "documents": documents.map { (value: Document) -> ResultMap in value.resultMap }])
    }

    public var documents: [Document] {
      get {
        return (resultMap["documents"] as! [ResultMap]).map { (value: ResultMap) -> Document in Document(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Document) -> ResultMap in value.resultMap }, forKey: "documents")
      }
    }

    public struct Document: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Document"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("isPublic", type: .scalar(Bool.self)),
          GraphQLField("author", type: .nonNull(.object(Author.selections))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("unreadCount", type: .nonNull(.scalar(Int.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String? = nil, isPublic: Bool? = nil, author: Author, createdAt: String, updatedAt: String, unreadCount: Int) {
        self.init(unsafeResultMap: ["__typename": "Document", "id": id, "name": name, "isPublic": isPublic, "author": author.resultMap, "createdAt": createdAt, "updatedAt": updatedAt, "unreadCount": unreadCount])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var isPublic: Bool? {
        get {
          return resultMap["isPublic"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isPublic")
        }
      }

      public var author: Author {
        get {
          return Author(unsafeResultMap: resultMap["author"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "author")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["createdAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return resultMap["updatedAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var unreadCount: Int {
        get {
          return resultMap["unreadCount"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "unreadCount")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userName", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("type", type: .nonNull(.scalar(UserTypes.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, userName: String? = nil, email: String? = nil, type: UserTypes) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id, "userName": userName, "email": email, "type": type])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var userName: String? {
          get {
            return resultMap["userName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userName")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var type: UserTypes {
          get {
            return resultMap["type"]! as! UserTypes
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }
      }
    }
  }
}

public final class GetPublicDocumentsFilteredQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetPublicDocumentsFiltered($limit: Int!, $before: Date, $orderBy: OrderTypes, $orderDirection: OrderDirections) {
      publicDocuments(
        limit: $limit
        before: $before
        orderBy: $orderBy
        orderDirection: $orderDirection
      ) {
        __typename
        id
        name
        isPublic
        author {
          __typename
          id
          userName
          email
          type
        }
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "GetPublicDocumentsFiltered"

  public let operationIdentifier: String? = "83979b0895c8e09a802abd713c1466366fbd2dce65150337359dad684083b2f7"

  public var limit: Int
  public var before: String?
  public var orderBy: OrderTypes?
  public var orderDirection: OrderDirections?

  public init(limit: Int, before: String? = nil, orderBy: OrderTypes? = nil, orderDirection: OrderDirections? = nil) {
    self.limit = limit
    self.before = before
    self.orderBy = orderBy
    self.orderDirection = orderDirection
  }

  public var variables: GraphQLMap? {
    return ["limit": limit, "before": before, "orderBy": orderBy, "orderDirection": orderDirection]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("publicDocuments", arguments: ["limit": GraphQLVariable("limit"), "before": GraphQLVariable("before"), "orderBy": GraphQLVariable("orderBy"), "orderDirection": GraphQLVariable("orderDirection")], type: .nonNull(.list(.nonNull(.object(PublicDocument.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(publicDocuments: [PublicDocument]) {
      self.init(unsafeResultMap: ["__typename": "Query", "publicDocuments": publicDocuments.map { (value: PublicDocument) -> ResultMap in value.resultMap }])
    }

    public var publicDocuments: [PublicDocument] {
      get {
        return (resultMap["publicDocuments"] as! [ResultMap]).map { (value: ResultMap) -> PublicDocument in PublicDocument(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: PublicDocument) -> ResultMap in value.resultMap }, forKey: "publicDocuments")
      }
    }

    public struct PublicDocument: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Document"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("isPublic", type: .scalar(Bool.self)),
          GraphQLField("author", type: .nonNull(.object(Author.selections))),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String? = nil, isPublic: Bool? = nil, author: Author, createdAt: String, updatedAt: String) {
        self.init(unsafeResultMap: ["__typename": "Document", "id": id, "name": name, "isPublic": isPublic, "author": author.resultMap, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var isPublic: Bool? {
        get {
          return resultMap["isPublic"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isPublic")
        }
      }

      public var author: Author {
        get {
          return Author(unsafeResultMap: resultMap["author"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "author")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["createdAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return resultMap["updatedAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("userName", type: .scalar(String.self)),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("type", type: .nonNull(.scalar(UserTypes.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, userName: String? = nil, email: String? = nil, type: UserTypes) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id, "userName": userName, "email": email, "type": type])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var userName: String? {
          get {
            return resultMap["userName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userName")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var type: UserTypes {
          get {
            return resultMap["type"]! as! UserTypes
          }
          set {
            resultMap.updateValue(newValue, forKey: "type")
          }
        }
      }
    }
  }
}

public final class GetAvailableScrollSyncSessionsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetAvailableScrollSyncSessions($documentId: ID!) {
      getAvailableScrollSyncSessions(documentId: $documentId) {
        __typename
        leaderId
        documentId
        position {
          __typename
          scrollTop
          scrollHeight
        }
        sessionId
      }
    }
    """

  public let operationName: String = "GetAvailableScrollSyncSessions"

  public let operationIdentifier: String? = "ad85adfda10e4b4cac7cb39c00b4d0d4b99f6a0d579d45ffa89f1688fa506bde"

  public var documentId: GraphQLID

  public init(documentId: GraphQLID) {
    self.documentId = documentId
  }

  public var variables: GraphQLMap? {
    return ["documentId": documentId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getAvailableScrollSyncSessions", arguments: ["documentId": GraphQLVariable("documentId")], type: .nonNull(.list(.nonNull(.object(GetAvailableScrollSyncSession.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getAvailableScrollSyncSessions: [GetAvailableScrollSyncSession]) {
      self.init(unsafeResultMap: ["__typename": "Query", "getAvailableScrollSyncSessions": getAvailableScrollSyncSessions.map { (value: GetAvailableScrollSyncSession) -> ResultMap in value.resultMap }])
    }

    public var getAvailableScrollSyncSessions: [GetAvailableScrollSyncSession] {
      get {
        return (resultMap["getAvailableScrollSyncSessions"] as! [ResultMap]).map { (value: ResultMap) -> GetAvailableScrollSyncSession in GetAvailableScrollSyncSession(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: GetAvailableScrollSyncSession) -> ResultMap in value.resultMap }, forKey: "getAvailableScrollSyncSessions")
      }
    }

    public struct GetAvailableScrollSyncSession: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ScrollSyncSession"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("leaderId", type: .nonNull(.scalar(String.self))),
          GraphQLField("documentId", type: .nonNull(.scalar(String.self))),
          GraphQLField("position", type: .nonNull(.object(Position.selections))),
          GraphQLField("sessionId", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(leaderId: String, documentId: String, position: Position, sessionId: String) {
        self.init(unsafeResultMap: ["__typename": "ScrollSyncSession", "leaderId": leaderId, "documentId": documentId, "position": position.resultMap, "sessionId": sessionId])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var leaderId: String {
        get {
          return resultMap["leaderId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "leaderId")
        }
      }

      public var documentId: String {
        get {
          return resultMap["documentId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "documentId")
        }
      }

      public var position: Position {
        get {
          return Position(unsafeResultMap: resultMap["position"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "position")
        }
      }

      public var sessionId: String {
        get {
          return resultMap["sessionId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "sessionId")
        }
      }

      public struct Position: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ScrollSyncPosition"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("scrollTop", type: .scalar(Int.self)),
            GraphQLField("scrollHeight", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(scrollTop: Int? = nil, scrollHeight: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "ScrollSyncPosition", "scrollTop": scrollTop, "scrollHeight": scrollHeight])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var scrollTop: Int? {
          get {
            return resultMap["scrollTop"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "scrollTop")
          }
        }

        public var scrollHeight: Int? {
          get {
            return resultMap["scrollHeight"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "scrollHeight")
          }
        }
      }
    }
  }
}

public final class GetSessionQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetSession {
      session {
        __typename
        id
        userName
        token
      }
    }
    """

  public let operationName: String = "GetSession"

  public let operationIdentifier: String? = "8387a420724f35408165826ca7edf8c6e81467204055bf62f42bc996ade51132"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("session", type: .object(Session.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(session: Session? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "session": session.flatMap { (value: Session) -> ResultMap in value.resultMap }])
    }

    public var session: Session? {
      get {
        return (resultMap["session"] as? ResultMap).flatMap { Session(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "session")
      }
    }

    public struct Session: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["AuthUser"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("userName", type: .scalar(String.self)),
          GraphQLField("token", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, userName: String? = nil, token: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "AuthUser", "id": id, "userName": userName, "token": token])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var userName: String? {
        get {
          return resultMap["userName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userName")
        }
      }

      public var token: String? {
        get {
          return resultMap["token"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "token")
        }
      }
    }
  }
}

public final class GetSnapshotByIdQueryQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetSnapshotByIdQuery($id: ID!) {
      snapshot(id: $id) {
        __typename
        id
        author {
          __typename
          id
          email
          userName
        }
        documentId
        xfdf
        name
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "GetSnapshotByIdQuery"

  public let operationIdentifier: String? = "f1751018daa22395c50e9a4ad906c0737990fef0bde80c248e2aedb20009fe80"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("snapshot", arguments: ["id": GraphQLVariable("id")], type: .object(Snapshot.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(snapshot: Snapshot? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "snapshot": snapshot.flatMap { (value: Snapshot) -> ResultMap in value.resultMap }])
    }

    public var snapshot: Snapshot? {
      get {
        return (resultMap["snapshot"] as? ResultMap).flatMap { Snapshot(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "snapshot")
      }
    }

    public struct Snapshot: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Snapshot"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("author", type: .object(Author.selections)),
          GraphQLField("documentId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("xfdf", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, author: Author? = nil, documentId: GraphQLID, xfdf: String, name: String? = nil, createdAt: String, updatedAt: String) {
        self.init(unsafeResultMap: ["__typename": "Snapshot", "id": id, "author": author.flatMap { (value: Author) -> ResultMap in value.resultMap }, "documentId": documentId, "xfdf": xfdf, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var author: Author? {
        get {
          return (resultMap["author"] as? ResultMap).flatMap { Author(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "author")
        }
      }

      public var documentId: GraphQLID {
        get {
          return resultMap["documentId"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "documentId")
        }
      }

      public var xfdf: String {
        get {
          return resultMap["xfdf"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "xfdf")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["createdAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return resultMap["updatedAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("userName", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, email: String? = nil, userName: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id, "email": email, "userName": userName])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var userName: String? {
          get {
            return resultMap["userName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userName")
          }
        }
      }
    }
  }
}

public final class GetSnapshotsFilteredQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetSnapshotsFiltered($documentId: ID!, $limit: Int!, $before: Date, $orderBy: OrderTypes, $orderDirection: OrderDirections) {
      snapshots(
        documentId: $documentId
        limit: $limit
        before: $before
        orderBy: $orderBy
        orderDirection: $orderDirection
      ) {
        __typename
        id
        author {
          __typename
          id
          email
          userName
        }
        documentId
        name
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "GetSnapshotsFiltered"

  public let operationIdentifier: String? = "60a8335366b2abba32ec39d143d7889a013c805483439d80af3efa78bd3a66dd"

  public var documentId: GraphQLID
  public var limit: Int
  public var before: String?
  public var orderBy: OrderTypes?
  public var orderDirection: OrderDirections?

  public init(documentId: GraphQLID, limit: Int, before: String? = nil, orderBy: OrderTypes? = nil, orderDirection: OrderDirections? = nil) {
    self.documentId = documentId
    self.limit = limit
    self.before = before
    self.orderBy = orderBy
    self.orderDirection = orderDirection
  }

  public var variables: GraphQLMap? {
    return ["documentId": documentId, "limit": limit, "before": before, "orderBy": orderBy, "orderDirection": orderDirection]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("snapshots", arguments: ["documentId": GraphQLVariable("documentId"), "limit": GraphQLVariable("limit"), "before": GraphQLVariable("before"), "orderBy": GraphQLVariable("orderBy"), "orderDirection": GraphQLVariable("orderDirection")], type: .nonNull(.list(.nonNull(.object(Snapshot.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(snapshots: [Snapshot]) {
      self.init(unsafeResultMap: ["__typename": "Query", "snapshots": snapshots.map { (value: Snapshot) -> ResultMap in value.resultMap }])
    }

    public var snapshots: [Snapshot] {
      get {
        return (resultMap["snapshots"] as! [ResultMap]).map { (value: ResultMap) -> Snapshot in Snapshot(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Snapshot) -> ResultMap in value.resultMap }, forKey: "snapshots")
      }
    }

    public struct Snapshot: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Snapshot"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("author", type: .object(Author.selections)),
          GraphQLField("documentId", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, author: Author? = nil, documentId: GraphQLID, name: String? = nil, createdAt: String, updatedAt: String) {
        self.init(unsafeResultMap: ["__typename": "Snapshot", "id": id, "author": author.flatMap { (value: Author) -> ResultMap in value.resultMap }, "documentId": documentId, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var author: Author? {
        get {
          return (resultMap["author"] as? ResultMap).flatMap { Author(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "author")
        }
      }

      public var documentId: GraphQLID {
        get {
          return resultMap["documentId"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "documentId")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["createdAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return resultMap["updatedAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["User"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("email", type: .scalar(String.self)),
            GraphQLField("userName", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, email: String? = nil, userName: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "User", "id": id, "email": email, "userName": userName])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var email: String? {
          get {
            return resultMap["email"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "email")
          }
        }

        public var userName: String? {
          get {
            return resultMap["userName"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "userName")
          }
        }
      }
    }
  }
}

public final class GetUserQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query GetUser($id: ID!) {
      user(id: $id) {
        __typename
        id
        email
        type
        userName
      }
    }
    """

  public let operationName: String = "GetUser"

  public let operationIdentifier: String? = "696dfa2a78bf1f86713ef5bbf851101f5aa0657d1802334997aac69c65531cf8"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("user", arguments: ["id": GraphQLVariable("id")], type: .nonNull(.object(User.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(user: User) {
      self.init(unsafeResultMap: ["__typename": "Query", "user": user.resultMap])
    }

    public var user: User {
      get {
        return User(unsafeResultMap: resultMap["user"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "user")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("email", type: .scalar(String.self)),
          GraphQLField("type", type: .nonNull(.scalar(UserTypes.self))),
          GraphQLField("userName", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, email: String? = nil, type: UserTypes, userName: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "email": email, "type": type, "userName": userName])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var email: String? {
        get {
          return resultMap["email"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "email")
        }
      }

      public var type: UserTypes {
        get {
          return resultMap["type"]! as! UserTypes
        }
        set {
          resultMap.updateValue(newValue, forKey: "type")
        }
      }

      public var userName: String? {
        get {
          return resultMap["userName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "userName")
        }
      }
    }
  }
}

public final class GetUserDocumentsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getUserDocuments($id: ID!) {
      user(id: $id) {
        __typename
        id
        documents {
          __typename
          id
          unreadCount
          author {
            __typename
            id
            userName
            email
            type
          }
          name
          createdAt
          updatedAt
        }
      }
    }
    """

  public let operationName: String = "getUserDocuments"

  public let operationIdentifier: String? = "3df5aeb4cb3a8fc205cea5013bbe04152248d8c39252459f16a528e2b2920ff4"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("user", arguments: ["id": GraphQLVariable("id")], type: .nonNull(.object(User.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(user: User) {
      self.init(unsafeResultMap: ["__typename": "Query", "user": user.resultMap])
    }

    public var user: User {
      get {
        return User(unsafeResultMap: resultMap["user"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "user")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("documents", type: .nonNull(.list(.nonNull(.object(Document.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, documents: [Document]) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "documents": documents.map { (value: Document) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var documents: [Document] {
        get {
          return (resultMap["documents"] as! [ResultMap]).map { (value: ResultMap) -> Document in Document(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Document) -> ResultMap in value.resultMap }, forKey: "documents")
        }
      }

      public struct Document: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Document"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("unreadCount", type: .nonNull(.scalar(Int.self))),
            GraphQLField("author", type: .nonNull(.object(Author.selections))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, unreadCount: Int, author: Author, name: String? = nil, createdAt: String, updatedAt: String) {
          self.init(unsafeResultMap: ["__typename": "Document", "id": id, "unreadCount": unreadCount, "author": author.resultMap, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var unreadCount: Int {
          get {
            return resultMap["unreadCount"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "unreadCount")
          }
        }

        public var author: Author {
          get {
            return Author(unsafeResultMap: resultMap["author"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "author")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var createdAt: String {
          get {
            return resultMap["createdAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return resultMap["updatedAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Author: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["User"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("userName", type: .scalar(String.self)),
              GraphQLField("email", type: .scalar(String.self)),
              GraphQLField("type", type: .nonNull(.scalar(UserTypes.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, userName: String? = nil, email: String? = nil, type: UserTypes) {
            self.init(unsafeResultMap: ["__typename": "User", "id": id, "userName": userName, "email": email, "type": type])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var userName: String? {
            get {
              return resultMap["userName"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "userName")
            }
          }

          public var email: String? {
            get {
              return resultMap["email"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "email")
            }
          }

          public var type: UserTypes {
            get {
              return resultMap["type"]! as! UserTypes
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }
        }
      }
    }
  }
}

public final class OnAnnotationChangedSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription OnAnnotationChanged($userId: ID!, $settings: QuerySettings) {
      annotationChanged(userId: $userId, settings: $settings) {
        __typename
        document {
          __typename
          id
          name
          updatedAt
          createdAt
        }
        annotation {
          __typename
          xfdf
          id
          annotationId
          documentId
          createdAt
          pageNumber
          annotContents
          author {
            __typename
            id
            email
            userName
          }
          membership {
            __typename
            id
            lastRead
          }
          inReplyTo
        }
        action
      }
    }
    """

  public let operationName: String = "OnAnnotationChanged"

  public let operationIdentifier: String? = "a2369055dec2bf5b791de4792d0695a2c722be3e4a8d5feb0a77564ce0eb4680"

  public var userId: GraphQLID
  public var settings: QuerySettings?

  public init(userId: GraphQLID, settings: QuerySettings? = nil) {
    self.userId = userId
    self.settings = settings
  }

  public var variables: GraphQLMap? {
    return ["userId": userId, "settings": settings]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("annotationChanged", arguments: ["userId": GraphQLVariable("userId"), "settings": GraphQLVariable("settings")], type: .nonNull(.object(AnnotationChanged.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(annotationChanged: AnnotationChanged) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "annotationChanged": annotationChanged.resultMap])
    }

    public var annotationChanged: AnnotationChanged {
      get {
        return AnnotationChanged(unsafeResultMap: resultMap["annotationChanged"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "annotationChanged")
      }
    }

    public struct AnnotationChanged: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["AnnotationSubscriptionEvent"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("document", type: .object(Document.selections)),
          GraphQLField("annotation", type: .nonNull(.object(Annotation.selections))),
          GraphQLField("action", type: .nonNull(.scalar(ChangeEventTypes.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(document: Document? = nil, annotation: Annotation, action: ChangeEventTypes) {
        self.init(unsafeResultMap: ["__typename": "AnnotationSubscriptionEvent", "document": document.flatMap { (value: Document) -> ResultMap in value.resultMap }, "annotation": annotation.resultMap, "action": action])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var document: Document? {
        get {
          return (resultMap["document"] as? ResultMap).flatMap { Document(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "document")
        }
      }

      public var annotation: Annotation {
        get {
          return Annotation(unsafeResultMap: resultMap["annotation"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "annotation")
        }
      }

      public var action: ChangeEventTypes {
        get {
          return resultMap["action"]! as! ChangeEventTypes
        }
        set {
          resultMap.updateValue(newValue, forKey: "action")
        }
      }

      public struct Document: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Document"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, name: String? = nil, updatedAt: String, createdAt: String) {
          self.init(unsafeResultMap: ["__typename": "Document", "id": id, "name": name, "updatedAt": updatedAt, "createdAt": createdAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var updatedAt: String {
          get {
            return resultMap["updatedAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var createdAt: String {
          get {
            return resultMap["createdAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }
      }

      public struct Annotation: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Annotation"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("xfdf", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("annotationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("documentId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("pageNumber", type: .nonNull(.scalar(Int.self))),
            GraphQLField("annotContents", type: .scalar(String.self)),
            GraphQLField("author", type: .object(Author.selections)),
            GraphQLField("membership", type: .object(Membership.selections)),
            GraphQLField("inReplyTo", type: .scalar(GraphQLID.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(xfdf: String, id: GraphQLID, annotationId: GraphQLID, documentId: GraphQLID, createdAt: String, pageNumber: Int, annotContents: String? = nil, author: Author? = nil, membership: Membership? = nil, inReplyTo: GraphQLID? = nil) {
          self.init(unsafeResultMap: ["__typename": "Annotation", "xfdf": xfdf, "id": id, "annotationId": annotationId, "documentId": documentId, "createdAt": createdAt, "pageNumber": pageNumber, "annotContents": annotContents, "author": author.flatMap { (value: Author) -> ResultMap in value.resultMap }, "membership": membership.flatMap { (value: Membership) -> ResultMap in value.resultMap }, "inReplyTo": inReplyTo])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var xfdf: String {
          get {
            return resultMap["xfdf"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "xfdf")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var annotationId: GraphQLID {
          get {
            return resultMap["annotationId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "annotationId")
          }
        }

        public var documentId: GraphQLID {
          get {
            return resultMap["documentId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "documentId")
          }
        }

        public var createdAt: String {
          get {
            return resultMap["createdAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var pageNumber: Int {
          get {
            return resultMap["pageNumber"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "pageNumber")
          }
        }

        public var annotContents: String? {
          get {
            return resultMap["annotContents"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "annotContents")
          }
        }

        public var author: Author? {
          get {
            return (resultMap["author"] as? ResultMap).flatMap { Author(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "author")
          }
        }

        public var membership: Membership? {
          get {
            return (resultMap["membership"] as? ResultMap).flatMap { Membership(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "membership")
          }
        }

        public var inReplyTo: GraphQLID? {
          get {
            return resultMap["inReplyTo"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "inReplyTo")
          }
        }

        public struct Author: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["User"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("email", type: .scalar(String.self)),
              GraphQLField("userName", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, email: String? = nil, userName: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "User", "id": id, "email": email, "userName": userName])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var email: String? {
            get {
              return resultMap["email"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "email")
            }
          }

          public var userName: String? {
            get {
              return resultMap["userName"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "userName")
            }
          }
        }

        public struct Membership: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["AnnotationMember"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("lastRead", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, lastRead: String) {
            self.init(unsafeResultMap: ["__typename": "AnnotationMember", "id": id, "lastRead": lastRead])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var lastRead: String {
            get {
              return resultMap["lastRead"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "lastRead")
            }
          }
        }
      }
    }
  }
}

public final class OnConnectedDocUsersChangedSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription OnConnectedDocUsersChanged($docId: ID!) {
      connectedDocUsersChanged(docId: $docId) {
        __typename
        connectedDocUsers {
          __typename
          userId
          currentPage
        }
        action
      }
    }
    """

  public let operationName: String = "OnConnectedDocUsersChanged"

  public let operationIdentifier: String? = "750d9bbcd1d186f9b5aec39f0d8d637d3a7fcc781a01a96dc0c1f3ccb67abb49"

  public var docId: GraphQLID

  public init(docId: GraphQLID) {
    self.docId = docId
  }

  public var variables: GraphQLMap? {
    return ["docId": docId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("connectedDocUsersChanged", arguments: ["docId": GraphQLVariable("docId")], type: .nonNull(.object(ConnectedDocUsersChanged.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(connectedDocUsersChanged: ConnectedDocUsersChanged) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "connectedDocUsersChanged": connectedDocUsersChanged.resultMap])
    }

    public var connectedDocUsersChanged: ConnectedDocUsersChanged {
      get {
        return ConnectedDocUsersChanged(unsafeResultMap: resultMap["connectedDocUsersChanged"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "connectedDocUsersChanged")
      }
    }

    public struct ConnectedDocUsersChanged: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ConnectedDocUsersSubscriptionEvent"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("connectedDocUsers", type: .nonNull(.list(.nonNull(.object(ConnectedDocUser.selections))))),
          GraphQLField("action", type: .nonNull(.scalar(ChangeEventTypes.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(connectedDocUsers: [ConnectedDocUser], action: ChangeEventTypes) {
        self.init(unsafeResultMap: ["__typename": "ConnectedDocUsersSubscriptionEvent", "connectedDocUsers": connectedDocUsers.map { (value: ConnectedDocUser) -> ResultMap in value.resultMap }, "action": action])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var connectedDocUsers: [ConnectedDocUser] {
        get {
          return (resultMap["connectedDocUsers"] as! [ResultMap]).map { (value: ResultMap) -> ConnectedDocUser in ConnectedDocUser(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: ConnectedDocUser) -> ResultMap in value.resultMap }, forKey: "connectedDocUsers")
        }
      }

      public var action: ChangeEventTypes {
        get {
          return resultMap["action"]! as! ChangeEventTypes
        }
        set {
          resultMap.updateValue(newValue, forKey: "action")
        }
      }

      public struct ConnectedDocUser: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ConnectedDocUser"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("userId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("currentPage", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(userId: GraphQLID, currentPage: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "ConnectedDocUser", "userId": userId, "currentPage": currentPage])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var userId: GraphQLID {
          get {
            return resultMap["userId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "userId")
          }
        }

        public var currentPage: Int? {
          get {
            return resultMap["currentPage"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "currentPage")
          }
        }
      }
    }
  }
}

public final class OnDocumentChangedSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription OnDocumentChanged($userId: ID!, $settings: QuerySettings) {
      documentChanged(userId: $userId, settings: $settings) {
        __typename
        invitedBy
        document {
          __typename
          id
          name
          isPublic
          author {
            __typename
            id
            userName
            email
            type
          }
          unreadCount
          updatedAt
          createdAt
          annotations {
            __typename
            xfdf
            id
            annotationId
            documentId
            pageNumber
            annotContents
            createdAt
            author {
              __typename
              id
              email
              userName
            }
            membership {
              __typename
              id
              lastRead
            }
            inReplyTo
          }
          members {
            __typename
            id
            createdAt
            user {
              __typename
              id
              email
              userName
            }
          }
        }
        action
      }
    }
    """

  public let operationName: String = "OnDocumentChanged"

  public let operationIdentifier: String? = "f9259e2c35c8b89036b2d7418d4175556eb443cb15602ece4e18f9340520490d"

  public var userId: GraphQLID
  public var settings: QuerySettings?

  public init(userId: GraphQLID, settings: QuerySettings? = nil) {
    self.userId = userId
    self.settings = settings
  }

  public var variables: GraphQLMap? {
    return ["userId": userId, "settings": settings]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("documentChanged", arguments: ["userId": GraphQLVariable("userId"), "settings": GraphQLVariable("settings")], type: .nonNull(.object(DocumentChanged.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(documentChanged: DocumentChanged) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "documentChanged": documentChanged.resultMap])
    }

    public var documentChanged: DocumentChanged {
      get {
        return DocumentChanged(unsafeResultMap: resultMap["documentChanged"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "documentChanged")
      }
    }

    public struct DocumentChanged: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DocumentSubscriptionEvent"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("invitedBy", type: .scalar(String.self)),
          GraphQLField("document", type: .nonNull(.object(Document.selections))),
          GraphQLField("action", type: .nonNull(.scalar(ChangeEventTypes.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(invitedBy: String? = nil, document: Document, action: ChangeEventTypes) {
        self.init(unsafeResultMap: ["__typename": "DocumentSubscriptionEvent", "invitedBy": invitedBy, "document": document.resultMap, "action": action])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var invitedBy: String? {
        get {
          return resultMap["invitedBy"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "invitedBy")
        }
      }

      public var document: Document {
        get {
          return Document(unsafeResultMap: resultMap["document"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "document")
        }
      }

      public var action: ChangeEventTypes {
        get {
          return resultMap["action"]! as! ChangeEventTypes
        }
        set {
          resultMap.updateValue(newValue, forKey: "action")
        }
      }

      public struct Document: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Document"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("isPublic", type: .scalar(Bool.self)),
            GraphQLField("author", type: .nonNull(.object(Author.selections))),
            GraphQLField("unreadCount", type: .nonNull(.scalar(Int.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("annotations", type: .nonNull(.list(.nonNull(.object(Annotation.selections))))),
            GraphQLField("members", type: .nonNull(.list(.nonNull(.object(Member.selections))))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, name: String? = nil, isPublic: Bool? = nil, author: Author, unreadCount: Int, updatedAt: String, createdAt: String, annotations: [Annotation], members: [Member]) {
          self.init(unsafeResultMap: ["__typename": "Document", "id": id, "name": name, "isPublic": isPublic, "author": author.resultMap, "unreadCount": unreadCount, "updatedAt": updatedAt, "createdAt": createdAt, "annotations": annotations.map { (value: Annotation) -> ResultMap in value.resultMap }, "members": members.map { (value: Member) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var isPublic: Bool? {
          get {
            return resultMap["isPublic"] as? Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "isPublic")
          }
        }

        public var author: Author {
          get {
            return Author(unsafeResultMap: resultMap["author"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "author")
          }
        }

        public var unreadCount: Int {
          get {
            return resultMap["unreadCount"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "unreadCount")
          }
        }

        public var updatedAt: String {
          get {
            return resultMap["updatedAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public var createdAt: String {
          get {
            return resultMap["createdAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var annotations: [Annotation] {
          get {
            return (resultMap["annotations"] as! [ResultMap]).map { (value: ResultMap) -> Annotation in Annotation(unsafeResultMap: value) }
          }
          set {
            resultMap.updateValue(newValue.map { (value: Annotation) -> ResultMap in value.resultMap }, forKey: "annotations")
          }
        }

        public var members: [Member] {
          get {
            return (resultMap["members"] as! [ResultMap]).map { (value: ResultMap) -> Member in Member(unsafeResultMap: value) }
          }
          set {
            resultMap.updateValue(newValue.map { (value: Member) -> ResultMap in value.resultMap }, forKey: "members")
          }
        }

        public struct Author: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["User"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("userName", type: .scalar(String.self)),
              GraphQLField("email", type: .scalar(String.self)),
              GraphQLField("type", type: .nonNull(.scalar(UserTypes.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, userName: String? = nil, email: String? = nil, type: UserTypes) {
            self.init(unsafeResultMap: ["__typename": "User", "id": id, "userName": userName, "email": email, "type": type])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var userName: String? {
            get {
              return resultMap["userName"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "userName")
            }
          }

          public var email: String? {
            get {
              return resultMap["email"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "email")
            }
          }

          public var type: UserTypes {
            get {
              return resultMap["type"]! as! UserTypes
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }
        }

        public struct Annotation: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Annotation"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("xfdf", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("annotationId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("documentId", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("pageNumber", type: .nonNull(.scalar(Int.self))),
              GraphQLField("annotContents", type: .scalar(String.self)),
              GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
              GraphQLField("author", type: .object(Author.selections)),
              GraphQLField("membership", type: .object(Membership.selections)),
              GraphQLField("inReplyTo", type: .scalar(GraphQLID.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(xfdf: String, id: GraphQLID, annotationId: GraphQLID, documentId: GraphQLID, pageNumber: Int, annotContents: String? = nil, createdAt: String, author: Author? = nil, membership: Membership? = nil, inReplyTo: GraphQLID? = nil) {
            self.init(unsafeResultMap: ["__typename": "Annotation", "xfdf": xfdf, "id": id, "annotationId": annotationId, "documentId": documentId, "pageNumber": pageNumber, "annotContents": annotContents, "createdAt": createdAt, "author": author.flatMap { (value: Author) -> ResultMap in value.resultMap }, "membership": membership.flatMap { (value: Membership) -> ResultMap in value.resultMap }, "inReplyTo": inReplyTo])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var xfdf: String {
            get {
              return resultMap["xfdf"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "xfdf")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var annotationId: GraphQLID {
            get {
              return resultMap["annotationId"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "annotationId")
            }
          }

          public var documentId: GraphQLID {
            get {
              return resultMap["documentId"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "documentId")
            }
          }

          public var pageNumber: Int {
            get {
              return resultMap["pageNumber"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "pageNumber")
            }
          }

          public var annotContents: String? {
            get {
              return resultMap["annotContents"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "annotContents")
            }
          }

          public var createdAt: String {
            get {
              return resultMap["createdAt"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var author: Author? {
            get {
              return (resultMap["author"] as? ResultMap).flatMap { Author(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "author")
            }
          }

          public var membership: Membership? {
            get {
              return (resultMap["membership"] as? ResultMap).flatMap { Membership(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "membership")
            }
          }

          public var inReplyTo: GraphQLID? {
            get {
              return resultMap["inReplyTo"] as? GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "inReplyTo")
            }
          }

          public struct Author: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["User"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("email", type: .scalar(String.self)),
                GraphQLField("userName", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID, email: String? = nil, userName: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "User", "id": id, "email": email, "userName": userName])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return resultMap["id"]! as! GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            public var email: String? {
              get {
                return resultMap["email"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "email")
              }
            }

            public var userName: String? {
              get {
                return resultMap["userName"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "userName")
              }
            }
          }

          public struct Membership: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["AnnotationMember"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("lastRead", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID, lastRead: String) {
              self.init(unsafeResultMap: ["__typename": "AnnotationMember", "id": id, "lastRead": lastRead])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return resultMap["id"]! as! GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            public var lastRead: String {
              get {
                return resultMap["lastRead"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "lastRead")
              }
            }
          }
        }

        public struct Member: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["DocumentMember"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
              GraphQLField("user", type: .nonNull(.object(User.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, createdAt: String, user: User) {
            self.init(unsafeResultMap: ["__typename": "DocumentMember", "id": id, "createdAt": createdAt, "user": user.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var createdAt: String {
            get {
              return resultMap["createdAt"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "createdAt")
            }
          }

          public var user: User {
            get {
              return User(unsafeResultMap: resultMap["user"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "user")
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["User"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("email", type: .scalar(String.self)),
                GraphQLField("userName", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID, email: String? = nil, userName: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "User", "id": id, "email": email, "userName": userName])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var id: GraphQLID {
              get {
                return resultMap["id"]! as! GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            public var email: String? {
              get {
                return resultMap["email"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "email")
              }
            }

            public var userName: String? {
              get {
                return resultMap["userName"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "userName")
              }
            }
          }
        }
      }
    }
  }
}

public final class OnMentionChangedSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription OnMentionChanged($userId: ID!) {
      mentionChanged(userId: $userId) {
        __typename
        mention {
          __typename
          id
          annotationId
          documentId
          mentionedUser {
            __typename
            id
            userName
            email
          }
        }
        action
      }
    }
    """

  public let operationName: String = "OnMentionChanged"

  public let operationIdentifier: String? = "409e42391170d1ab2f8219639d8a8f3aa63dd42c82cf586e257d84f1319b6f3a"

  public var userId: GraphQLID

  public init(userId: GraphQLID) {
    self.userId = userId
  }

  public var variables: GraphQLMap? {
    return ["userId": userId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("mentionChanged", arguments: ["userId": GraphQLVariable("userId")], type: .nonNull(.object(MentionChanged.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(mentionChanged: MentionChanged) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "mentionChanged": mentionChanged.resultMap])
    }

    public var mentionChanged: MentionChanged {
      get {
        return MentionChanged(unsafeResultMap: resultMap["mentionChanged"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "mentionChanged")
      }
    }

    public struct MentionChanged: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["MentionSubscriptionEvent"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("mention", type: .nonNull(.object(Mention.selections))),
          GraphQLField("action", type: .nonNull(.scalar(ChangeEventTypes.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(mention: Mention, action: ChangeEventTypes) {
        self.init(unsafeResultMap: ["__typename": "MentionSubscriptionEvent", "mention": mention.resultMap, "action": action])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var mention: Mention {
        get {
          return Mention(unsafeResultMap: resultMap["mention"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "mention")
        }
      }

      public var action: ChangeEventTypes {
        get {
          return resultMap["action"]! as! ChangeEventTypes
        }
        set {
          resultMap.updateValue(newValue, forKey: "action")
        }
      }

      public struct Mention: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Mention"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("annotationId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("documentId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("mentionedUser", type: .nonNull(.object(MentionedUser.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, annotationId: GraphQLID, documentId: GraphQLID, mentionedUser: MentionedUser) {
          self.init(unsafeResultMap: ["__typename": "Mention", "id": id, "annotationId": annotationId, "documentId": documentId, "mentionedUser": mentionedUser.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var annotationId: GraphQLID {
          get {
            return resultMap["annotationId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "annotationId")
          }
        }

        public var documentId: GraphQLID {
          get {
            return resultMap["documentId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "documentId")
          }
        }

        public var mentionedUser: MentionedUser {
          get {
            return MentionedUser(unsafeResultMap: resultMap["mentionedUser"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "mentionedUser")
          }
        }

        public struct MentionedUser: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["User"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("userName", type: .scalar(String.self)),
              GraphQLField("email", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, userName: String? = nil, email: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "User", "id": id, "userName": userName, "email": email])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var userName: String? {
            get {
              return resultMap["userName"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "userName")
            }
          }

          public var email: String? {
            get {
              return resultMap["email"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "email")
            }
          }
        }
      }
    }
  }
}

public final class OnScrollPositionChangedSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription OnScrollPositionChanged($sessionId: ID!) {
      scrollPositionChanged(sessionId: $sessionId) {
        __typename
        position {
          __typename
          scrollHeight
          scrollTop
        }
      }
    }
    """

  public let operationName: String = "OnScrollPositionChanged"

  public let operationIdentifier: String? = "bafcfc55fee6cf3f98860fb14bce910714c15f20edeb2bae211af5d236ccd7ac"

  public var sessionId: GraphQLID

  public init(sessionId: GraphQLID) {
    self.sessionId = sessionId
  }

  public var variables: GraphQLMap? {
    return ["sessionId": sessionId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("scrollPositionChanged", arguments: ["sessionId": GraphQLVariable("sessionId")], type: .nonNull(.object(ScrollPositionChanged.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(scrollPositionChanged: ScrollPositionChanged) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "scrollPositionChanged": scrollPositionChanged.resultMap])
    }

    public var scrollPositionChanged: ScrollPositionChanged {
      get {
        return ScrollPositionChanged(unsafeResultMap: resultMap["scrollPositionChanged"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "scrollPositionChanged")
      }
    }

    public struct ScrollPositionChanged: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ScrollPositionSubscriptionEvent"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("position", type: .nonNull(.object(Position.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(position: Position) {
        self.init(unsafeResultMap: ["__typename": "ScrollPositionSubscriptionEvent", "position": position.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var position: Position {
        get {
          return Position(unsafeResultMap: resultMap["position"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "position")
        }
      }

      public struct Position: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ScrollSyncPosition"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("scrollHeight", type: .scalar(Int.self)),
            GraphQLField("scrollTop", type: .scalar(Int.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(scrollHeight: Int? = nil, scrollTop: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "ScrollSyncPosition", "scrollHeight": scrollHeight, "scrollTop": scrollTop])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var scrollHeight: Int? {
          get {
            return resultMap["scrollHeight"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "scrollHeight")
          }
        }

        public var scrollTop: Int? {
          get {
            return resultMap["scrollTop"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "scrollTop")
          }
        }
      }
    }
  }
}

public final class ScrollSyncSessionUpdatedSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription ScrollSyncSessionUpdated($docId: ID!) {
      scrollSyncSessionUpdated(docId: $docId) {
        __typename
        session {
          __typename
          leaderId
          documentId
          position {
            __typename
            scrollTop
            scrollHeight
          }
          sessionId
        }
        action
      }
    }
    """

  public let operationName: String = "ScrollSyncSessionUpdated"

  public let operationIdentifier: String? = "0b58ed07de21aedfc32f020544df733db512c7fe7b9c09275213844cb993fb82"

  public var docId: GraphQLID

  public init(docId: GraphQLID) {
    self.docId = docId
  }

  public var variables: GraphQLMap? {
    return ["docId": docId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("scrollSyncSessionUpdated", arguments: ["docId": GraphQLVariable("docId")], type: .nonNull(.object(ScrollSyncSessionUpdated.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(scrollSyncSessionUpdated: ScrollSyncSessionUpdated) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "scrollSyncSessionUpdated": scrollSyncSessionUpdated.resultMap])
    }

    public var scrollSyncSessionUpdated: ScrollSyncSessionUpdated {
      get {
        return ScrollSyncSessionUpdated(unsafeResultMap: resultMap["scrollSyncSessionUpdated"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "scrollSyncSessionUpdated")
      }
    }

    public struct ScrollSyncSessionUpdated: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ScrollSyncSessionChangedEvent"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("session", type: .nonNull(.object(Session.selections))),
          GraphQLField("action", type: .nonNull(.scalar(ScrollSyncChangedEventTypes.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(session: Session, action: ScrollSyncChangedEventTypes) {
        self.init(unsafeResultMap: ["__typename": "ScrollSyncSessionChangedEvent", "session": session.resultMap, "action": action])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var session: Session {
        get {
          return Session(unsafeResultMap: resultMap["session"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "session")
        }
      }

      public var action: ScrollSyncChangedEventTypes {
        get {
          return resultMap["action"]! as! ScrollSyncChangedEventTypes
        }
        set {
          resultMap.updateValue(newValue, forKey: "action")
        }
      }

      public struct Session: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ScrollSyncSession"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("leaderId", type: .nonNull(.scalar(String.self))),
            GraphQLField("documentId", type: .nonNull(.scalar(String.self))),
            GraphQLField("position", type: .nonNull(.object(Position.selections))),
            GraphQLField("sessionId", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(leaderId: String, documentId: String, position: Position, sessionId: String) {
          self.init(unsafeResultMap: ["__typename": "ScrollSyncSession", "leaderId": leaderId, "documentId": documentId, "position": position.resultMap, "sessionId": sessionId])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var leaderId: String {
          get {
            return resultMap["leaderId"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "leaderId")
          }
        }

        public var documentId: String {
          get {
            return resultMap["documentId"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "documentId")
          }
        }

        public var position: Position {
          get {
            return Position(unsafeResultMap: resultMap["position"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "position")
          }
        }

        public var sessionId: String {
          get {
            return resultMap["sessionId"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "sessionId")
          }
        }

        public struct Position: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ScrollSyncPosition"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("scrollTop", type: .scalar(Int.self)),
              GraphQLField("scrollHeight", type: .scalar(Int.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(scrollTop: Int? = nil, scrollHeight: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "ScrollSyncPosition", "scrollTop": scrollTop, "scrollHeight": scrollHeight])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var scrollTop: Int? {
            get {
              return resultMap["scrollTop"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "scrollTop")
            }
          }

          public var scrollHeight: Int? {
            get {
              return resultMap["scrollHeight"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "scrollHeight")
            }
          }
        }
      }
    }
  }
}

public final class OnSnapshotChangedSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription OnSnapshotChanged($userId: ID!, $docId: ID!) {
      snapshotChanged(userId: $userId, docId: $docId) {
        __typename
        snapshot {
          __typename
          id
          author {
            __typename
            id
            email
            userName
          }
          documentId
          xfdf
          name
          createdAt
          updatedAt
        }
        action
      }
    }
    """

  public let operationName: String = "OnSnapshotChanged"

  public let operationIdentifier: String? = "c4130e15146e87c5ec02e689ca0b124881046588021657ed678c1aed43a716ef"

  public var userId: GraphQLID
  public var docId: GraphQLID

  public init(userId: GraphQLID, docId: GraphQLID) {
    self.userId = userId
    self.docId = docId
  }

  public var variables: GraphQLMap? {
    return ["userId": userId, "docId": docId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("snapshotChanged", arguments: ["userId": GraphQLVariable("userId"), "docId": GraphQLVariable("docId")], type: .nonNull(.object(SnapshotChanged.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(snapshotChanged: SnapshotChanged) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "snapshotChanged": snapshotChanged.resultMap])
    }

    public var snapshotChanged: SnapshotChanged {
      get {
        return SnapshotChanged(unsafeResultMap: resultMap["snapshotChanged"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "snapshotChanged")
      }
    }

    public struct SnapshotChanged: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["SnapshotChangedSubscriptionEvent"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("snapshot", type: .nonNull(.object(Snapshot.selections))),
          GraphQLField("action", type: .nonNull(.scalar(SnapshotChangeEventTypes.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(snapshot: Snapshot, action: SnapshotChangeEventTypes) {
        self.init(unsafeResultMap: ["__typename": "SnapshotChangedSubscriptionEvent", "snapshot": snapshot.resultMap, "action": action])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var snapshot: Snapshot {
        get {
          return Snapshot(unsafeResultMap: resultMap["snapshot"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "snapshot")
        }
      }

      public var action: SnapshotChangeEventTypes {
        get {
          return resultMap["action"]! as! SnapshotChangeEventTypes
        }
        set {
          resultMap.updateValue(newValue, forKey: "action")
        }
      }

      public struct Snapshot: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Snapshot"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("author", type: .object(Author.selections)),
            GraphQLField("documentId", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("xfdf", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
            GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, author: Author? = nil, documentId: GraphQLID, xfdf: String, name: String? = nil, createdAt: String, updatedAt: String) {
          self.init(unsafeResultMap: ["__typename": "Snapshot", "id": id, "author": author.flatMap { (value: Author) -> ResultMap in value.resultMap }, "documentId": documentId, "xfdf": xfdf, "name": name, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var author: Author? {
          get {
            return (resultMap["author"] as? ResultMap).flatMap { Author(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "author")
          }
        }

        public var documentId: GraphQLID {
          get {
            return resultMap["documentId"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "documentId")
          }
        }

        public var xfdf: String {
          get {
            return resultMap["xfdf"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "xfdf")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var createdAt: String {
          get {
            return resultMap["createdAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return resultMap["updatedAt"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "updatedAt")
          }
        }

        public struct Author: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["User"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("email", type: .scalar(String.self)),
              GraphQLField("userName", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, email: String? = nil, userName: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "User", "id": id, "email": email, "userName": userName])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var email: String? {
            get {
              return resultMap["email"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "email")
            }
          }

          public var userName: String? {
            get {
              return resultMap["userName"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "userName")
            }
          }
        }
      }
    }
  }
}

//
//  ExternalModuleMockableTypes.swift
//  MockingbirdTestsHost
//
//  Created by Andrew Chang on 9/15/19.
//

import Foundation
import MockingbirdModuleTestsHost

protocol LocalPublicExternalProtocol: PublicExternalProtocol {}

/// Cannot be mocked because `ExternalClass` doesn't define any publicly accessible initializers.
class SubclassingExternalClass: ExternalClass {
  var internalVariable = true
  func internalMethod() {}
}

// MARK: - Inherited external initializer

class SubclassingExternalClassWithInheritedIntializer: ExternalClassWithInitializer {
  var internalVariable = true
  func internalMethod() {}
}

open class SubclassingExternalSubclassWithInheritedInitializer: ExternalSubclassWithInitializer {
  var internalVariable = true
  func internalMethod() {}
}

// MARK: - Designated local initializer

class SubclassingExternalClassWithDesignatedIntializer: ExternalClassWithInitializer {
  var internalVariable = true
  func internalMethod() {}
  
  init(param1: Bool) {
    super.init()
  }
}

class SubclassingExternalSubclassWithDesignatedInitializer: ExternalSubclassWithInitializer {
  var internalVariable = true
  func internalMethod() {}
  
  init(param1: Bool) {
    super.init()
  }
}

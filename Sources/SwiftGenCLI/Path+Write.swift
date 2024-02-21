//
//  File.swift
//  
//
//  Created by Javid Museyibli on 21.02.24.
//

import Foundation
import PathKit

extension Path {
    /// Workaround for a bug in SPM that prevents SwiftGen from writing files to DerivedData folder located on an external drive.
    /// https://github.com/apple/swift-package-manager/issues/6948#issuecomment-1747196926
    public func write(string: String, encoding: String.Encoding = String.Encoding.utf8) throws {
      try string.write(toFile: normalize().string, atomically: false, encoding: encoding)
    }
}

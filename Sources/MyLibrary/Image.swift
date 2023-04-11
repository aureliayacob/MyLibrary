//
//  File.swift
//  
//
//  Created by nexsoft nexsoft on 11/04/23.
//

import Foundation
import SwiftUI
import UIKit

extension Image {
    public init(packageResource name: String, ofType type: String) {
        #if canImport(UIKit)
        guard let path = Bundle.module.path(forResource: name, ofType: type),
              let image = UIImage(contentsOfFile: path) else {
            self.init(name)
            return
        }
        self.init(uiImage: image)
        #elseif canImport(AppKit)
        guard let path = Bundle.module.path(forResource: name, ofType: type),
              let image = NSImage(contentsOfFile: path) else {
            self.init(name)
            return
        }
        self.init(nsImage: image)
        #else
        self.init(name)
        #endif
    }
}


public struct ComponentIcon {
    public let icon =  Image(packageResource: "Icon Area_Emoji", ofType: "svg")
    public let iconMedia =  Image(packageResource: "Love", ofType: "svg")
}

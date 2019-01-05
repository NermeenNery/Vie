//
//  Array+Extensions.swift
//  Joi
//
//  Created by Meseery on 12/24/17.
//  Copyright © 2017 Enhance. All rights reserved.
//

import Foundation

extension Array {
    mutating func modifyForEach(_ body: (_ index: Index, _ element: inout Element) -> ()) {
        for index in indices {
            modifyElement(atIndex: index) { body(index, &$0) }
        }
    }
    
    mutating func modifyElement(atIndex index: Index, _ modifyElement: (_ element: inout Element) -> ()) {
        var element = self[index]
        modifyElement(&element)
        self[index] = element
    }
}

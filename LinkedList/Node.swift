//
//  File.swift
//  LinkedList
//
//  Created by Vijay Thota on 6/30/20.
//  Copyright © 2020 Vijay Thota. All rights reserved.
//

import Foundation

public class Node<T> {
    var value : T
    var next : Node?
    weak var previous : Node?
    public init (value : T) {
        self.value = value
    }
}


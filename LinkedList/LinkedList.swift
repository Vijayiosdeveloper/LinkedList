//
//  LinkedList.swift
//  LinkedList
//
//  Created by Vijay Thota on 6/30/20.
//  Copyright © 2020 Vijay Thota. All rights reserved.
//

import Foundation

public class LinkedList<T> {
    private var head : Node<T>?
    
    public var isEmpty : Bool {
        return head == nil
    }
    
    public var first : Node<T>? {
        return head
    }
    
    public var last : Node<T>? {
        guard var node = head else {
            return nil
        }
        
        while let next = node.next {
            node = next
        }
        return node
    }
    
    public func append (value : T) {
        let newNode = Node(value: value)
        
//        if let lastNode = self.last {
//            lastNode.next = newNode as? Node<Any>
//            newNode.previous = lastNode as? Node<T>
//        } else {
//            head = newNode as? Node<Any>
//        }
        if var h = head {
            while h.next != nil {
                h = h.next!
            }
            h.next = newNode
            
        } else {
            head = newNode
        }
    }
    
    public var count : Int {
        guard let node = head else {
            return 0
        }
        
        var count = 1
        while node.next != nil {
            count += 1
        }
        return count
    }
    
    public func print() -> String {
        var s = "["
//        var node = head
//
//        while node != nil {
//            s += "\(String(describing: node?.value))"
//            node = node!.next
//            if node! != nil {
//                s += ","
//            }
//        }
//        return s + "]"
        var current: Node? = head
               //assign the next instance
        while (current != nil) {
            if let val = current?.value {
                s += "\(val)"
            }
            current = current?.next
            if current != nil {
                s += ","
            }
        }
        return s + "]"
    }
    
}

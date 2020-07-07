//
//  ViewController.swift
//  LinkedList
//
//  Created by Vijay Thota on 6/30/20.
//  Copyright © 2020 Vijay Thota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let l1 = LinkedList<Int>()
        l1.append(value: 1)
        l1.append(value: 2)
        l1.append(value: 3)
        print(l1.print())
        
        let l2 = LinkedList<Int>()
        l2.append(value: 4)
        l2.append(value: 5)
        l2.append(value: 7)
        print(l2.print())
        
        let rev = reverse(n: 123)
        print("Reverse = \(rev)")
    }
    
    func reverse(n: Int) -> Int {
        var reverse = 0
        var val = n
        while (val > 0) {
            reverse = reverse * 10 + val % 10
            val = val/10
        }
        return reverse
    }
}


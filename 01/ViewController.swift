//
//  ViewController.swift
//  01
//
//  Created by D7703_22 on 2019. 4. 25..
//  Copyright © 2019년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lable: UILabel!
    
    @IBOutlet weak var btA: UIButton!
    
    @IBOutlet weak var btB: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btAc(_ sender: Any) {
        lable.text = "버튼 A가 눌러짐"
    }
    
    @IBAction func btBc(_ sender: Any) {
        lable.text = "버튼 B가 눌러짐"
    }
}


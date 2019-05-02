//
//  ViewController.swift
//  tableslide
//
//  Created by D7703_22 on 2019. 5. 2..
//  Copyright © 2019년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLable: UILabel!
    @IBOutlet weak var myslider: UISlider!
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myLable.text = String(myslider.value)
    }


    @IBAction func move(_ sender: Any) {
        myLable.text = String(myslider.value)
    }
}


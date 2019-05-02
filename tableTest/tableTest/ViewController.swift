//
//  ViewController.swift
//  tableTest
//
//  Created by D7703_22 on 2019. 5. 2..
//  Copyright © 2019년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate{
    
    

    @IBOutlet weak var myTableView: UITableView!
    
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView.dataSource = self
        myTableView.delegate = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE",for: indexPath)
        let row = indexPath.row
        let sec = indexPath.section
        
        cell.textLabel?.text = "section" + String(sec)
        cell.detailTextLabel?.text = "row" + String(row)
        
        count = count + 1
        print("\(count)cell..........")
        
        return cell
    }
    
    //UITableViewDelegate
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 100.0
    }
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("Section = \(indexPath.section) "+" row =\(indexPath.row)" )
    }
}


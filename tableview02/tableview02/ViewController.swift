//
//  ViewController.swift
//  tableview02
//
//  Created by D7703_22 on 2019. 5. 2..
//  Copyright © 2019년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var myTableView: UITableView!
    var animals = ["cat","Bird","Whale","Pig","Horse"]
    var year = ["3","4","5","6","6"]
    override func viewDidLoad() {
        myTableView.dataSource = self
    }
    
    //
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    //UITableView DataSource Method
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return animals.count
    }
    //Cell 생성
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //cell 생성, 재활용 풀 사용
        let cell = myTableView.dequeueReusableCell(withIdentifier: "Re", for:indexPath)
        let row = indexPath.row
        print("section : \(indexPath.section) row :\(indexPath.row)")
            
        cell.textLabel?.text = animals[row]
        cell.detailTextLabel?.text = year[row]
        
        //image 넣기
        cell.imageView?.image = UIImage(named: animals[row])
        
        
        return cell
    }
    
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
        if section == 0 {
            return "Animal Farm 1"
        }else{
            return "AnimalFarm2"
        }
    }
    public func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?{
        if section == 0 {
            return "End of Animal Farm 1"
        }else{
            return "End of AnimalFarm2"
        }
    }

}


//
//  ViewController.swift
//  table3
//
//  Created by D7703_22 on 2019. 4. 30..
//  Copyright © 2019년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    
    @IBOutlet weak var myTableView: UITableView!
    var animals = ["cat","dog","pig","bird","whale","cow"]
    var dataAnimal = ["고양이","강아지","돼지","새","돌고래","말"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return animals.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        //cell 재활용을 위해....
        let myCell = myTableView.dequeueReusableCell(withIdentifier:"RE", for:indexPath)
        let myRow = indexPath.row
        myCell.textLabel?.text = animals[myRow]
        myCell.detailTextLabel?.text = dataAnimal[myRow]
        myCell.imageView?.image = UIImage(named: animals[myRow])
        return myCell
    }
    
 //   public func numberOfSections(in tableView: UITableView) -> Int {
 //       return 2
 //   }
    
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section Header \(section)"
    }
    
    public func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Section Footer \(section)"
    }
    
    

}





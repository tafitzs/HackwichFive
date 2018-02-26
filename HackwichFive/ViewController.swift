//
//  ViewController.swift
//  HackwichFive
//
//  Created by Tayler Anne Fitzsimmons on 2/26/18.
//  Copyright © 2018 Tayler Anne Fitzsimmons. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //Define an array variable using an array literal with 5 items of type string
    
    @IBOutlet var tableView: UITableView!
    
    var colorArray = ["Pink", "Red", "Black", "Blue", "Green"]

    override func viewDidLoad() {
    super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
      
        self.tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //set up cell to display items in colorArray
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = colorArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
  
    
}


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
    
    var kapoleiRestaurantsArray = ["Kapolei Kalapawai"]
    var restaurantImageData = [String]()
    

    override func viewDidLoad() {
    super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
        
        //part6
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.object(forKey:"restaurantImages") as! [String]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kapoleiRestaurantsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //set up cell to display items in colorArray
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = kapoleiRestaurantsArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    
    //part 7
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    //part 10
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1 .imagePass = restaurantImageData[imageIndex!]
        }
    }
    
  
    
}


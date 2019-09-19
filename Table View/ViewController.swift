//
//  ViewController.swift
//  Table View
//
//  Created by JIJO G OOMMEN on 31/05/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    var numb = ["123","456","789","10,11,12"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return numb.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let con =  tAbleOut.dequeueReusableCell(withIdentifier: "Cellid") as! CellOne
        con.lAbel.text = numb[indexPath.row]
      //  print(con.lAbel.text)
        
        return con
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    @IBOutlet weak var tAbleOut: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


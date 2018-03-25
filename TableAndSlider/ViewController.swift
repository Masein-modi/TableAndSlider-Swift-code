//
//  ViewController.swift
//  TableAndSlider
//
//  Created by Masein Mody on 3/17/18.
//  Copyright © 2018 Masein Mody. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
  
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var table: UITableView!
    @IBAction func sliderChanged(_ sender: Any) {
        table.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "prototypeCell")
        //text label returns label which is an optional value
        cell.textLabel?.text = String((indexPath.row ) * Int(slider.value * 10))
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


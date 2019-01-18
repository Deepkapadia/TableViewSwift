//
//  ViewController.swift
//  TableViewSwift
//
//  Created by MACOS on 5/29/17.
//  Copyright © 2017 MACOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var arr:[String]? = nil
    var img:[String]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arr = ["apple","iphone","mac","ios","ipad","ipod"]
        img = ["image-1.jpg","image-1.jpg","image-1.jpg","image-1.jpg","image-1.jpg","image-1.jpg"]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arr!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arr?[indexPath.row]
        cell.imageView?.image = UIImage(named: (img?[indexPath.row])!)
        return cell
    }
    
    

}


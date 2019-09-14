//
//  ViewController.swift
//  ToDoList iOS
//
//  Created by TN007 on 9/14/19.
//  Copyright © 2019 Tarabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addToDo(_ sender: RoundButton) {
        DataStorage.add(newToDo: "T##String  dddd")
        tableView.reloadData()
    }
    
    @IBAction func clearToDoList(_ sender: RoundButton) {
        DataStorage.removeAll()
        tableView.reloadData()
    }
    
    
    // TableView setup
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataStorage.length()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = DataStorage.dataStorageArray[indexPath.row]
        
        return cell
    }
    
    


}


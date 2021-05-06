//
//  ViewController.swift
//  TableView Demo
//
//  Created by Micah Burnside on 5/6/21.
//

import UIKit

class TableViewDemoViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    let names = [
        "John Smith",
        "Jason Smith",
        "Dan Smith",
        "Mary Smith"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension TableViewDemoViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me")
    }
}

extension TableViewDemoViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Returns all items in "names" array
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewDemoTableViewCell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
    
}

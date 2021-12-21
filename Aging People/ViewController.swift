//
//  ViewController.swift
//  Aging People
//
//  Created by admin on 21/12/2021.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var tableView: UITableView!
    let names = ["manar","kholod","nora","asma","hala","somaiah","haifa","bashair","manal","warda","nawal","mam"]
    let age = [0]
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }}
    extension ViewController : UITableViewDataSource  {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return names.count
        }
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = names[indexPath.row]
            cell.detailTextLabel?.text = "\(Int.random(in: 5...95) ) years old"
                 return cell
        }
}
  




//
//  ViewController.swift
//  checklists
//
//  Created by Tomiris Negmatova on 15/04/22.
//

import UIKit

class MainViewController: UITableViewController {
    let groups: [ChecklistGroup] = [
        ChecklistGroup(title: "Birthday", imageName: "Birthdays", items: [
            ChecklistItem(isChecked: true, name: "qwerty")
        ]),
        ChecklistGroup(title: "Groceries", imageName: "Groceries", items: [
            ChecklistItem(isChecked: true, name: "qwerty")
        ]),
        ChecklistGroup(title: "To Do", imageName: "Inbox", items: [
            ChecklistItem(isChecked: true, name: "qwerty")
        ]),
        ChecklistGroup(title: "Chores", imageName: "Chores", items: [
            ChecklistItem(isChecked: true, name: "qwerty")
        ])
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)
    -> Int {
    return groups.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let group = groups[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! GroupTableViewCell
        cell.titleLabel.text = group.title
        cell.iconView.image = UIImage(named: group.imageName)
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "MainToGroupDetails"{
//            print("Передаём информацию")
//            if let vc = segue.destination as? GroupDetailsTableViewController{
//                if let indexPath = tableView.indexPathForSelectedRow{
//                    vc.items = groups[indexPath.row].items
//                }
//
//            }
//        }
//    }
        if segue.identifier == "MainToGroupDetails",
           let vc = segue.destination as? GroupDetailsTableViewController,
           let indexPath = tableView.indexPathForSelectedRow{
            vc.title = groups[indexPath.row].title
            vc.items = groups[indexPath.row].items
        }
                
    }
}


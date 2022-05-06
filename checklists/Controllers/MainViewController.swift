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
            ChecklistItem(isChecked: true, name: "Hoosniya", remindMe: true, dueDate: Date()), ChecklistItem(isChecked: true, name: "Shabnam", remindMe: true),ChecklistItem(isChecked: true, name: "Zamira", remindMe: true, dueDate: Date()), ChecklistItem(isChecked: true, name: "Mavzuna", remindMe: true, dueDate: Date()), ChecklistItem(isChecked: true, name: "Pariso", remindMe: true)
        ]),
        ChecklistGroup(title: "Groceries", imageName: "Groceries", items: [
            ChecklistItem(isChecked: false, name: "Milk", remindMe: false),ChecklistItem(isChecked: true, name: "Cheese", remindMe: true, dueDate: Date()), ChecklistItem(isChecked: false, name: "Water", remindMe: true), ChecklistItem(isChecked: true, name: "Bread", remindMe: false)
        ]),
        ChecklistGroup(title: "To Do", imageName: "Inbox", items: [
            ChecklistItem(isChecked: true, name: "Homework", remindMe: true), ChecklistItem(isChecked: true, name: "Write a report", remindMe: false), ChecklistItem(isChecked: false, name: "Cut hair", remindMe: true), ChecklistItem(isChecked: false, name: "Bathe the cat", remindMe: false)
        ]),
        ChecklistGroup(title: "Chores", imageName: "Chores", items: [])
//            ChecklistItem(isChecked: true, name: "Wash the floors", remindMe: false),ChecklistItem(isChecked: false, name: "Wash the windows", remindMe: true), ChecklistItem(isChecked: true, name: "Vacuum", remindMe: false), ChecklistItem(isChecked: true, name: "Wipe the duct", remindMe: false)
//        ])
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
        cell.countLabel.text = group.getRemainigs()
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


//
//  checklists.swift
//  checklists
//
//  Created by Tomiris Negmatova on 20/04/22.
//

import Foundation

struct ChecklistGroup {
    let title: String
    let imageName: String
    var items: [ChecklistItem]
    
    func getRemainigs() -> String{
        
        // 1. All Done
        var isAllDone = true
        for item in items {
            if item.isChecked == false{
                isAllDone = false
            }
        }
        
        
        // 2. No items
        if items.isEmpty{
            return "(No items)"
        }else if !isAllDone, items.count != 0{
            return String(items.count) + " " + "Remaining"
        }else{
            if isAllDone{
                return "All Done"
            }else{
                return "Incorrect data"
            }
        }
    }
}



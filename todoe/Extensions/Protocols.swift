//
//  Protocols.swift
//  todoe
//
//  Created by yash Shelatkar on 7/7/19.
//  Copyright © 2019 yash Shelatkar. All rights reserved.
//

import Foundation

protocol TOHeaderDelegate {
    func openAddItemPopUp()
    
    
}

protocol TONewItemDelegate {
    func addItemToList()
}

protocol TOListCellDelegate {
    func toggleToDo()
}

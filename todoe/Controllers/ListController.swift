//
//  ListController.swift
//  todoe
//
//  Created by yash Shelatkar on 5/7/19.
//  Copyright © 2019 yash Shelatkar. All rights reserved.
//

import UIKit

class ListController: UIViewController,TOHeaderDelegate,TONewItemDelegate {
    
    
    func openAddItemPopUp() {
        print("Trying to add Item Popup from header")
    }
    
    func addItemToList() {
        print("Trying to add item to list")
    }

    let header = TOHeaderView(title: "Stuff to get Done", subtitle: "4 left")
    let popUp = ToNewItemPopUp()
    var keyboardHeight:CGFloat = 333
    
    override func viewDidAppear(_ animated: Bool) {
         NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardDidShowNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification: Notification) {
        let keyboardSize = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.size
        self.keyboardHeight = keyboardSize.height
        
//        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.85, initialSpringVelocity: 2, options: .curveEaseIn, animations: {
//            self.popUp.transform = CGAffineTransform(translationX: 0, y: -self.keyboardHeight)
//
//        }, completion: nil)
    }
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(header)
        header.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        header.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        header.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        header.heightAnchor.constraint(equalToConstant:  120).isActive = true
        
        view.addSubview(popUp)
        popUp.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        popUp.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
        popUp.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20).isActive = true
        popUp.heightAnchor.constraint(equalToConstant:  80).isActive = true
        
        popUp.textField.delegate = self
        
        header.delegate = self
        
    }
    

 

}

extension ListController: UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        UIView.animate(withDuration: 0.3, delay: 0.1, usingSpringWithDamping: 0.85, initialSpringVelocity: 2, options: .curveEaseIn, animations: {
            self.popUp.transform = CGAffineTransform(translationX: 0, y: -self.keyboardHeight)
            
        }, completion: nil)
    }
}

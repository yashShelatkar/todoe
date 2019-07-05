//
//  ViewController.swift
//  todoe
//
//  Created by yash Shelatkar on 5/7/19.
//  Copyright © 2019 yash Shelatkar. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {

    
    let bg: UIView = {
        let view = TOGradient()
        //view.backgroundColor = .cyan
        view.layer.cornerRadius = 24
        return view
    }()
    
   let titleLabel = TOLabel(title: "GET IT DONE", color: .white, size: 24, textAllign: .center)
   let infoLabel: UILabel = {
        let label = TOLabel(title: "Welcome GET IT DONE IS. \nA TODO LIST", color: .white, size: 14, textAllign: .center)
        label.numberOfLines = 2
        return label
    }()
   
    let nextButton = TOButton(title: "START WINING")
    
    let copyRightLabel = TOLabel(title: "© 2019 yashshelatkar", color: .greyOne, size: 14, textAllign: .center)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
  //      titleLabel.text = "GET IT DONE"
  //      titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(bg)
        bg.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        bg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        bg.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        bg.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        
        bg.addSubview(titleLabel)
        titleLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: bg.topAnchor,constant:60).isActive = true
        
        bg.addSubview(infoLabel)
        infoLabel.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        infoLabel.centerYAnchor.constraint(equalTo: bg.centerYAnchor).isActive = true
        infoLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        infoLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        bg.addSubview(nextButton)
        nextButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        nextButton.centerXAnchor.constraint(equalTo: bg.centerXAnchor).isActive = true
        nextButton.bottomAnchor.constraint(equalTo: bg.bottomAnchor, constant: -60).isActive = true
        
        
        view.addSubview(copyRightLabel)
        copyRightLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        copyRightLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        copyRightLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        copyRightLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
    }


}


// ©

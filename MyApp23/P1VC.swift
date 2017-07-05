//
//  P1VC.swift
//  MyApp23
//
//  Created by user on 2017/7/5.
//  Copyright © 2017年 user. All rights reserved.
//

import UIKit

class P1VC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
        title = "P1"
        navigationController?.navigationBar.barTintColor = UIColor.green
        
        navigationController?.navigationBar.isTranslucent = false
        
        //left button
        let backBtn = UIBarButtonItem(image: UIImage(named:"back6"), style: .plain, target: self, action: #selector(back))
        
        
        navigationItem.leftBarButtonItem = backBtn
        
        //right button
        let settingbtn = UIBarButtonItem(title: "Setting", style: .plain, target: self, action: #selector(setting))
        
        navigationItem.rightBarButtonItem = settingbtn
        
    }
    
    @objc func back(){
        navigationController?.popViewController(animated: true)
    }
    @objc func setting(){
        navigationController?.pushViewController(P2VC(), animated: true)
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

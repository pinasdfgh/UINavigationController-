//
//  ViewController.swift
//  MyApp23
//
//  Created by user on 2017/7/5.
//  Copyright © 2017年 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //針對navigation bar 的相關設定
        title = "1234"
        navigationController?.navigationBar.barTintColor = UIColor.white
        
        navigationController?.navigationBar.isTranslucent = false
        
        //left button
        let backBtn = UIBarButtonItem(image: UIImage(named:"back6"), style: .plain, target: self, action: #selector(back))
        
        
        navigationItem.leftBarButtonItem = backBtn
        
        //right button
        let settingbtn = UIBarButtonItem(title: "Setting", style: .plain, target: self, action: #selector(setting))
        
        navigationItem.rightBarButtonItem = settingbtn
        
        // 以下處理主要內容
        let p1Button = UIButton(frame: CGRect(x: 40, y: 40, width: 160, height: 40))
        p1Button.setTitle("go p1", for: .normal)
        p1Button.backgroundColor = UIColor.blue
        p1Button.addTarget(self, action: #selector(gop1), for: .touchUpInside)
        
        view.addSubview(p1Button)
        
        let p2Button = UIButton(frame: CGRect(x: 40, y: 90, width: 160, height: 40))
        p2Button.setTitle("go p2", for: .normal)
        p2Button.backgroundColor = UIColor.blue
        p2Button.addTarget(self, action: #selector(gop2), for: .touchUpInside)
        
        view.addSubview(p2Button)
        
    }
    
    @objc func back(){
        print("back")
    }
    @objc func setting(){
         navigationController?.pushViewController(P2VC(), animated: true)
    }
    @objc func gop1(){
        navigationController?.pushViewController(P1VC(), animated: true)
        
    }
    @objc func gop2(){
        navigationController?.pushViewController(P2VC(), animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


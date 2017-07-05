//
//  P2VC.swift
//  MyApp23
//
//  Created by user on 2017/7/5.
//  Copyright © 2017年 user. All rights reserved.
//

import UIKit

class P2VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Setting"

        let hButton = UIButton(frame: CGRect(x: 40, y: 40, width: 160, height: 40))
        hButton.setTitle("go home", for: .normal)
        hButton.backgroundColor = UIColor.blue
        hButton.addTarget(self, action: #selector(gohome), for: .touchUpInside)
        
        view.addSubview(hButton)
    }
    
    @objc func gohome(){
        navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

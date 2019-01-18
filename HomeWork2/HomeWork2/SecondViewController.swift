//
//  SecondViewController.swift
//  HomeWork2
//
//  Created by Bernice on 2019/1/17.
//  Copyright © 2019年 Bernice. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
    let button = UIButton(frame:CGRect(x:10, y:150, width:100, height:30))
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置背景色
        self.view.backgroundColor = UIColor.yellow
        
        //添加button并自定义文字
        let button = UIButton(frame:CGRect(x:150, y:150, width:100, height:30))
        button.backgroundColor = UIColor.red
        self.view.addSubview(button)
        let back = NSLocalizedString("Back", comment: "default");
        button.setTitle(back,for:UIControl.State.normal)
        button.addTarget(self, action: #selector(SecondViewController.gotoIndexPage), for: UIControl.Event.touchUpInside)
    }
    
    @objc func gotoIndexPage(){
        self.dismiss(animated: true, completion: nil)
    }
    
    
}


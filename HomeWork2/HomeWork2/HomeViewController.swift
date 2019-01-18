//
//  HomeViewController.swift
//  HomeWork2
//
//  Created by Bernice on 2019/1/16.
//  Copyright © 2019年 Bernice. All rights reserved.
//


import UIKit

class HomeViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置背景色
        self.view.backgroundColor = UIColor.groupTableViewBackground
        UINavigationBar.appearance().barTintColor = UIColor.white
        // 设置标题
        let title =  NSLocalizedString("HomePage", comment: "default");
        self.navigationItem.title = title
        
    }    
}

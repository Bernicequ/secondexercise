//
//  ViewController.swift
//  HomeWork2
//
//  Created by Bernice on 2019/1/15.
//  Copyright © 2019年 Bernice. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    //创建TableView
    var tableView = UITableView()
    var  dataArr = [
        ("A", [("钱包","Wallet.png")]),
        ("B", [("收藏","Favorites.png"),("相册","Favorites.png"),("卡包","CardPackage.png"),("表情","Expressions.png")]),
        ("C", [("设置","Settings.png")])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 初始化TableView
        tableView = UITableView(frame: UIScreen.main.bounds,style:UITableView.Style.grouped)
        tableView.dataSource = self
        tableView.delegate = self
        self.view.addSubview(tableView)
        
        // 设置Navigation bar背景色
        self.view.backgroundColor = UIColor.groupTableViewBackground
        UINavigationBar.appearance().barTintColor = UIColor.white
        navigationController?.navigationBar.barStyle = UIBarStyle.default
        // 设置顶部导航栏标题
        self.navigationItem.title = getDeviceLocale(key: "UserInfo");
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        //添加button并自定义文字
        let rightButton = UIBarButtonItem(title:getDeviceLocale(key: "Done"), style:UIBarButtonItem.Style.plain, target:self,action:#selector(gotoIndexPage))
        self.navigationItem.rightBarButtonItem = rightButton
        
      //  let lans = "zh-Hans";
      //  UserDefaults.standard.set(lans, forKey: "AppleLanguages");
      //  LocalizationTool.shareInstance.setLanguage(langeuage: languege)
        
        
    }
    
    //给导航按钮添加点击事件
    @objc func gotoIndexPage(){
        self.present(SecondViewController(), animated: true, completion: nil)
    }
            

    //给一个tableViewf 分三个区域
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataArr.count
    }
    
    //各个区域的行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return dataArr[section].1.count
    }
    
    //加载不同的cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell!
        cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        let image = UIImage(named: dataArr[indexPath.section].1[indexPath.row].1)
        cell.imageView?.image = image
        cell.textLabel?.text = dataArr[indexPath.section].1[indexPath.row].0
        
        return cell
        
    }

    //cell高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50;
    }

    //cell添加点击事件
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(FirstViewController(), animated: true);
    }
    
    func getDeviceLocale(key: String) -> String
    {
        // 获取本地化字符串，字符串根据手机系统语言自动切换
        let str = NSLocalizedString(key, comment: "default")
        return str
    }

}


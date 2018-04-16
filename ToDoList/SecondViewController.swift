//
//  SecondViewController.swift
//  ToDoList
//
//  Created by 黃筱珮 on 2018/4/16.
//  Copyright © 2018年 siaopei. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    //更改狀態列為白色
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBOutlet weak var myTextInput: UITextField!
    @IBOutlet weak var myButton: UIButton!
    @IBAction func buttonPressed(_ sender: UIButton) {
        //回到上一頁（self.可省略）
        self.tabBarController?.selectedIndex = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //一進入畫面時，讓input變成焦點，鍵盤會跑出來
        myTextInput.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


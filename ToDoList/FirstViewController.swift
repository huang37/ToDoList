//
//  FirstViewController.swift
//  ToDoList
//
//  Created by 黃筱珮 on 2018/4/16.
//  Copyright © 2018年 siaopei. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //更改狀態列為白色
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    @IBOutlet weak var myTableView: UITableView!
    
    var toDos = UserDefaults.standard.stringArray(forKey: "todos") ?? [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
        //將資料從手機取出來顯示
//        if let loadedTodos = UserDefaults.standard.stringArray(forKey: "todos") {
//            toDos = loadedTodos
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = toDos[indexPath.row]
        //更改cell文字及顏色
        cell.textLabel?.textColor = .white
        cell.textLabel?.font = UIFont(name: "arial", size: 24)
        return cell
    }
}


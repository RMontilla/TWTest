//
//  DashBoardViewController.swift
//  TeamworkTest
//
//  Created by Rafael Montilla on 5/29/18.
//  Copyright © 2018 Teamwork. All rights reserved.
//

import Foundation
import UIKit
import SVProgressHUD

class DashBoardViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    var projects : [Project] = []
    let kProjectCellIdentifier = "ProjectTableViewCell"
    
    @IBOutlet weak var projectTableView: UITableView!
    
    @IBOutlet weak var containerView: UIView!
    override func viewDidLoad() {
        self.initConfig()
        self.refreshTasks()
    }
    
    func initConfig (){
        let cellNib = UINib(nibName: kProjectCellIdentifier, bundle: nil)
        self.projectTableView.register(cellNib, forCellReuseIdentifier: kProjectCellIdentifier)
        
        self.drawShadow(view: self.containerView)
    }
    
    func refreshTasks() {
        SVProgressHUD.show()
        TWLoginStore.sharedInstance.fetchProjects { projects , error in
            SVProgressHUD.dismiss()
            if (error != nil){
            } else {
                if (projects != nil && projects!.count > 0){
                    self.projects = projects!;
                    self.projectTableView.reloadData()
                }
            }
        }
    }
    
    // MARK: UITableViewDatasource methods
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: kProjectCellIdentifier) as! ProjectTableViewCell
        let project = self.projects[indexPath.row]
        cell.configCell(project: project)
        return cell;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30;
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.projects.count;
    }
    
    
    
}

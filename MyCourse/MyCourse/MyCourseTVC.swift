//
//  MyCourseTVC.swift
//  MyCourse
//
//  Created by Wu, Meng Ju on 2020/3/24.
//  Copyright © 2020 Pitt. All rights reserved.
//

import UIKit

class MyCourseTVC: UITableViewController {
    
    var courses = [String]()
    var identities = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        courses = ["Course1", "Course2", "Course3", "Course4"]
        identities = ["c1", "c2", "c3", "c4"]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = courses[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vcName = identities[indexPath.row]
        let viewController = storyboard?.instantiateViewController(withIdentifier: vcName)
        self.navigationController?.pushViewController(viewController!, animated: true)
    }
    
    
}

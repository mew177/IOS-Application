//
//  ViewController.swift
//  MyCourse
//
//  Created by Wu, Meng Ju on 2020/3/24.
//  Copyright © 2020 Pitt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sideMenuView: UIView!
    @IBOutlet weak var sideMenuLeadingConst: NSLayoutConstraint!
    var menuShowing = true
    
    @IBOutlet weak var profileLeadingConst: NSLayoutConstraint!
    var profileShowing = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sideMenuView.layer.shadowOpacity = 1
        sideMenuView.layer.shadowRadius = 6
        
        // sidemenu, profile const initialization
        slideProfile()
        slideMenu()
        
    }
    
    @IBAction func slideProfile() {
        if menuShowing {
            if profileShowing {
                profileLeadingConst.constant += self.view.frame.width * (-1)
                
            } else {
                profileLeadingConst.constant += self.view.frame.width
            }
            
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
            profileShowing = !profileShowing
            
        } else { }
    }

    @IBAction func slideMenu() {
        if profileShowing {
            slideProfile()
        }
        
        if menuShowing {
            sideMenuLeadingConst.constant += self.view.frame.width * (-1)
            sideMenuView.backgroundColor = UIColor.black.withAlphaComponent(0.0)
            
        } else {
            sideMenuLeadingConst.constant += self.view.frame.width
            sideMenuView.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        }
    
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        })
        
        menuShowing = !menuShowing
    }
    
}


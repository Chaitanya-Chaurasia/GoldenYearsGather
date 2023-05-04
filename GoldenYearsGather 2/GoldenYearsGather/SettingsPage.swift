//
//  SettingsPage.swift
//  GoldenYearsGather
//
//  Created by FSE394 on 4/27/23.
//

import UIKit

class SettingsPage: UIViewController {

    @IBOutlet var reportLabel: UIButton!
    @IBOutlet var dateLabelSwitch: UILabel!
    @IBOutlet var qOfDayLabel: UILabel!
    @IBOutlet var anonyModeLabel: UILabel!
    @IBOutlet var editProfileButton: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "settingsPage.jpeg")!)
        self.editProfileButton.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 16)
        self.editProfileButton.layer.cornerRadius = 10
        self.anonyModeLabel.layer.masksToBounds = true
        self.anonyModeLabel.layer.cornerRadius = 10
        self.dateLabelSwitch.layer.masksToBounds = true
        self.dateLabelSwitch.layer.cornerRadius = 10
        self.qOfDayLabel.layer.masksToBounds = true
        self.qOfDayLabel.layer.cornerRadius = 10
        self.anonyModeLabel.font = UIFont(name: "Avenir-Heavy", size: 16)
        reportLabel.layer.cornerRadius = 10
        self.qOfDayLabel.font = UIFont(name: "Avenir-Heavy", size: 16)
        self.dateLabelSwitch.font = UIFont(name: "Avenir-Heavy", size: 16)
        self.reportLabel.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 16)
        
        
        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

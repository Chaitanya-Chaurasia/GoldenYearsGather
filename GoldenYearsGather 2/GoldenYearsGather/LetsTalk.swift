//
//  LetsTalk.swift
//  GoldenYearsGather
//
//  Created by FSE394 on 4/28/23.
//

import UIKit

class LetsTalk: UIViewController {

    @IBOutlet var helpButton: UIButton!
    @IBOutlet var currentButton: UIButton!
    @IBOutlet var meetButton: UIButton!
    @IBOutlet var headerLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bgHomePage.jpeg")!)
        
        self.headerLabel.font = UIFont(name: "Avenir-Heavy", size: 21)
//        self.helpButton.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 24)
//        self.currentButton.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 24)
//        self.meetButton.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 24)
        self.meetButton.layer.masksToBounds = true
        self.helpButton.layer.masksToBounds = true
        self.currentButton.layer.masksToBounds = true
        
        self.meetButton.layer.cornerRadius = 12
        self.currentButton.layer.cornerRadius = 12
        self.helpButton.layer.cornerRadius = 12
        

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

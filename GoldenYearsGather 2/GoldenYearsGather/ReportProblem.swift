//
//  ReportProblem.swift
//  GoldenYearsGather
//
//  Created by FSE394 on 4/27/23.
//

import UIKit

class ReportProblem: UIViewController {
    
    @IBOutlet var descrField: UITextView!
    
    
    @IBOutlet var probField: UITextView!
    
    @IBOutlet var submitButton: UIButton!
    @IBOutlet var descrLabel: UITextView!
    @IBOutlet var problemLabel: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "settingsPage.jpeg")!)
        
        self.descrLabel.font = UIFont(name: "Avenir-Heavy", size: 16)
        self.problemLabel.font = UIFont(name: "Avenir-Heavy", size: 16)
        self.descrField.layer.masksToBounds = true
        self.probField.layer.masksToBounds = true
        self.probField.layer.cornerRadius = 10
        self.descrField.layer.cornerRadius = 10
        
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

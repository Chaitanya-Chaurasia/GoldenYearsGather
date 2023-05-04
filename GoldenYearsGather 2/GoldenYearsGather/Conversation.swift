//
//  Conversation.swift
//  GoldenYearsGather
//
//  Created by FSE394 on 4/28/23.
//

import UIKit

class Conversation: UIViewController {
    
    
    @IBOutlet var name2Label: UIButton!
    @IBOutlet var name1Label: UIButton!
    @IBOutlet var headerLabel: UILabel!
    
    
    @IBOutlet var startButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bgHomePage.jpeg")!)
        self.headerLabel.font = UIFont(name: "Avenir-Heavy", size: 21)
        self.name1Label.layer.cornerRadius = 10
        self.name2Label.layer.cornerRadius = 10
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

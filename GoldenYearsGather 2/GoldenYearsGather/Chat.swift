//
//  Chat.swift
//  GoldenYearsGather
//
//  Created by FSE394 on 4/28/23.
//

import UIKit

class Chat: UIViewController {
    
    
    @IBOutlet var typeField: UITextField!
    
    @IBOutlet var headerLabel: UILabel!
    
    
    @IBOutlet var responseField: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bgHomePage.webp")!)
        
        self.headerLabel.font = UIFont(name: "Avenir-Heavy", size: 24)
        self.typeField.layer.masksToBounds = true
        self.typeField.layer.cornerRadius = 10
        self.responseField.layer.cornerRadius = 10
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

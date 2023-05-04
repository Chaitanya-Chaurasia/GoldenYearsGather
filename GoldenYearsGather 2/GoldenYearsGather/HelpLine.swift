//
//  HelpLine.swift
//  GoldenYearsGather
//
//  Created by FSE394 on 4/28/23.
//

import UIKit

class HelpLine: UIViewController {

    @IBOutlet var headerLabel: UILabel!
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var label5: UILabel!
    @IBOutlet var label7: UILabel!
    @IBOutlet var label6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "helpline.jpeg")!)
        self.headerLabel.textColor = .black
        self.headerLabel.font = UIFont(name: "Avenir-Heavy", size: 24)
        
        self.label1.textColor = .black
        self.label2.textColor = .black
        self.label3.textColor = .black
        self.label4.textColor = .black
        self.label5.textColor = .black
        self.label6.textColor = .black
        self.label7.textColor = .black
        
        self.label1.font = UIFont(name: "Avenir-Heavy", size: 17)
        self.label2.font = UIFont(name: "Avenir-Heavy", size: 17)
        self.label3.font = UIFont(name: "Avenir-Heavy", size: 17)
        self.label4.font = UIFont(name: "Avenir-Heavy", size: 17)
        self.label5.font = UIFont(name: "Avenir-Heavy", size: 17)
        self.label6.font = UIFont(name: "Avenir-Heavy", size: 17)
        self.label7.font = UIFont(name: "Avenir-Heavy", size: 17)
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

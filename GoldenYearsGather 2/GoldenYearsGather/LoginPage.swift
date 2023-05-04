//
//  LoginPage.swiftUICollectionViewController
//  GoldenYearsGather
//
//  Created by FSE394 on 4/27/23.
//

import UIKit
import FirebaseDatabase

var nameofUser: String = "ChaiT"

class LoginPage: UIViewController {
    
    private let database1 = Database.database().reference()
    
    
    @IBOutlet var mailLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var passwordLabel: UILabel!
    @IBOutlet var usernameLabel: UILabel!
    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var saveButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "settingsPage.jpeg")!)

        self.usernameLabel.font = UIFont(name: "Avenir-Heavy", size: 16)
        self.passwordLabel.font = UIFont(name: "Avenir-Heavy", size: 16)
        self.mailLabel.font = UIFont(name: "Avenir-Heavy", size: 16)
        self.nameLabel.font = UIFont(name: "Avenir-Heavy", size: 16)
        
    }
    
    @IBAction func changesSaved(_ sender: UIButton) {
        
        let name: String? = self.nameTextField.text!
        let password: String? = self.passwordTextField.text!
        let email: String? = self.emailTextField.text!
        let username: String? = self.userTextField.text!
        
        let object1: [String: String?] = [
            "name": name,
            "username": username,
            "email": email,
            "password": password
        ]
        
        database1.child("Users").child(name!).setValue(object1)
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

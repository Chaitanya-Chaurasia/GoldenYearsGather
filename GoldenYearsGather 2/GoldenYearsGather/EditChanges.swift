//
//  EditChanges.swift
//  GoldenYearsGather
//
//  Created by FSE394 on 4/27/23.
//
// This is the view controller for LoginPage, and the one for LoginPage is the one for EditChanges. I added the wrong files, and somehow am not able to change the file names wothout errors.


import UIKit
import FirebaseDatabase

class EditChanges: UIViewController {

    @IBOutlet var usernameLabel: UILabel!
    @IBOutlet var logInButton: UIButton!
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var usernameField: UITextField!
    @IBOutlet var userTextField: UITextField!
    
    @IBOutlet var passwordField: UITextField!
    
    @IBOutlet var passwdLabel: UILabel!
    
    @IBOutlet var guestButton: UIButton!
    @IBOutlet var passwordLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
    private let database = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "loginPage.jpeg")!)
        self.nameLabel.font = UIFont(name: "Avenir-Heavy", size: 24)
        self.nameLabel.textColor = .darkText
        self.usernameLabel.font = UIFont(name: "Avenir-Heavy", size: 18)
        self.passwordLabel.font = UIFont(name: "Avenir-Heavy", size: 18)
        self.logInButton.layer.cornerRadius = 8
        self.passwordField.layer.masksToBounds = true
        self.usernameField.layer.masksToBounds = true
        self.passwordField.layer.cornerRadius = 22
        self.usernameField.layer.cornerRadius = 22
        self.passwdLabel.font = UIFont(name: "Avenir-Heavy", size: 14)
        self.passwdLabel.textColor = .red
        self.guestButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    var successLogin: Bool = false
//
    @IBAction func checkUserInfo(_ sender: Any) {
        
        //retrieveUserName()
        //retrievePassword()
        //print(usernameField.text!)
        //print(passwordField.text!)
        
        self.database.child("Username").observe(.value, with: {(snapshot) in
            if let flag = snapshot.value as? String {
                if (flag == self.usernameField.text){
                    self.database.child("Password").observe(.value, with: {(snapshot) in
                        if let flag = snapshot.value as? String {
                            if (flag == self.passwordField.text){
                                self.passwdLabel.text = "Valid Credentials. Logging in...!"
                                self.passwdLabel.textColor = .green
                                self.passwdLabel.textAlignment = .center
                                self.successLogin = true
                            }}
                    })
                }
                else if self.successLogin == false{
                    self.passwdLabel.text = "Incorrect Details"
                    self.passwdLabel.textAlignment = .center
                }
            }
        })
        
        
    }

    override func shouldPerformSegue(withIdentifier identifier: String?, sender: Any?) -> Bool {
        
        if let ident = identifier{
            if ident == "loginSuccess"{
                if successLogin != true{
                    return false
                }
            }
        }
        return true
    }
    //    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */

}

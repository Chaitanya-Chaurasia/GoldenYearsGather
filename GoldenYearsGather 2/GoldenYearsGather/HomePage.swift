//
//  HomePage.swift
//  GoldenYearsGather
//
//  Created by FSE394 on 4/27/23.
//

import UIKit
import FirebaseDatabase

class HomePage: UIViewController {
    
    
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var quoteLabel: UILabel!
    @IBOutlet var helpLineLabel: UIButton!
    
    @IBOutlet var signInButton: UIButton!
    @IBOutlet var quoteOfDayLabel: UILabel!
    @IBOutlet var letsTalkLabel: UIButton!
    @IBOutlet var appName: UILabel!
    
    private let database = Database.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bgHomePage.jpeg")!)
        
        self.dateLabel.font = UIFont(name: "Avenir-Heavy", size: 13)
        self.appName.font = UIFont(name: "EuphemiaUCAS-Bold", size: 26)
        self.quoteLabel.font = UIFont(name: "Avenir-Heavy", size: 16)
        self.letsTalkLabel.backgroundColor = .black
        self.letsTalkLabel.layer.cornerRadius = 10
        self.helpLineLabel.layer.cornerRadius = 10
        self.helpLineLabel.backgroundColor = .black
        
//
        //self.navigationController?.navigationBar.isUserInteractionEnabled = false
        self.navigationItem.setHidesBackButton(true, animated: false)
        
//        self.letsTalkLabel.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 16)
//        self.helpLineLabel.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 16)
        displayTime(dateLabel)
        loadQuotes()
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
    
    func randomizeQuote(){
        let i = Int.random(in: 1...15)
        database.child("Quote\(i)").observe(.value, with: {(snapshot) in
            if let quote = snapshot.value as? String {
                self.quoteLabel.text = quote
            }
        })
    }
    
    func loadQuotes(){
        
        let object1: String =
            "Caring about others, running the risk of feeling, and leaving an impact on people, brings happiness. – Harold Kushner"
        let object2: String =
        "Nurturing is not complex. It’s merely being tuned in to the thing or person before you and offering small gestures toward what it needs at that time. – Mary Anne Radmacher"
        let object3: String =
            "The simple act of caring is heroic. – Edward Albert"
        let object4: String = "The closest thing to being cared for is to care for someone else. – Carson McCullers"
        let object5: String =
            "One person caring about another represents life’s most significant value. – Jim Rohn"
        let object6: String =
            "Too often we underestimate the power of a touch, a smile, a kind word, a listening ear, an honest compliment, or the smallest act of caring, all of which have the potential to turn a life around. – Leo Buscaglia"
        let object7: String =
            "Even though people experiencing dementia become unable to recount what has just happened, they still go through the experience—even without recall."
        let object8: String =
        "The psychological present lasts about three seconds. We experience the present even when we have dementia. The emotional pain caused by cruel treatment or unkind talk occurs during that period."
        let object9: String =
        "The moods and actions of people with dementia are expressions of what they have experienced, whether they can still use language and recall, or not. ― Judy Cornish"
        let object10: String =
            "We can all make a difference in the lives of others in need because it is the most simple of gestures that make the most significant of differences.― Miya Yamanouchi"
        let object11: String =
            "No one cares until someone cares; be that one! ― Ken Poirot"
        let object12: String =
            "We must not just be recipients but givers! We must not just be keepers but donors! Giving brings relief and sharing enlightens the heart. ― Ernest Agyemang Yeboah"
        let object13: String =
            "If you shift your focus from yourself to others, extend your concern to others, and cultivate the thought of caring for the well being of others, then this will have the immediate effect of opening up your life and helping you to reach out.” ― Dalai Lama XIV"
        let object14: String =
            "The phrase ‘Love one another’ is so wise. By loving one another, we invest in each other and ourselves. ― Peggi Speers"
        let object15: String = "I love you, but I have to love me more. – Peggi Speers"
        
        //let object16: String = "I love yo"

        
        database.child("Quote1").setValue(object1)
        database.child("Quote2").setValue(object2)
        database.child("Quote3").setValue(object3)
        database.child("Quote4").setValue(object4)
        database.child("Quote5").setValue(object5)
        database.child("Quote6").setValue(object6)
        database.child("Quote7").setValue(object7)
        database.child("Quote8").setValue(object8)
        database.child("Quote9").setValue(object9)
        database.child("Quote10").setValue(object10)
        database.child("Quote11").setValue(object11)
        database.child("Quote12").setValue(object12)
        database.child("Quote13").setValue(object13)
        database.child("Quote14").setValue(object14)
        database.child("Quote15").setValue(object15)
        randomizeQuote()
    }

func displayTime(_ sender: UILabel){
    
    let currentDateTime = Date()
    // get the user's calendar
    let userCalendar = Calendar.current
    // choose which date and time components are needed
    let requestedComponents: Set<Calendar.Component> = [
        .year,
        .month,
        .day,
        .hour,
        .minute,
        .second
    ]
    // get the components
    let dateTimeComponents = userCalendar.dateComponents(requestedComponents, from: currentDateTime)
    // now the components are available
    
    let dateAndTime: String? =
    "\(dateTimeComponents.hour!):\(dateTimeComponents.minute!)PM"
    
    sender.text = dateAndTime
}

}

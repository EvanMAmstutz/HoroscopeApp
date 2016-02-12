//
//  ViewController.swift
//  Assignment1
//
//  Created by Evan Amstutz on 9/1/15.
//  Copyright © 2015 Evan Amstutz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //object declaration
    @IBOutlet weak var date: UIDatePicker!
    @IBOutlet var picture: UIImageView!
    @IBOutlet var horoscopeAnswer: UITextView!
    
    //variable declaration
    var day: Int!
    var month: Int!
    var dateString: String!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //function of button
    @IBAction func submit(sender: AnyObject) {
        datePickerDataExtraction(date)
        horoscope(day, month: month)
    }

    //gets data from the date picker
    func datePickerDataExtraction(datePicker:UIDatePicker) {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd"
        day = Int(dateFormatter.stringFromDate(datePicker.date))
        dateFormatter.dateFormat = "MM"
        month = Int(dateFormatter.stringFromDate(datePicker.date))
        
        
        
    }
    
    //All information and pictures were taken from  http://www.dailyrecord.com/story/life/2015/08/27/todays-horoscope-aug-27/30611067/ (Links to an external site.)
    func horoscope(day:Int, month:Int){
        if (month == 3 && day >= 21) || (month == 4 && day <= 19 ) {
            horoscopeAnswer.text = "Aries (March 21-April 19). Things do not always run smoothly for you, but today they run right. You’ll be glad about how it all shakes out. The important part is that you keep believing in the benevolent process of life."
            picture.image = UIImage(named: "Aries.jpeg") //puts picture in UIImage on main storyboard, continued for function
        }
        
        else if (month == 4 && day >= 20) || (month == 5 && day <= 20 ) {
            horoscopeAnswer.text = "Taurus (April 20-May 20). You can’t plan your own delight — it will happen by surprise. You can, however, put yourself in circumstances in which you are more likely to be surprised."
            picture.image = UIImage(named: "Taurus.jpeg")
        }
        
        else if (month == 5 && day >= 21) || (month == 6 && day <= 21 ) {
            horoscopeAnswer.text = "Gemini (May 21-June 21). Once again, you’ve set your sights on a lofty destination. Too lofty? No. If your wings can take you there, then it’s not too high for you. You’ll handle this one wing-flap at a time."
            picture.image = UIImage(named: "Gemini.jpeg")
        }
        
        else if (month == 6 && day >= 22) || (month == 7 && day <= 22 ) {
            horoscopeAnswer.text = "Cancer (June 22-July 22). In a sense, you feel that life is scolding you. It’s not. It’s just caring for you the way a good parent does, trying to correct you when you stray slightly from the path."
            picture.image = UIImage(named: "Cancer.jpeg")
        }
        
        else if (month == 7 && day >= 23) || (month == 8 && day <= 22 ) {
            horoscopeAnswer.text = "Leo (July 23-Aug. 22). Mostly the best things are made slowly and painfully. If that’s how you feel your “thing” is being made, count yourself among the fortunate. This is going to turn out well for you."
            picture.image = UIImage(named: "Leo.jpeg")
        }
        
        else if (month == 8 && day >= 23) || (month == 9 && day <= 22 ) {
            horoscopeAnswer.text = "Virgo (Aug. 23-Sept. 22). Find a new model. The one you’re chasing isn’t worthy. Whether this is business or personal, the answer is the same. You’re bringing something unique, and a generic model is never going to encompass all you can do."
            picture.image = UIImage(named: "Virgo.jpeg")
        }
        
        else if (month == 9 && day >= 23) || (month == 10 && day <= 23 ) {
            horoscopeAnswer.text = "Libra (Sept. 23-Oct. 23). The good thing about connecting with people from your past is that they knew you before these trials and victories shaped you. They help you to meet yourself as you were, which will be interesting for you."
            picture.image = UIImage(named: "Libra.jpeg")
        }
        
        else if (month == 10 && day >= 24) || (month == 11 && day <= 21 ) {
            horoscopeAnswer.text = "Scorpio (Oct. 24-Nov. 21). Anyone who thinks it’s so easy to sell out isn’t in touch with sales in general. It’s rarely easy to make a sale. There’s work that goes into finding the right product for the market. You’ll do the work and win."
            picture.image = UIImage(named: "Scorpio.jpeg")
        }
        
        else if (month == 11 && day >= 22) || (month == 12 && day <= 21 ) {
            horoscopeAnswer.text = "Sagittarius (Nov. 22-Dec. 21). The person who dares to alter the power balance in relationships must be brave, indeed. People hate this. Maybe change is necessary, and if so, go carefully. A power balance is nothing to take lightly."
            picture.image = UIImage(named: "Sagittarius.jpeg")
        }
        
        else if (month == 12 && day >= 22) || (month == 1 && day <= 19 ) {
            horoscopeAnswer.text = "Capricorn (Dec. 22-Jan. 19). It will feel like you don’t have any control over the flow of ideas today, and maybe you don’t. The quality of the idea will make itself known over time. For now, it’s enough just to keep track. Document your mind."
            picture.image = UIImage(named: "Capricorn.jpeg")
        }
        
        else if (month == 1 && day >= 20) || (month == 2 && day <= 18 ) {
            horoscopeAnswer.text = "Acquarius (Jan. 20-Feb. 18). Those who buy tickets to the circus should not be too surprised to find themselves interacting with clowns. This is the day to sit back and enjoy the entertainment."
            picture.image = UIImage(named: "Acquarius.jpeg")
        }
        
        else if (month == 2 && day >= 19) || (month == 3 && day <= 20 ) {
            horoscopeAnswer.text = "Pisces (Feb. 19-March 20). Your tone will make or break your argument today. Strong messages are best sent with dulcet tones, and weak messages can be made more interesting with emphasis."
            picture.image = UIImage(named: "Pisces.jpeg")
        }
        
        
        
    }
}























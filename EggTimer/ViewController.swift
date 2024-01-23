//
//  ViewController.swift
//  EggTimerNew
//
//  Created by Manuvela on 21/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    let eggTimes = ["Soft" : 5, "medium" : 7, "hard" : 10]
       var secondsRemaining = 0
       var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonTapped(_ sender: UIButton) {
        //        if let buttonText = sender.titleLabel?.text {
        //            print("\(buttonText)")
        //        } else {
        //            print("Error: Button title is nil.")
        //        }
        
        //        let buttonText = sender.titleLabel?.text! ?? ""
        //        print(buttonText)
        
        
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer),userInfo: nil, repeats: true)
        
        let hardness = sender.titleLabel?.text ?? ""
        secondsRemaining = eggTimes[hardness] ?? 0
    }
    
    @objc func updateTimer(){
            if secondsRemaining > 0{
                //print("\(secondsRemaining) seconds.")
                
                label.text = "\(secondsRemaining) seconds"
                secondsRemaining -= 1
            }
            else{
                timer.invalidate()
                //print("Timer completed")
                label.text = "Timer completed"
            }
        }
        
        

}


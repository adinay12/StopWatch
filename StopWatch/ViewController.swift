//
//  ViewController.swift
//  StopWatch
//
//  Created by Adinay on 16/6/22.
//

import UIKit

class ViewController: UIViewController {

    
    // Mark labals Outlets
    
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var minutLabal: UILabel!
    @IBOutlet weak var minutesLabal: UILabel!
    
    
    @IBOutlet weak var playButton: UIButton!
    
    
    
    var  hours: String = "00"
    var minuts: String = "00"
    var second: String = "00"
    
    
    var counter = 0
    
 var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        playButton.isEnabled = false
        
        
        // Do any additional setup after loading the view.
        
        
        hourLabel.text = hours
        minutLabal.text = minuts
        minutesLabal.text = second
    }


    @IBAction func stopButtton(_ sender: Any) {
        print("stop")
        timer.invalidate()
        playButton.isEnabled = true
    }
    
    
    
    @IBAction func pauseButton(_ sender: Any) {
        print("paus")
        timer.invalidate()
        
        playButton.isEnabled = false
    }
    
   
    @IBAction func playsButton(_ sender: Any) {
        print("Play")
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(makeStep), userInfo: nil, repeats: true)
    }
    
    
    @objc func makeStep(){
        print("seconds: \(second)")
        if counter < 10 {
          second = "0\(counter)"
        } else{
            second = "\(counter)"
        }
        counter += 1
        second = "\(counter)"
        minutesLabal.text = second
        
    }
    
}




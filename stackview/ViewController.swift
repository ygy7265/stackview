//
//  ViewController.swift
//  stackview
//
//  Created by D7703_19 on 2019. 3. 28..
//  Copyright © 2019년 sin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgaeview: UIImageView!
    var count = 1
    var myTimer = Timer() //타이머객체생성
    var isAnimating = false
    @IBOutlet weak var lbla: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgaeview.image = UIImage(named: "Image-\(count)")
        lbla.text = String(count)
    }

    @IBAction func btnplay(_ sender: Any) {
        print("play")
        
        if isAnimating == true { return }
        else {isAnimating = true}
        myTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
            isAnimating = true
        
    }
    
    @IBAction func btnpause(_ sender: Any) {

        myTimer.invalidate()
        
        isAnimating = false
    }
    
    @IBAction func btnStop(_ sender: Any) {
        print("btnStop")
        myTimer.invalidate()
        count = 0
    }
    @objc func doAnimation(){
        if count == 5{
            count = 0
        }
        count += 1
        
        imgaeview.image = UIImage(named: "Image-\(count)")
        lbla.text = String(count)
    }
}


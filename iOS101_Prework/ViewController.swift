//
//  ViewController.swift
//  iOS101_Prework
//
//  Created by J C’kang on 08/01/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var jos_profile: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Round my image corners
        jos_profile.layer.cornerRadius = 20
        jos_profile.clipsToBounds = true
        
        
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        
        func changeColor() -> UIColor{

                let red = CGFloat.random(in: 0...1)
                let green = CGFloat.random(in: 0...1)
                let blue = CGFloat.random(in: 0...1)

                return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
            }
        
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        
    }
    
    
    @IBAction func returnToVC(segue: UIStoryboardSegue) {
        print("getting back to the ViewController")
    }
    
    
}

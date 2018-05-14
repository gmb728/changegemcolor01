//
//  changeGemColorViewController.swift
//  changeGemColor
//
//  Created by Chang Sophia on 2018/5/2.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit

class changeGemColorViewController: UIViewController {
var count = Int(arc4random_uniform(6)+0)
  
    
    @IBOutlet weak var buttonTitle: UIButton!
    @IBOutlet weak var orangeImageView: UIImageView!
    @IBOutlet weak var redImageView: UIImageView!
    @IBOutlet weak var blueImageView: UIImageView!
    @IBOutlet weak var purpleImageView: UIImageView!
    @IBOutlet weak var greenImageView: UIImageView!
    @IBOutlet weak var crystalImageView: UIImageView!
    
     
    
    @IBAction func buttonTitle(_ sender: Any) {
 
      count = count + 1
       changeGem()
    }
    func changeGem(){
        let number = count % 6
        
        if number == 0 {
            redImageView.image = UIImage(named: "red")
        } else if number == 1 {
            orangeImageView.image = UIImage(named: "orange")
        } else if number == 2 {
            greenImageView.image = UIImage(named: "green")
        } else if number == 3 {
            blueImageView.image = UIImage(named: "blue")
        } else if number == 4 {
            purpleImageView.image = UIImage(named: "purple")
        } else if number == 5 {
            crystalImageView.image = UIImage(named: "crystal")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

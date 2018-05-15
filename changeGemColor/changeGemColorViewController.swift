//
//  changeGemColorViewController.swift
//  changeGemColor
//
//  Created by Chang Sophia on 2018/5/2.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit
import GameKit

class changeGemColorViewController: UIViewController {
var count = Int(arc4random_uniform(6)+0)
  
    @IBOutlet weak var gloveImageView: UIImageView!
    
    @IBOutlet weak var orangeImageView: UIImageView!
    @IBOutlet weak var redImageView: UIImageView!
    @IBOutlet weak var blueImageView: UIImageView!
    @IBOutlet weak var purpleImageView: UIImageView!
    @IBOutlet weak var greenImageView: UIImageView!
    @IBOutlet weak var crystalImageView: UIImageView!
    let gems = ["orange", "red", "blue", "purple", "green", "crystal"]
         @IBOutlet weak var buttonTitle: UIButton!
    
    
        @IBAction func buttonTitle(_ sender: UIButton) {
        
        let randomDistribution = GKRandomDistribution(lowestValue: 0, highestValue: 5)
        let gemArray: [UIImageView] = [orangeImageView, redImageView, greenImageView, blueImageView, purpleImageView, crystalImageView]
        for i in 0...5{
            let number = randomDistribution.nextInt()
            gemArray[i].image = UIImage("orange", "red", "blue", "green" ,"purple", "crystal")
            
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


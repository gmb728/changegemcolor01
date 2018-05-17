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

    
    
    @IBOutlet weak var orangeImageView: UIImageView!
    @IBOutlet weak var redImageView: UIImageView!
    @IBOutlet weak var blueImageView: UIImageView!
    @IBOutlet weak var purpleImageView: UIImageView!
    @IBOutlet weak var greenImageView: UIImageView!
    @IBOutlet weak var crystalImageView: UIImageView!
    let gems = ["crystal","orange", "red", "blue", "green", "purple"]
    //順序要一致
    @IBOutlet weak var buttonTitle: UIButton!
    @IBOutlet weak var numberOutlet: UILabel!
  
    
    func randomnumber() {
        let randomDistribution = GKRandomDistribution(lowestValue: 0, highestValue: 5)
        let gemArray:[UIImageView] = [crystalImageView, orangeImageView, redImageView,blueImageView, greenImageView, purpleImageView]
        var sum = 0
        for a in 0...5 {
            let number = randomDistribution.nextInt()
            sum = sum + number
            let imageName = gems[number]
            gemArray[a].image = UIImage(named: imageName)
        }
        numberOutlet.text = "\(sum)"
    }
  
        @IBAction func buttonTitle(_ sender: UIButton) {
        let randomDistribution = GKRandomDistribution(lowestValue: 0, highestValue: 5)
        let gemArray: [UIImageView] = [crystalImageView, orangeImageView, redImageView, blueImageView, greenImageView, purpleImageView]
        for i in 0...5{
            let number = randomDistribution.nextInt()
            let imageName = gems[number]
            gemArray[i].image = UIImage(named: imageName)
             //這二行很重要！
            
            randomnumber()
            // 要在buttonTitle裡執行ｆｕｎｃ　randomnumber()
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


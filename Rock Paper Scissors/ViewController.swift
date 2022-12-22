//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by 6f on 12/20/22.
//

import UIKit
 
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateInterface(uh:.start)
    }
    @IBOutlet var ComputerSign: UILabel!
       @IBOutlet var GameStatus: UILabel!
       @IBOutlet var UserRock: UIButton!
       @IBOutlet var UserPaper: UIButton!
       @IBOutlet var UserScissors: UIButton!
       @IBOutlet var PlayAgain: UIButton!
       
       
       @IBAction func UsersRock(_ sender: Any) {
           play(ha: .rock)
       }
       @IBAction func UsersPaper(_ sender: Any) {
           play(ha: .paper)
       }
       @IBAction func UsersScissors(_ sender: Any) {
           play(ha: .scissors)
       }
       @IBAction func paButton(_ sender: Any) {
           updateInterface(uh: .start)
       }
       
       func updateInterface(uh : GameState) {
           if uh == .start {
               ComputerSign.text = "🤖"
               GameStatus.text = "Make a move"
               PlayAgain.isHidden = true
               UserRock.isEnabled = true
               UserPaper.isEnabled = true
               UserScissors.isEnabled = true
               view.backgroundColor =  colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
               
           }

       }
    
    

}


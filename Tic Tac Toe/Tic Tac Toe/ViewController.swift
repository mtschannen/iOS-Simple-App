//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Matt Tschannen on 9/21/17.
//  Copyright © 2017 Matt Tschannen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activePlayer = 1 //Cross
    @IBOutlet weak var turnIndicator: UIImageView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    var board = Array(repeating: 0, count: 10)
    

    @IBAction func action(_ sender: AnyObject) {
        sender.removeTarget(nil, action: nil, for: .allEvents)
        if(activePlayer == 1){
            sender.setImage(UIImage(named: "Cross.png"), for: UIControlState())
            activePlayer = 2
            print(sender.tag)
            board[sender.tag] = 1
            turnIndicator.image = UIImage(named: "Nought.png")
        }
        else {
            sender.setImage(UIImage(named: "Nought.png"), for: UIControlState())
            activePlayer = 1
            print(sender.tag)
            board[sender.tag] = 4
            turnIndicator.image = UIImage(named: "Cross.png")
        }
        checkWin()
    }
    
    @IBAction func reset(_ sender: Any) {
        button1.setImage(UIImage(), for: UIControlState())
        button2.setImage(UIImage(), for: UIControlState())
        button3.setImage(UIImage(), for: UIControlState())
        button4.setImage(UIImage(), for: UIControlState())
        button5.setImage(UIImage(), for: UIControlState())
        button6.setImage(UIImage(), for: UIControlState())
        button7.setImage(UIImage(), for: UIControlState())
        button8.setImage(UIImage(), for: UIControlState())
        button9.setImage(UIImage(), for: UIControlState())
        button1.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        button2.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        button3.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        button4.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        button5.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        button6.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        button7.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        button8.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        button9.addTarget(self, action: #selector(ViewController.action(_:)), for: UIControlEvents.touchUpInside)
        activePlayer = 1
        turnIndicator.image = UIImage(named: "Cross.png")
        board = Array(repeating: 0, count: 10)
    }
    
    func checkWin(){
        var results = Array(repeating: 0, count: 8)
        results[0] = board[1] + board[4] + board[7]
        results[1] = board[2] + board[5] + board[8]
        results[2] = board[3] + board[6] + board[9]
        results[3] = board[1] + board[2] + board[3]
        results[4] = board[4] + board[5] + board[6]
        results[5] = board[7] + board[8] + board[9]
        results[6] = board[1] + board[5] + board[9]
        results[7] = board[3] + board[5] + board[7]
        if(results.contains(3)){
            button1.setImage(UIImage(named: "Cross.png"), for: UIControlState())
            button2.setImage(UIImage(named: "Cross.png"), for: UIControlState())
            button3.setImage(UIImage(named: "Cross.png"), for: UIControlState())
            button4.setImage(UIImage(named: "Cross.png"), for: UIControlState())
            button5.setImage(UIImage(named: "Cross.png"), for: UIControlState())
            button6.setImage(UIImage(named: "Cross.png"), for: UIControlState())
            button7.setImage(UIImage(named: "Cross.png"), for: UIControlState())
            button8.setImage(UIImage(named: "Cross.png"), for: UIControlState())
            button9.setImage(UIImage(named: "Cross.png"), for: UIControlState())
            turnIndicator.image = UIImage(named: "CrossWin.png")
        }
        else if(results.contains(12)){
            button1.setImage(UIImage(named: "Nought.png"), for: UIControlState())
            button2.setImage(UIImage(named: "Nought.png"), for: UIControlState())
            button3.setImage(UIImage(named: "Nought.png"), for: UIControlState())
            button4.setImage(UIImage(named: "Nought.png"), for: UIControlState())
            button5.setImage(UIImage(named: "Nought.png"), for: UIControlState())
            button6.setImage(UIImage(named: "Nought.png"), for: UIControlState())
            button7.setImage(UIImage(named: "Nought.png"), for: UIControlState())
            button8.setImage(UIImage(named: "Nought.png"), for: UIControlState())
            button9.setImage(UIImage(named: "Nought.png"), for: UIControlState())
            turnIndicator.image = UIImage(named: "NoughtWin.png")
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


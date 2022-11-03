//
//  ViewController.swift
//  quiz
//
//  Created by ddukk18 on 28/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bt4: UIButton!
    
    @IBOutlet weak var bt3: UIButton!
    @IBOutlet weak var bt2: UIButton!
    @IBOutlet weak var bt1: UIButton!
    @IBOutlet weak var result: UITextField!
    @IBOutlet weak var qust: UITextView!
    var qun:[String] = ["Which one of the following is not an Operating System (OS)?","What do you need to use to connect to the internet?","What is also known as a portable computer?","What do you call a person who uses the internet to explore and communicate?","How much is a byte equal to?"]
    var ans:[String] = ["Windows10","Linux","DOS","MsExcel",
                        "Mouse"," CPU","Modem","Keyboard",
                       "CPU","Monitor","Desktop","Laptop",
                    "Cybernaut","Citizen","Resident","None of the above",
                        "16 bits","8 bits","32 bits","64 bits"]
    var finalans:[String] = ["MsExcel","Modem","Laptop","Cybernaut","8 bits"]
    public var k:Int = 0
    public var i:Int = 0
    public var j:Int = 0
    var count = 0
   var Score = 0
    
    override func viewDidLoad() {
        
        // Do any additional setup after loading the view.
        qust.text = qun[i]
        
        bt1.setTitle(ans[j], for: .normal)
        bt2.setTitle(ans[j+1], for: .normal)
        bt3.setTitle(ans[j+2], for: .normal)
        bt4.setTitle(ans[j+3], for: .normal)
        super.viewDidLoad()
    }
    func nxtqun(){
        bt1.tintColor = .white
        bt2.tintColor = .white
        bt3.tintColor = .white
        bt4.tintColor = .white
        i = i+1
        j = j+4

        viewDidLoad()
    }
    func check(){
       k = k+1
    }
  
    @IBAction func nextqtns(_ sender: UIButton) {
        nxtqun()
        if(i==3){
            print(i)
            let vc = storyboard?.instantiateViewController(withIdentifier: "score") as! Scorepage
            vc.mark = count+1
            present(vc,animated: true)
            
        }
    }
    
    
    @IBAction func btnall(_ sender: UIButton) {
        let val = sender.titleLabel?.text
        print(val!)
        if(val == finalans[i]){
            count = count+1
            result.text = "\(count) /5"
        
            
            sender.tintColor = .green
        }else{
            sender.tintColor = .red
        }
           
        
    }
    
}


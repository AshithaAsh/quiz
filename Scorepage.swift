//
//  Scorepage.swift
//  quiz
//
//  Created by ddukk18 on 06/10/22.
//

import UIKit

class Scorepage: UIViewController {
    public var mark = 0

    @IBOutlet weak var score: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        score.text = " You Scored \(mark) Marks"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

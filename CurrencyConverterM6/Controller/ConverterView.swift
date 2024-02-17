//
//  ConverterView.swift
//  CurrencyConverterM6
//
//  Created by Elif Dede on 2/17/24.
//

import UIKit

class ConverterView: UIViewController {

    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var rupeeLabel: UILabel!
    @IBOutlet weak var francLabel: UILabel!
    var euroValue: String = ""
    var yenValue: String = ""
    var rupeeValue: String = ""
    var francValue: String = ""
    var usdValue: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usdLabel.text = "\(usdValue)"
        euroLabel.text = "\(euroValue)"
        yenLabel.text = "\(yenValue)"
        rupeeLabel.text = "\(rupeeValue)"
        francLabel.text = "\(francValue)"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func restartClicked(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
 

}

//
//  ViewController.swift
//  CurrencyConverterM6
//
//  Created by Elif Dede on 2/17/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dolarText: UITextField!
    
    @IBOutlet weak var euroSwitch: UISwitch!
    @IBOutlet weak var yenSwitch: UISwitch!
    @IBOutlet weak var rupeeSwitch: UISwitch!
    @IBOutlet weak var francSwitch: UISwitch!
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var convertButton: UIButton!
    
    var converterLogic = ConverterLogic()
    var euroValue = ""
    var yenValue = ""
    var rupeeValue = ""
    var francValue = ""
    var usdValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        warningLabel.isHidden = true
        dolarText.returnKeyType = .done
        dolarText.keyboardType = .decimalPad
        dolarText.delegate = self

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        dolarText.becomeFirstResponder()
    }

    @IBAction func euroSwitchOn(_ sender: UISwitch) {
        converterLogic.setEuroSwitch(sender.isOn)
    }
    @IBAction func yenSwitchOn(_ sender: UISwitch) {
        converterLogic.setYenSwitch(sender.isOn)
    }
    
    
    @IBAction func rupeeSwitch(_ sender: UISwitch) {
        converterLogic.setRupeeSwitch(sender.isOn)
    }
    
    @IBAction func francSwitch(_ sender: UISwitch) {
        converterLogic.setFrancSwitch(sender.isOn)
    }
    
    @IBAction func convertClicked(_ sender: UIButton) {
        guard let amountString = dolarText.text, let usdAmount = Int(amountString) else {
            warningLabel.isHidden = false
            warningLabel.text = "Enter a valid amount"
            return
        }
            usdValue = amountString
        let usdToEuro = converterLogic.getEuroConversion(usdText: usdAmount)
        euroValue = String(format: "%.2f", usdToEuro)
        let usdToYen = converterLogic.getYenConversion(usdText: usdAmount)
        yenValue = String(format: "%.2f", usdToYen)
        let usdToRupee = converterLogic.getRupeeConversion(usdText: usdAmount)
        rupeeValue = String(format: "%.2f", usdToRupee)
        let usdToFranc = converterLogic.getFrancConversion(usdText: usdAmount)
        francValue = String(format: "%.2f", usdToFranc)
        
        self.performSegue(withIdentifier: "toNavigate", sender: self)
            warningLabel.isHidden = true
        }
        
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toNavigate"
        {
            let navigation = segue.destination as! ConverterView
            navigation.euroValue = euroValue
            navigation.yenValue = yenValue
            navigation.rupeeValue = rupeeValue
            navigation.francValue = francValue
            navigation.usdValue = usdValue
           
            
        }    }
    
    
}
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        dolarText.resignFirstResponder()
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        dolarText.keyboardType = .numberPad
    }
    
}


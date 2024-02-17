//
//  ConverterLogic.swift
//  CurrencyConverterM6
//
//  Created by Elif Dede on 2/17/24.
//

import Foundation

struct ConverterLogic {
    var euroSwitch = true
    var yenSwitch = true
    var rupeeSwitch = true
    var francSwitch = true
    var usdToEuro: Double = 0.00
    var usdToYen: Double = 0.00
    var usdToRupee: Double = 0.00
    var usdToFranc: Double = 0.00
    
    mutating func setEuroSwitch(_ switchValue: Bool){
         if switchValue {
             euroSwitch = true
         } else {
             euroSwitch = false
         }
     }
     mutating func setYenSwitch(_ switchValue: Bool){
         if switchValue {
             yenSwitch = true
         } else {
            yenSwitch = false
         }
     }
     mutating func setRupeeSwitch(_ switchValue: Bool){
         if switchValue {
             rupeeSwitch = true
         } else {
            rupeeSwitch = false
         }
     }
     mutating func setFrancSwitch(_ switchValue: Bool){
         if switchValue {
             francSwitch = true
         } else {
             francSwitch = false
         }
     }

    
    func getEuroConversion(usdText: Int) -> Double {
        if euroSwitch{
            return Double(usdText) * 0.93
        } else{
            return 0
        }
    }
    func getYenConversion(usdText: Int) -> Double {
        if yenSwitch{
            return Double(usdText) * 150.17
        } else{
            return 0
        }
    }
    
    func getRupeeConversion(usdText: Int) -> Double {
        if rupeeSwitch{
            return Double(usdText) * 82.02
        } else {
                return 0
            }

    }
    func getFrancConversion(usdText: Int) -> Double {
        if francSwitch{
            return Double(usdText) * 0.88
        } else {
            return 0
        }

        
    }
}


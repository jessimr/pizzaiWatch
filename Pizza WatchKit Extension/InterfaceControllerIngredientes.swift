//
//  InterfaceControllerIngredientes.swift
//  Pizza
//
//  Created by JESSICA MENDOZA RUIZ on 18/01/2017.
//  Copyright © 2017 JESSICA MENDOZA RUIZ. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerIngredientes: WKInterfaceController {

    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var pepperoni: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var aceituna: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var pimiento: WKInterfaceSwitch!
    @IBOutlet var piña: WKInterfaceSwitch!
    @IBOutlet var anchoa: WKInterfaceSwitch!
    var contador:Int = 0
    var valorContexto = Valor()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        let c = context as! Valor
        valorContexto = c
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func siguiente() {
        pushController(withName: "VistaPedido", context: valorContexto)
    }

    @IBAction func añadeJamon(_ value: Bool) {
        if value == true {
            if contador < 5 {
                contador += 1
                if valorContexto.ing1 == "" {
                    valorContexto.ing1 = "jamón"
                }else if valorContexto.ing2 == "" {
                    valorContexto.ing2 = "jamón"
                }else if valorContexto.ing3 == "" {
                    valorContexto.ing3 = "jamón"
                }else if valorContexto.ing4 == "" {
                    valorContexto.ing4 = "jamón"
                }else if valorContexto.ing5 == "" {
                    valorContexto.ing5 = "jamón"
                }
            }else{
                if valorContexto.ing5 == "jamón" {
                    jamon.setOn(false)
                }else if valorContexto.ing5 == "pepperoni" {
                    pepperoni.setOn(false)
                }else if valorContexto.ing5 == "pavo" {
                    pavo.setOn(false)
                }else if valorContexto.ing5 == "salchicha" {
                    salchicha.setOn(false)
                }else if valorContexto.ing5 == "aceituna" {
                    aceituna.setOn(false)
                }else if valorContexto.ing5 == "cebolla" {
                    cebolla.setOn(false)
                }else if valorContexto.ing5 == "pimiento" {
                    pimiento.setOn(false)
                }else if valorContexto.ing5 == "piña" {
                    piña.setOn(false)
                }else if valorContexto.ing5 == "anchoa" {
                    anchoa.setOn(false)
                }
                valorContexto.ing5 = "jamón"
            }
        }else{
            contador -= 1
            if valorContexto.ing1 == "jamón" {
                valorContexto.ing1 = ""
            }else if valorContexto.ing2 == "jamón" {
                valorContexto.ing2 = ""
            }else if valorContexto.ing3 == "jamón" {
                valorContexto.ing3 = ""
            }else if valorContexto.ing4 == "jamón" {
                valorContexto.ing4 = ""
            }else if valorContexto.ing5 == "jamón" {
                valorContexto.ing5 = ""
            }
        }
    }
   
    @IBAction func añadePepperoni(_ value: Bool) {
        if value == true {
            if contador < 5 {
                contador += 1
                if valorContexto.ing1 == "" {
                    valorContexto.ing1 = "pepperoni"
                }else if valorContexto.ing2 == "" {
                    valorContexto.ing2 = "pepperoni"
                }else if valorContexto.ing3 == "" {
                    valorContexto.ing3 = "pepperoni"
                }else if valorContexto.ing4 == "" {
                    valorContexto.ing4 = "pepperoni"
                }else if valorContexto.ing5 == "" {
                    valorContexto.ing5 = "pepperoni"
                }
            }else{
                if valorContexto.ing5 == "jamón" {
                    jamon.setOn(false)
                }else if valorContexto.ing5 == "pepperoni" {
                    pepperoni.setOn(false)
                }else if valorContexto.ing5 == "pavo" {
                    pavo.setOn(false)
                }else if valorContexto.ing5 == "salchicha" {
                    salchicha.setOn(false)
                }else if valorContexto.ing5 == "aceituna" {
                    aceituna.setOn(false)
                }else if valorContexto.ing5 == "cebolla" {
                    cebolla.setOn(false)
                }else if valorContexto.ing5 == "pimiento" {
                    pimiento.setOn(false)
                }else if valorContexto.ing5 == "piña" {
                    piña.setOn(false)
                }else if valorContexto.ing5 == "anchoa" {
                    anchoa.setOn(false)
                }
                valorContexto.ing5 = "pepperoni"
            }
        }else{
            contador -= 1
            if valorContexto.ing1 == "pepperoni" {
                valorContexto.ing1 = ""
            }else if valorContexto.ing2 == "pepperoni" {
                valorContexto.ing2 = ""
            }else if valorContexto.ing3 == "pepperoni" {
                valorContexto.ing3 = ""
            }else if valorContexto.ing4 == "pepperoni" {
                valorContexto.ing4 = ""
            }else if valorContexto.ing5 == "pepperoni" {
                valorContexto.ing5 = ""
            }
        }
    }
    
    @IBAction func añadePavo(_ value: Bool) {
        if value == true {
            if contador < 5 {
                contador += 1
                if valorContexto.ing1 == "" {
                    valorContexto.ing1 = "pavo"
                }else if valorContexto.ing2 == "" {
                    valorContexto.ing2 = "pavo"
                }else if valorContexto.ing3 == "" {
                    valorContexto.ing3 = "pavo"
                }else if valorContexto.ing4 == "" {
                    valorContexto.ing4 = "pavo"
                }else if valorContexto.ing5 == "" {
                    valorContexto.ing5 = "pavo"
                }
            }else{
                if valorContexto.ing5 == "jamón" {
                    jamon.setOn(false)
                }else if valorContexto.ing5 == "pepperoni" {
                    pepperoni.setOn(false)
                }else if valorContexto.ing5 == "pavo" {
                    pavo.setOn(false)
                }else if valorContexto.ing5 == "salchicha" {
                    salchicha.setOn(false)
                }else if valorContexto.ing5 == "aceituna" {
                    aceituna.setOn(false)
                }else if valorContexto.ing5 == "cebolla" {
                    cebolla.setOn(false)
                }else if valorContexto.ing5 == "pimiento" {
                    pimiento.setOn(false)
                }else if valorContexto.ing5 == "piña" {
                    piña.setOn(false)
                }else if valorContexto.ing5 == "anchoa" {
                    anchoa.setOn(false)
                }
                valorContexto.ing5 = "pavo"
            }
        }else{
            contador -= 1
            if valorContexto.ing1 == "pavo" {
                valorContexto.ing1 = ""
            }else if valorContexto.ing2 == "pavo" {
                valorContexto.ing2 = ""
            }else if valorContexto.ing3 == "pavo" {
                valorContexto.ing3 = ""
            }else if valorContexto.ing4 == "pavo" {
                valorContexto.ing4 = ""
            }else if valorContexto.ing5 == "pavo" {
                valorContexto.ing5 = ""
            }
        }
    }
    
    @IBAction func añadeSalchicha(_ value: Bool) {
        if value == true {
            if contador < 5 {
                contador += 1
                if valorContexto.ing1 == "" {
                    valorContexto.ing1 = "salchicha"
                }else if valorContexto.ing2 == "" {
                    valorContexto.ing2 = "salchicha"
                }else if valorContexto.ing3 == "" {
                    valorContexto.ing3 = "salchicha"
                }else if valorContexto.ing4 == "" {
                    valorContexto.ing4 = "salchicha"
                }else if valorContexto.ing5 == "" {
                    valorContexto.ing5 = "salchicha"
                }
            }else{
                if valorContexto.ing5 == "jamón" {
                    jamon.setOn(false)
                }else if valorContexto.ing5 == "pepperoni" {
                    pepperoni.setOn(false)
                }else if valorContexto.ing5 == "pavo" {
                    pavo.setOn(false)
                }else if valorContexto.ing5 == "salchicha" {
                    salchicha.setOn(false)
                }else if valorContexto.ing5 == "aceituna" {
                    aceituna.setOn(false)
                }else if valorContexto.ing5 == "cebolla" {
                    cebolla.setOn(false)
                }else if valorContexto.ing5 == "pimiento" {
                    pimiento.setOn(false)
                }else if valorContexto.ing5 == "piña" {
                    piña.setOn(false)
                }else if valorContexto.ing5 == "anchoa" {
                    anchoa.setOn(false)
                }
                valorContexto.ing5 = "salchicha"
            }
        }else{
            contador -= 1
            if valorContexto.ing1 == "salchicha" {
                valorContexto.ing1 = ""
            }else if valorContexto.ing2 == "salchicha" {
                valorContexto.ing2 = ""
            }else if valorContexto.ing3 == "salchicha" {
                valorContexto.ing3 = ""
            }else if valorContexto.ing4 == "salchicha" {
                valorContexto.ing4 = ""
            }else if valorContexto.ing5 == "salchicha" {
                valorContexto.ing5 = ""
            }
        }
    }
    
    @IBAction func añadeAceituna(_ value: Bool) {
        if value == true {
            if contador < 5 {
                contador += 1
                if valorContexto.ing1 == "" {
                    valorContexto.ing1 = "aceituna"
                }else if valorContexto.ing2 == "" {
                    valorContexto.ing2 = "aceituna"
                }else if valorContexto.ing3 == "" {
                    valorContexto.ing3 = "aceituna"
                }else if valorContexto.ing4 == "" {
                    valorContexto.ing4 = "aceituna"
                }else if valorContexto.ing5 == "" {
                    valorContexto.ing5 = "aceituna"
                }
            }else{
                if valorContexto.ing5 == "jamón" {
                    jamon.setOn(false)
                }else if valorContexto.ing5 == "pepperoni" {
                    pepperoni.setOn(false)
                }else if valorContexto.ing5 == "pavo" {
                    pavo.setOn(false)
                }else if valorContexto.ing5 == "salchicha" {
                    salchicha.setOn(false)
                }else if valorContexto.ing5 == "aceituna" {
                    aceituna.setOn(false)
                }else if valorContexto.ing5 == "cebolla" {
                    cebolla.setOn(false)
                }else if valorContexto.ing5 == "pimiento" {
                    pimiento.setOn(false)
                }else if valorContexto.ing5 == "piña" {
                    piña.setOn(false)
                }else if valorContexto.ing5 == "anchoa" {
                    anchoa.setOn(false)
                }
                valorContexto.ing5 = "aceituna"
            }
        }else{
            contador -= 1
            if valorContexto.ing1 == "aceituna" {
                valorContexto.ing1 = ""
            }else if valorContexto.ing2 == "aceituna" {
                valorContexto.ing2 = ""
            }else if valorContexto.ing3 == "aceituna" {
                valorContexto.ing3 = ""
            }else if valorContexto.ing4 == "aceituna" {
                valorContexto.ing4 = ""
            }else if valorContexto.ing5 == "aceituna" {
                valorContexto.ing5 = ""
            }
        }
    }
    
    @IBAction func añadeCebolla(_ value: Bool) {
        if value == true {
            if contador < 5 {
                contador += 1
                if valorContexto.ing1 == "" {
                    valorContexto.ing1 = "cebolla"
                }else if valorContexto.ing2 == "" {
                    valorContexto.ing2 = "cebolla"
                }else if valorContexto.ing3 == "" {
                    valorContexto.ing3 = "cebolla"
                }else if valorContexto.ing4 == "" {
                    valorContexto.ing4 = "cebolla"
                }else if valorContexto.ing5 == "" {
                    valorContexto.ing5 = "cebolla"
                }
            }else{
                if valorContexto.ing5 == "jamón" {
                    jamon.setOn(false)
                }else if valorContexto.ing5 == "pepperoni" {
                    pepperoni.setOn(false)
                }else if valorContexto.ing5 == "pavo" {
                    pavo.setOn(false)
                }else if valorContexto.ing5 == "salchicha" {
                    salchicha.setOn(false)
                }else if valorContexto.ing5 == "aceituna" {
                    aceituna.setOn(false)
                }else if valorContexto.ing5 == "cebolla" {
                    cebolla.setOn(false)
                }else if valorContexto.ing5 == "pimiento" {
                    pimiento.setOn(false)
                }else if valorContexto.ing5 == "piña" {
                    piña.setOn(false)
                }else if valorContexto.ing5 == "anchoa" {
                    anchoa.setOn(false)
                }
                valorContexto.ing5 = "cebolla"
            }
        }else{
            contador -= 1
            if valorContexto.ing1 == "cebolla" {
                valorContexto.ing1 = ""
            }else if valorContexto.ing2 == "cebolla" {
                valorContexto.ing2 = ""
            }else if valorContexto.ing3 == "cebolla" {
                valorContexto.ing3 = ""
            }else if valorContexto.ing4 == "cebolla" {
                valorContexto.ing4 = ""
            }else if valorContexto.ing5 == "cebolla" {
                valorContexto.ing5 = ""
            }
        }
    }
    
    @IBAction func añadePimiento(_ value: Bool) {
        if value == true {
            if contador < 5 {
                contador += 1
                if valorContexto.ing1 == "" {
                    valorContexto.ing1 = "pimiento"
                }else if valorContexto.ing2 == "" {
                    valorContexto.ing2 = "pimiento"
                }else if valorContexto.ing3 == "" {
                    valorContexto.ing3 = "pimiento"
                }else if valorContexto.ing4 == "" {
                    valorContexto.ing4 = "pimiento"
                }else if valorContexto.ing5 == "" {
                    valorContexto.ing5 = "pimiento"
                }
            }else{
                if valorContexto.ing5 == "jamón" {
                    jamon.setOn(false)
                }else if valorContexto.ing5 == "pepperoni" {
                    pepperoni.setOn(false)
                }else if valorContexto.ing5 == "pavo" {
                    pavo.setOn(false)
                }else if valorContexto.ing5 == "salchicha" {
                    salchicha.setOn(false)
                }else if valorContexto.ing5 == "aceituna" {
                    aceituna.setOn(false)
                }else if valorContexto.ing5 == "cebolla" {
                    cebolla.setOn(false)
                }else if valorContexto.ing5 == "pimiento" {
                    pimiento.setOn(false)
                }else if valorContexto.ing5 == "piña" {
                    piña.setOn(false)
                }else if valorContexto.ing5 == "anchoa" {
                    anchoa.setOn(false)
                }
                valorContexto.ing5 = "pimiento"
            }
        }else{
            contador -= 1
            if valorContexto.ing1 == "pimiento" {
                valorContexto.ing1 = ""
            }else if valorContexto.ing2 == "pimiento" {
                valorContexto.ing2 = ""
            }else if valorContexto.ing3 == "pimiento" {
                valorContexto.ing3 = ""
            }else if valorContexto.ing4 == "pimiento" {
                valorContexto.ing4 = ""
            }else if valorContexto.ing5 == "pimiento" {
                valorContexto.ing5 = ""
            }
        }
    }
    
    @IBAction func añadePiña(_ value: Bool) {
        if value == true {
            if contador < 5 {
                contador += 1
                if valorContexto.ing1 == "" {
                    valorContexto.ing1 = "piña"
                }else if valorContexto.ing2 == "" {
                    valorContexto.ing2 = "piña"
                }else if valorContexto.ing3 == "" {
                    valorContexto.ing3 = "piña"
                }else if valorContexto.ing4 == "" {
                    valorContexto.ing4 = "piña"
                }else if valorContexto.ing5 == "" {
                    valorContexto.ing5 = "piña"
                }
            }else{
                if valorContexto.ing5 == "jamón" {
                    jamon.setOn(false)
                }else if valorContexto.ing5 == "pepperoni" {
                    pepperoni.setOn(false)
                }else if valorContexto.ing5 == "pavo" {
                    pavo.setOn(false)
                }else if valorContexto.ing5 == "salchicha" {
                    salchicha.setOn(false)
                }else if valorContexto.ing5 == "aceituna" {
                    aceituna.setOn(false)
                }else if valorContexto.ing5 == "cebolla" {
                    cebolla.setOn(false)
                }else if valorContexto.ing5 == "pimiento" {
                    pimiento.setOn(false)
                }else if valorContexto.ing5 == "piña" {
                    piña.setOn(false)
                }else if valorContexto.ing5 == "anchoa" {
                    anchoa.setOn(false)
                }
                valorContexto.ing5 = "piña"
            }
        }else{
            contador -= 1
            if valorContexto.ing1 == "piña" {
                valorContexto.ing1 = ""
            }else if valorContexto.ing2 == "piña" {
                valorContexto.ing2 = ""
            }else if valorContexto.ing3 == "piña" {
                valorContexto.ing3 = ""
            }else if valorContexto.ing4 == "piña" {
                valorContexto.ing4 = ""
            }else if valorContexto.ing5 == "piña" {
                valorContexto.ing5 = ""
            }
        }
    }
    

    @IBAction func añadeAnchoa(_ value: Bool) {
        if value == true {
            if contador < 5 {
                contador += 1
                if valorContexto.ing1 == "" {
                    valorContexto.ing1 = "achoa"
                }else if valorContexto.ing2 == "" {
                    valorContexto.ing2 = "achoa"
                }else if valorContexto.ing3 == "" {
                    valorContexto.ing3 = "achoa"
                }else if valorContexto.ing4 == "" {
                    valorContexto.ing4 = "achoa"
                }else if valorContexto.ing5 == "" {
                    valorContexto.ing5 = "achoa"
                }
            }else{
                if valorContexto.ing5 == "jamón" {
                    jamon.setOn(false)
                }else if valorContexto.ing5 == "pepperoni" {
                    pepperoni.setOn(false)
                }else if valorContexto.ing5 == "pavo" {
                    pavo.setOn(false)
                }else if valorContexto.ing5 == "salchicha" {
                    salchicha.setOn(false)
                }else if valorContexto.ing5 == "aceituna" {
                    aceituna.setOn(false)
                }else if valorContexto.ing5 == "cebolla" {
                    cebolla.setOn(false)
                }else if valorContexto.ing5 == "pimiento" {
                    pimiento.setOn(false)
                }else if valorContexto.ing5 == "piña" {
                    piña.setOn(false)
                }else if valorContexto.ing5 == "anchoa" {
                    anchoa.setOn(false)
                }
                valorContexto.ing5 = "anchoa"
            }
        }else{
            contador -= 1
            if valorContexto.ing1 == "achoa" {
                valorContexto.ing1 = ""
            }else if valorContexto.ing2 == "achoa" {
                valorContexto.ing2 = ""
            }else if valorContexto.ing3 == "achoa" {
                valorContexto.ing3 = ""
            }else if valorContexto.ing4 == "achoa" {
                valorContexto.ing4 = ""
            }else if valorContexto.ing5 == "achoa" {
                valorContexto.ing5 = ""
            }
        }
    }
    
}

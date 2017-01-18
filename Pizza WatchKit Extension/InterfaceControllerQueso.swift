//
//  InterfaceControllerQueso.swift
//  Pizza
//
//  Created by JESSICA MENDOZA RUIZ on 18/01/2017.
//  Copyright © 2017 JESSICA MENDOZA RUIZ. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerQueso: WKInterfaceController {

    @IBOutlet var mozarela: WKInterfaceSwitch!
    @IBOutlet var cheddar: WKInterfaceSwitch!
    @IBOutlet var parmesano: WKInterfaceSwitch!
    @IBOutlet var sinqueso: WKInterfaceSwitch!
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
        pushController(withName: "VistaIngredientes", context: valorContexto)
    }

    @IBAction func quesoMozarela(_ value: Bool) {
        if value == true {
            valorContexto.queso = "mozarela"
            cheddar.setOn(false)
            parmesano.setOn(false)
            sinqueso.setOn(false)
        }else{
            valorContexto.queso = nil
        }
    }
    
    @IBAction func quesoCheddar(_ value: Bool) {
        if value == true {
            valorContexto.queso = "cheddar"
            mozarela.setOn(false)
            parmesano.setOn(false)
            sinqueso.setOn(false)
        }else{
            valorContexto.queso = nil
        }
    }
    
    @IBAction func quesoParmesano(_ value: Bool) {
        if value == true {
            valorContexto.queso = "parmesano"
            mozarela.setOn(false)
            cheddar.setOn(false)
            sinqueso.setOn(false)
        }else{
            valorContexto.queso = nil
        }
    }
    
    @IBAction func quesoSinQueso(_ value: Bool) {
        if value == true {
            valorContexto.queso = "sin queso"
            mozarela.setOn(false)
            cheddar.setOn(false)
            parmesano.setOn(false)
        }else{
            valorContexto.queso = nil
        }
    }
}

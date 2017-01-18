//
//  InterfaceControllerMasa.swift
//  Pizza
//
//  Created by JESSICA MENDOZA RUIZ on 18/01/2017.
//  Copyright © 2017 JESSICA MENDOZA RUIZ. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerMasa: WKInterfaceController {
    
    @IBOutlet var delgada: WKInterfaceSwitch!
    @IBOutlet var crujiente: WKInterfaceSwitch!
    @IBOutlet var gruesa: WKInterfaceSwitch!
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
        pushController(withName: "VistaQueso", context: valorContexto)
    }

    @IBAction func masaDelgada(_ value: Bool) {
        if value == true {
            valorContexto.masa = "delgada"
            crujiente.setOn(false)
            gruesa.setOn(false)
        }else{
            valorContexto.masa = nil
        }
    }
    
    @IBAction func masaCrujiente(_ value: Bool) {
        if value == true {
            valorContexto.masa = "crujiente"
            delgada.setOn(false)
            gruesa.setOn(false)
        }else{
            valorContexto.masa = nil
        }
    }
    
    @IBAction func masaGruesa(_ value: Bool) {
        if value == true {
            valorContexto.masa = "gruesa"
            delgada.setOn(false)
            crujiente.setOn(false)
        }else{
            valorContexto.masa = nil
        }
    }
}

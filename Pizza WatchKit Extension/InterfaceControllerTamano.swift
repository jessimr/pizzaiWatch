//
//  InterfaceControllerTamano.swift
//  Pizza
//
//  Created by JESSICA MENDOZA RUIZ on 18/01/2017.
//  Copyright © 2017 JESSICA MENDOZA RUIZ. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerTamano: WKInterfaceController {

    @IBOutlet var chica: WKInterfaceSwitch!
    @IBOutlet var mediana: WKInterfaceSwitch!
    @IBOutlet var grande: WKInterfaceSwitch!
    var valorContexto = Valor()
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
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
        pushController(withName: "VistaMasa", context: valorContexto)
    }
    
    @IBAction func tamañoChica(_ value: Bool) {
        if value == true {
            valorContexto.tamano = "chica"
            mediana.setOn(false)
            grande.setOn(false)
        }else{
            valorContexto.tamano = nil
        }
    }

    @IBAction func tamañoMediana(_ value: Bool) {
        if value == true {
            valorContexto.tamano = "mediana"
            chica.setOn(false)
            grande.setOn(false)
        }else{
            valorContexto.tamano = nil
        }
    }
    
    @IBAction func tamañoGrande(_ value: Bool) {
        if value == true {
            valorContexto.tamano = "grande"
            chica.setOn(false)
            mediana.setOn(false)
        }else{
            valorContexto.tamano = nil
        }
    }
}

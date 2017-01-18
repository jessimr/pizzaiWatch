//
//  InterfaceControllerPedido.swift
//  Pizza
//
//  Created by JESSICA MENDOZA RUIZ on 18/01/2017.
//  Copyright © 2017 JESSICA MENDOZA RUIZ. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerPedido: WKInterfaceController {

    @IBOutlet var mensaje: WKInterfaceLabel!
    @IBOutlet var botonRealizar: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        let c = context as! Valor
        
        if ((c.tamano==nil)||(c.masa==nil)||(c.queso==nil)){
            botonRealizar.setEnabled(false)
            mensaje.setText("No se puede realizar el pedido")
        }else{
            mensaje.setText("Tamaño: \(c.tamano!) Masa: \(c.masa!) Queso: \(c.queso!) Ingredientes: \(c.ing1!) \(c.ing2!) \(c.ing3!) \(c.ing4!) \(c.ing5!)")
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func realizarPedido() {
        pushController(withName: "VistaFinal", context: nil)
    }
    @IBAction func cancelarPedido() {
        pushController(withName: "VistaInicio", context: nil)
    }

}

//
//  InterfaceControllerFinal.swift
//  Pizza
//
//  Created by JESSICA MENDOZA RUIZ on 18/01/2017.
//  Copyright © 2017 JESSICA MENDOZA RUIZ. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceControllerFinal: WKInterfaceController {

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
    @IBAction func salir() {
        pushController(withName: "VistaInicio", context: nil)
    }

}

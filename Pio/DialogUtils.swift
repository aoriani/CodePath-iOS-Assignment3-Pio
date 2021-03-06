//
//  DialogUtils.swift
//  Pio
//
//  Created by Andre Oriani on 2/20/16.
//  Copyright © 2016 Orion. All rights reserved.
//

import Foundation
import MBProgressHUD
import UIKit


func showProgressDialog(attachedTo topView:UIView, message: String = "") -> MBProgressHUD {
    let progress = MBProgressHUD.showHUDAddedTo(topView, animated: true)
    progress.color = UIColor.init(colorLiteralRed: 0.1, green: 0.75, blue: 0.875, alpha: 1)
    progress.labelText = message
    progress.show(true)
    
    return progress
}

func showErrorDialog(errorMessage: String) {
    let alertDialog = UIAlertView(title: "Error",
        message: errorMessage,
        delegate: nil,
        cancelButtonTitle: "OK")
    alertDialog.show()
}

//
//  Kio
//  Copyright (c) 2017-2018 Julio Miguel Alorro
//
//  Licensed under the MIT license. See LICENSE file.
//
//

import UIKit

/**
 A subclass of UIViewController that implements a print statement when deinitialized. 
 Conforms to NavigationItemSetting and TargetActionSetting.
*/
open class KioViewController: UIViewController, KioDebuggable {
    deinit {
        self.debugLogMessage()
    }
}

public extension KioDebuggable where Self: UIViewController {

    func debugLogMessage() {
        print("\(type(of: self)) was deallocated")
    }

}

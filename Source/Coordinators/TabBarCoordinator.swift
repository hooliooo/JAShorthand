//
//  Rapid
//  Copyright (c) 2017-2018 Julio Miguel Alorro
//
//  Licensed under the MIT license. See LICENSE file.
//
//

import UIKit

/**
 A TabBarCoordinator is a type of Coordinator that manages a UITabBarController.
*/
public protocol TabBarCoordinator: Coordinator {

    /**
     Array of TabCoordinators managed by the TabBarCoordinator
    */
    var tabs: [AnyTabCoordinator] { get set }

    /**
     Type erasing method for TabCoordinator
     - parameter coordinator: The TabCoordinator instance to be type erased.
    */
    func degenericize<T: TabCoordinator>(_ coordinator: T) -> AnyTabCoordinator
}

public extension TabBarCoordinator {

    public func degenericize<T: TabCoordinator>(_ coordinator: T) -> AnyTabCoordinator {
        return AnyTabCoordinator(coordinator)
    }
}

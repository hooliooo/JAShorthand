//
//  Rapid
//  Copyright © Julio Alorro 2017
//
//  Licensed under the MIT license. See LICENSE file.
//
//

/**
 The DataProviding protcol defines the interface of the type that will manage an array of objects 
 that will be shown in a UICollectionView instance
*/
public protocol DataProviding {

    /**
     Object is a placeholder type that will be used in the array managed by the DataProviding instance
    */
    associatedtype Object

    /**
     Number of sections to be shown in UICollectionView
    */
    func numberOfSections() -> Int

    /**
     Number of rows to be shown in section of UICollectionView
     - parameter section: Section index of UICollectionView
    */
    func numberOfRows(in section: Int) -> Int

    /**
     The object at the specific indexPath of the UICollectionView
     - parameter indexPath: IndexPath of the object to be shown
    */
    func object(at indexPath: IndexPath) -> Object

}

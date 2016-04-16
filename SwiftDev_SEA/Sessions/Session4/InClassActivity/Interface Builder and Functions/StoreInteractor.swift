//
//  StoreInteractor.swift
//  Interface Builder and Functions
//
//  Created by Owen Pierce on 12/20/15.
//  Copyright © 2015 Tedi Konda. All rights reserved.
//

import UIKit

class StoreInteractor: AnyObject {
    func getStores(zipCode: String, completion:(foundStore: Store) -> Void) {
        // ask the service for a store
        completion(foundStore: Store())
    }
}

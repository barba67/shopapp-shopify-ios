//
//  ShopRepository.swift
//  ShopClient
//
//  Created by Evgeniy Antonov on 10/23/17.
//  Copyright © 2017 Evgeniy Antonov. All rights reserved.
//

import ShopApp_Gateway

extension ShopifyRepository: ShopRepository {
    public func getShop(callback: @escaping RepoCallback<Shop>) {
        api.getShopInfo(callback: callback)
    }
}

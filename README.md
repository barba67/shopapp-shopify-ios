[![Build Status](https://travis-ci.org/rubygarage/shopapp-shopify-ios.svg?branch=master)](https://travis-ci.org/rubygarage/shopapp-shopify-ios)
[![codecov](https://codecov.io/gh/rubygarage/shopapp-shopify-ios/branch/master/graph/badge.svg)](https://codecov.io/gh/rubygarage/shopapp-shopify-ios)

# ShopApp Shopify for iOS
This library contains the Shopify provider for [ShopApp for iOS](https://github.com/rubygarage/shopapp-ios). ShopApp is an application that turns a Shopify-based store into a mobile app. ShopApp syncs with Shopify store and transfers a product catalog and user data to a mobile app. The app provides features like customizable push notifications, promo codes, and convenient payments with popular digital wallets like Apple Pay.

# Installation
1. Connect the library with Cocoapods
To use the ShopApp provider for Shopify, connect the library to the main <link: application> with Cocoapods:

pod ‘ShopApp_Shopify’, ‘~> 1.0’

2. Change the DataAssembly file

Next, change the ShopApp/Data/DI/DataAssembly.swift file, by adding the following code:

```container.register(Repository.self) { _ in
            return ShopifyRepository(apiKey: "API KEY",
                                     shopDomain: "SHOP DOMAIN",
                                     adminApiKey: "ADMIN API KEY",
                                     adminPassword: "ADMIN PASSWORD",
                                     applePayMerchantId: "APPLE PAY MERCHANT ID")
        }
```

### Where:
**SHOP DOMAIN** is the main domain of your store. You can find it your store's domain by visiting the admin panel on a Home tab. There you can find the following message - Your current domain is xxx.myshopify.com

Picture

**API KEY** is used to receive your store's data like items and collections. To receive the key, you have to visit the admin panel and proceed to Apps - Manage Private Apps. Create a new application if you don't have one by copying Storefront API and adding it to your library's configuration.


Picture

**ADMIN API KEY** is a key for Admin API. The library uses the key to receive a list of countries eligible to shipping.

**ADMIN PASSWORD** is a password for Admin API. 

Picture

**APPLE PAY MERCHANT** ID is a merchant's ID for Apple Pay wallet. If you want to enable Apple Pay for merchandise payments in your app, enable this option in settings of Storefront API. The option's isn't compulsory.

Picture

## Requirements
* iOS 10+
* XCode 9 for app development and submission to Apple App Store
* Cocoapods to install all the dependencies

## License
The ShopApp Shopify for iOS provider is licensed under the [Apache 2.0 license](https://www.apache.org/licenses/LICENSE-2.0)


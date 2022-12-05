//
//  CryptoViewModel.swift
//  CryptoCrazy
//
//  Created by Hakan Baran on 16.11.2022.
//

import Foundation

struct CryptoListViewModel {
    let cryptoCurrencyList : [CryptoCurrency]
}

extension CryptoListViewModel {
    
    func numberOfRowsSection() -> Int {
        return self.cryptoCurrencyList.count
    }
    func cryptoIndex(_ index : Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: crypto)
    }
}



struct CryptoViewModel {
    let cryptoCurrency : CryptoCurrency
}

extension CryptoViewModel {
    var name: String {
        return self.cryptoCurrency.currency
    }
    var price : String {
        return self.cryptoCurrency.price
    }
}

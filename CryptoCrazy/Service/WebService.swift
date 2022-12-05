//
//  WebService.swift
//  CryptoCrazy
//
//  Created by Hakan Baran on 15.11.2022.
//

import Foundation

class WebService {
    
    func downloadCurrencies(url : URL, completion : @escaping ([CryptoCurrency]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, reponse, error1 in
            if error1 != nil {
                print(error1?.localizedDescription ?? "Error!!")
                completion(nil)
            } else if let data = data {
                
                let cryptoList = try? JSONDecoder().decode([CryptoCurrency].self, from: data)
                
                print(cryptoList)
                
                if let cryptoList = cryptoList {
                    
                    completion(cryptoList)
                }
                
                
            }
            
        }.resume()
        
        
        
    }
    
}

//
//  Keychain.swift
//
//
//  Created by Alejandro Alberto Gavira García on 12/3/24.
//

import Foundation
import KeychainSwift

public struct KeychainKC {
    
    public init(){}
    
    //funcion guardar
    @discardableResult
    public func saveKC(key: String, value: String) -> Bool {
        if let data = value.data(using: .utf8){
            return KeychainSwift().set(data, forKey: key)
        }else{
            return false
        }
    }
    
    public func loadKC(key:String) -> String? {
        if let data = KeychainSwift().get(key){
            return data
        }else{
            return nil
        }
    }
    
    @discardableResult
    public func deleteKC(key: String) -> Bool {
        KeychainSwift().delete(key)
    }
    
}

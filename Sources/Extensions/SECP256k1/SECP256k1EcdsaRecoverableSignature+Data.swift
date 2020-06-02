//
//  SECP256k1EcdsaRecoverableSignature+Data.swift
//  MEWwalletKit
//
//  Created by Mikhail Nikanorov on 4/25/19.
//  Copyright © 2019 MyEtherWallet Inc. All rights reserved.
//

import Foundation
import MEW_wallet_iOS_secp256k1_package

extension secp256k1_ecdsa_recoverable_signature {
  mutating func data() -> Data {
    return Data(withUnsafeBytes(of: &self) { Array($0) })
  }
}

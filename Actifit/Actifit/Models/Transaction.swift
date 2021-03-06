//
//  Transaction.swift
//  Actifit
//
//  Created by Hitender kumar on 17/08/18.
//  Copyright © 2018 actifit.io. All rights reserved.
//

import UIKit

struct TransactionKeys {
    static let user = "user"
    static let reward_activity = "reward_activity"
    static let token_count = "token_count"
    static let date = "date"
    static let url = "url"
    static let note = "note"
}

class Transaction: NSObject {
    
    var user = ""
    var reward_activity = ""
    var token_count : Double = 0
    var date : String = ""
    var url : String = ""
    var note : String = ""

    init(info : [String : Any]) {
        self.user = info.stringValue(forKey: TransactionKeys.user)
        self.reward_activity = info.stringValue(forKey: TransactionKeys.reward_activity)
        self.token_count = info.doubleValue(forKey: TransactionKeys.token_count)
        self.date = info.stringValue(forKey: TransactionKeys.date)
        self.url = info.stringValue(forKey: TransactionKeys.url)
        self.note = info.stringValue(forKey: TransactionKeys.note)

    }
}

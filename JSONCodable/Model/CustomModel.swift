//
//  CustomModel.swift
//  JSONCodable
//
//  Created by Hackice on 2019/6/20.
//  Copyright © 2019 Hackice. All rights reserved.
//

struct CustomModel: Codable {
    var name, email: String?
    var customerID: Int?
    var companyID: String?  // JSON为Number类型
    var leadID: Int?        // JSON无该键、值
    var mainCustomerFlag: Int?
    
    enum CodingKeys: String, DefaultCodingKey {
        
        var defaultValue: Any? {
            switch self {
            case .leadID:
                // TODO: 缺少类型匹配
                return 0
            default:
                return nil
            }
        }
        
        case customerID = "customer_id"
        case companyID = "company_id"
        case leadID = "lead_id"
        case mainCustomerFlag = "main_customer_flag"
        case name, email
    }
}

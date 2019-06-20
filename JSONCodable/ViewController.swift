//
//  ViewController.swift
//  JSONCodable
//
//  Created by Hackice on 2019/6/20.
//  Copyright © 2019 Hackice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        transform()
    }

    func transform() {
        
        guard let jsonData = jsonString.data(using: .utf8) else { return }
        
        var model: CustomModel?
        do {
            
            
            model = try JSONDecoder().decode(CustomModel.self, from: jsonData)
        } catch {
            
            guard let error = error as? DecodingError else { return }
            /*
             typeMismatch(Swift.String, Swift.DecodingError.Context(codingPath: [CodingKeys(stringValue: "customer_id", intValue: nil)], debugDescription: "Expected to decode String but found a number instead.", underlyingError: nil))
             */
            switch error {
            case let .typeMismatch(object, context):
                print("错误内容：object：\(object) context：\(context)")
            default:
                break
            }
        }
        print("模型输出结果：\(model)")
    }
}


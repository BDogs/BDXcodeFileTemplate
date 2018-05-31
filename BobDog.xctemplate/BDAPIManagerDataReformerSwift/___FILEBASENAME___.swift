//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit
import BDNetworking

class ___FILEBASENAMEASIDENTIFIER___: NSObject {
    static let kIsSuccesss = "success" // bool

}

extension ___FILEBASENAMEASIDENTIFIER___: BDAPIManagerDataReformer {
    @objc func reformData(manager: BDAPIBaseManager, data: Any?) -> Any {
        var result: [String: Any] = [:]
        guard let dic = data as? [String: Any] else { return [:] }
        guard let isSuccess = dic["success"] as? Bool, isSuccess else { return [:] }
        guard let userInfo = dic["data"] as? [String: Any] else { return [:] }
        result[___FILEBASENAMEASIDENTIFIER___.kIsSuccesss] = true
        result = userInfo

        return result
    }
}

//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: BDService, BDServiceProtocol {
    let pks_commenParams: [String: [String: Any]] = {
        let parms = [:]
        return parms
    }()
    
    static let picServicePath = "http://pins-app-resources.oss-cn-qingdao.aliyuncs.com/"
    
    
    // token 失效
    open static let kNotification_tokenInvalid = "kNotification_tokenInvalid"
    
    open static let kUserInfo_urlRequestToContinue = "kUserInfo_urlRequestToContinue"
    
    open static let kUserInfo_serviceToContinue = "kUserInfo_serviceToContinue"
    
    fileprivate let kTokenStatus = "kTokenStatus"
    
    /// 提供拦截器集中处理Service错误问题，比如token失效要抛通知等
    func shouldCallBackByFailedOnCallingAPI(response: BDDataResponse<Any>?) -> Bool {
        let dic = response?.result.value as? [String: Any]
        if ((dic?[kTokenStatus] as? String) != nil) && dic?[kTokenStatus] as! String == "expired_access_token" {
            let notificationName = Notification.Name(rawValue: BDDefautService.kNotification_tokenInvalid)
            
            NotificationCenter.default.post(name: notificationName, object: nil, userInfo: [BDDefautService.kUserInfo_urlRequestToContinue: response!.request!, BDDefautService.kUserInfo_serviceToContinue: self])
        }
        
        return true
    }
    
    
    // MARK: - BDServiceProtocol
    var isOnline: Bool {
        return BDNetworkingContext.sharedInstance.isOnline
    }
    
    var offlineApiBaseUrl: String {
        return ""
    }
    
    var onlineApiBaseUrl: String {
        return ""
    }
    
    var offlineHeaderFields: [String : String] {
        return [:]
    }
    
    var onlineHeaderFields: [String : String] {
        return [:]
    }
    
    var offlinePrivateKey: String {
        return ""
    }
    
    var onlinePrivateKey: String {
        return ""
    }
    
    var offlinePublicKey: String {
        return ""
    }
    
    var onlinePublicKey: String {
        return ""
    }
    
    var onlineApiVersion: String {
        return ""
    }
    
    var offlineApiVersion: String {
        return ""
    }
    
    var onlineExtraParmas: [String: Any] {
        return ParkinsonService().pks_commenParams
    }
    
    var offlineExtraParmas: [String: Any] {
        return ParkinsonService().pks_commenParams
    }
    
    // 重载，定制 URL 的拼接规则
    override func appendURL(relativeUrl: String) -> String {
        var urlString: String
        if self.apiVersion.isEmpty {
            urlString = self.apiBaseUrl + "/" + relativeUrl
        } else {
            urlString = self.apiBaseUrl + "/" + self.apiVersion + "/" + relativeUrl
        }
        return urlString
    }

}

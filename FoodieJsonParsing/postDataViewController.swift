//
//  postDataViewController.swift
//  FoodieJsonParsing
//
//  Created by Im100ruv on 27/02/18.
//  Copyright © 2018 Im100ruv. All rights reserved.
//

import UIKit
import Alamofire
class postDataViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let body : [String: AnyObject] = ["submenu_id": "1" as AnyObject,
                    "item_type": "non-veg"]
        
        Alamofire.request(.POST, "http://emenu.foodiemenu.in/android_sms/emenu_data/jsonData.php", parameters: body, encoding: .JSON)
            .responseJSON { request, response, JSON, error in
                print(response)
                print(JSON)
                print(error)
        }
    }
    
    func post_request(_ appendString:String,parameterStr:String, completion: @escaping (_ result: NSDictionary) -> Void) {//completionHandler: ((NSDictionary!) -> Void)?) {
        var responseDict:NSDictionary = [:]
        ////print("parameters are \(parameterStr)")
        
        let url:URL = URL(string: NSString(format: "http://emenu.foodiemenu.in/android_sms/emenu_data/jsonData.php", appendString.replacingOccurrences(of: " ", with: "")) as String)!
        _ = URLSession.shared
        //print(session)
        let request = NSMutableURLRequest(url: url)
        request.httpMethod = "POST"
        request.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringCacheData
        let paramString = parameterStr
        request.httpBody = paramString.data(using: String.Encoding.utf8)
        
        let task = URLSession.shared.dataTask(with: request as URLRequest) {
            (
            returnData, response, error) in
            
            guard let _:Data = returnData, let _:URLResponse = response  , error == nil else {
                ////print("error")
                return
            }
            
            let dataString = NSString(data: returnData!, encoding: String.Encoding.utf8.rawValue)
            //print(dataString!)
            do {
                
                if let json = try JSONSerialization.jsonObject(with: returnData!, options: []) as? NSDictionary {
                    
                    
                    responseDict = json
                    
                    //                    //print("The Requested API is \(responseDict)")
                    
                    
                } else {
                    let jsonStr = NSString(data: returnData!, encoding: String.Encoding.utf8.rawValue)
                    //print("Error could not parse JSON: \(jsonStr)")
                }
                
            } catch let parseError {
                //print(parseError)
                let jsonStr = NSString(data: returnData!, encoding: String.Encoding.utf8.rawValue)
                //print("Error could not parse JSON: '\(jsonStr)'")
            }
            
            //completionHandler!(responseDict)
            completion(responseDict)
        }
        
        task.resume()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

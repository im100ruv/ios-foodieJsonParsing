////
////  ViewController.swift
////  FoodieJsonParsing
////
////  Created by Im100ruv on 26/02/18.
////  Copyright © 2018 Im100ruv. All rights reserved.
////
//
//import UIKit
import Alamofire
//import SwiftyJSON
//
class ViewController: UIViewController {
    
    
//    let postURL = "http://emenu.foodiemenu.in/android_sms/emenu_data/jsonData.php"
//    let postURL = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670,151.1957&radius=500&types=food&name=cruise&key=AIzaSyAdHcAh6UlUe7eUIo7M_VEMGd5uX1PJnzA"
    //        let url = URL(string: jsonURL)
    
    //        //        let config = URLSessionConfiguration.default
    //        var request = URLRequest(url: url!)
    //        request.httpMethod = "POST"
    //        request.allHTTPHeaderFields = ["contenttype/application":"json"]
    
    let body = ["submenu_id": "1",
                "item_type": "non-veg"]
    
    override func viewDidLoad() {
        //        super.viewDidLoad()
//    Alamofire.request(postURL, method: .get, parameters: [], encoding: JSONEncoding.prettyPrinted)
//    .responseJSON { response in
//        print(response)
//        }
        
//        Alamofire.request(.POST, "http://emenu.foodiemenu.in/android_sms/emenu_data/jsonData.php", parameters: body, encoding: .JSON)
//            .responseJSON { request, response, JSON, error in
//                print(response)
//                print(JSON)
//                print(error)
//        }
        
    }
    
}
//
//    let url = "http://emenu.foodiemenu.in/android_sms/emenu_data/jsonData.php"
//    let body: [String: Any] = [
//        "submenu_id": "1",
//        "item_type": "non-veg"
//    ]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
////        Alamofire.request(.POST, "http://emenu.foodiemenu.in/android_sms/emenu_data/jsonData.php", parameters: ["submenu_id": "1", "item_type": "non-veg"], encoding: .JSON)
////            .response { request, response, data, error in
////                let dataString = NSString(data: data!, encoding:NSUTF8StringEncoding)
////                println(dataString)
////        }
//
//        Alamofire.request(url, method: .post, parameters: ["submenu_id": "1", "item_type": "non-veg"], encoding: JSONEncoding.default).responseJSON { (response) in
//            print(response.data as Any)
//            if response.result.error == nil {
////                if let json = response.result.value as? [Dictionary<String, Any>] {
////                    print(json)
//////                    if let email = json["user"] as? String{
//////                        self.userEmail = email
//////                    }
//////
//////                    if let token = json["token"] as? String{
//////                        self.authToken = token
//////                    }
////                }
//
//
//                guard let data = response.data else {return}
//                do {
//                    let json = try JSON(data: data)
//                    print(json)
////                    self.userEmail = json["user"].stringValue
////                    self.authToken = json["token"].stringValue
//                } catch {
//                    print(error)
//                }
//            } else {
//                debugPrint(response.result.error as Any)
//            }
//        }
//    }
//
//}



////
//import UIKit
////import SwiftyJSON
// struct FoodItem: Decodable {
//    let id : String
//    let submenu_id : String
//    let item_name : String
//    let item_image : String
//    let item_price : String
//    let item_description : String
//    let item_type : String
//}
//
//
//class ViewController: UIViewController {
//
////    var foodItems = [FoodItem]()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
////
////        let postURL = "http://emenu.foodiemenu.in/android_sms/emenu_data/jsonData.php"
//////        let url = URL(string: jsonURL)
////
//////        //        let config = URLSessionConfiguration.default
//////        var request = URLRequest(url: url!)
//////        request.httpMethod = "POST"
//////        request.allHTTPHeaderFields = ["contenttype/application":"json"]
////
////        let body = ["submenu_id": "1",
////                    "item_type": "non-veg"]
////
////
////        Alamofire.request(postURL, method: .post, parameters: body, encoding: JSONEncoding.default)
////            .responseJSON { response in
////                debugPrint(response)
////        }
//
////        //        let bodyData = "submenu_id=1&item_type=non-veg"
////        do {
////            request.httpBody = try JSONSerialization.data(withJSONObject: body, options: [])
////
////        } catch {
////            print(error.localizedDescription)
////        }
////
////        let session = URLSession.shared
////
////        session.dataTask(with: request) { (data, response, error) in
////            guard let data = data else { return }
////            do {
////                print(data)
////                let jsonString = String(data: data, encoding: .utf8)
////                print(jsonString)
////
////                let json = try JSONSerialization.jsonObject(with: data, options: [])
////
////                print(json)
////
////
////                //                self.foodItems = try JSONDecoder().decode([FoodItem].self, from: data!)
////                //
////                //                for eachItem in self.foodItems {
////                //                    print(eachItem.item_name + " : " + eachItem.item_image + " - " + eachItem.item_price + " - " + eachItem.item_description + "\n")
////                //                }
////            } catch {
////                print(error)
////            }
////            }.resume()
////    }
//
//}
//

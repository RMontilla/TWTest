//
//  TWLoginStore.swift
//  TeamworkTest
//
//  Created by Rafael Montilla on 5/24/18.
//  Copyright © 2018 Teamwork. All rights reserved.
//

import Foundation
import Alamofire

class TWLoginStore {
    static let sharedInstance = TWLoginStore()
    
    private init(){}
    
    func fetchProjects(completion: @escaping ([Project]?, Error?) -> ()) {
        
        let kApiKey = "twp_MhEAiCnLblBszfNEcklWsrx2cmH2:X"
        let kApiBaseURL = "http://rmontilla.teamwork.com/projects.json"
        let utf8str = kApiKey.data(using: String.Encoding.utf8)
        let base64Encoded = utf8str!.base64EncodedString()
        
        let headers = [
            "Authorization": "Basic \(base64Encoded)"
        ];
        // Fetch Request
        
        Alamofire.request(kApiBaseURL, method: .get, headers: headers)
            .responseJSON { response in
                

                if (response.result.error == nil) {
                    if let result = response.result.value {
                        let JSON = result as! NSDictionary
                        print(JSON)
                        let projectDictArray = JSON["projects"] as! [NSDictionary]
                        var projectArray = [Project]()
                        for dict in projectDictArray{
                            let project = Project.init(dictionary: dict)
                            projectArray.append(project)
                        }
                        completion(projectArray, nil)
                    } else {
                        
                        completion(nil, nil)
                    }
                }
                else {
                    debugPrint("HTTP Request failed: \(String(describing: response.result.error))")
                    completion(nil, response.result.error)
                }
        }
    }

}


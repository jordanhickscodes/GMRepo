//
//  CommitViewr.swift
//  GM API App
//
//  Created by Dj Haven on 2/26/21.
//

import Foundation
import UIKit
import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

class CommitViewer: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func callguthubapi(completion: @escaping () -> Void) {
        
        

        var semaphore = DispatchSemaphore (value: 0)

        var request = URLRequest(url: URL(string: "https://api.github.com/repos/jordanhickscodes/GMRepo/commits")!,timeoutInterval: Double.infinity)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          guard let data = data else {
            print(String(describing: error))
            semaphore.signal()
            return
          }
          print(String(data: data, encoding: .utf8)!)
          semaphore.signal()
        }

        task.resume()
        
                       
                       }


}

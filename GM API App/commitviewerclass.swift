//
//  commitviewerclass.swift
//  GM API App
//
//  Created by Dj Haven on 2/26/21.
//

import UIKit
import Foundation


class CommitViewerClass: UIViewController {
    
    struct GitInfo: Codable {
        
        let commits: [commit]    }
    
    
      
      struct commit: Codable  {
          let sha: String?
          let node_id: String?
          let commit: details
          
        
        init(json: [String: Any]) {
            sha = json["sha"] as? String ?? ""
            node_id = json["node_id"] as? String ?? ""
            commit = json["commit"] as! details
        
     }
        
       }
    
    struct details: Codable {
        
        let author: author
        let commiter: commiter
        let message: String
        let tree: tree
        let url: String
        let comment_count: Int
        let verification: verification
        
        init(json: [String: Any]) {
            author = json["author"] as! author
            commiter = json["commiter"] as! commiter
            message = json["message"] as? String ?? ""
            tree = json["tree"] as! tree
            url = json["url"] as? String ?? ""
            comment_count = json["comment_count:"] as? Int ?? 0
            verification = json["verification"] as! verification
        
     }
        
    }
    
    struct author: Codable  {
        let name: String?
        let email: String?
        let date: String?
        
      
      init(json: [String: Any]) {
          name = json["name"] as? String ?? ""
          email = json["email"] as? String ?? ""
          date = json["date"] as? String ?? ""
      
      }}
        
        struct commiter: Codable  {
            let name: String?
            let email: String?
            let date: String?
            
          
          init(json: [String: Any]) {
              name = json["name"] as? String ?? ""
              email = json["email"] as? String ?? ""
              date = json["date"] as? String ?? ""
          
          }}
    
            struct tree: Codable  {
                let sha: String?
                let url: String?
               
                
              
              init(json: [String: Any]) {
                sha = json["sha"] as? String ?? ""
                url = json["url"] as? String ?? ""
                 
              }}
    struct verification: Codable  {
        let verified: Bool?
        let reason: String?
        
        
      
      init(json: [String: Any]) {
        verified = json["sha"] as? Bool ?? true
        reason = json["url"] as? String ?? ""
        
      }}
}


//
//  twiiterApi.swift
//  twiPicApp
//
//  Created by 高橋知憲 on 2016/11/18.
//  Copyright © 2016年 高橋知憲. All rights reserved.
//
//
//import Foundation
//import TwitterKit
//
//class TwitterAPI {
//    let baseURL : String = "https://api.twitter.com"
//    let version : String = "/1.1"
//
//
//    init(){
//    
//    }
//
//    func getHomeTimeline (tweets: ([TWTRTweet])->(), error: (NSError) -> ()) {
//        
//        let api = TwitterAPI()
//        var clientError: NSError?
//        let path = "/statuses/home_timeline.json"
//        let endpoint = api.baseURL + api.version + path
//        var parameters:[NSObject:AnyObject] = [:]
//        let request:NSURLRequest! = Twitter.sharedInstance().a//sharedInstance().APIClient.URLRequestWithMethod("GET", URL: endpoint, parameters: parameters, error: &clientError)
//
//    }
//
//}

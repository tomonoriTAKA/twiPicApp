//
//  timeLineViewController.swift
//  twiPicApp
//
//  Created by 高橋知憲 on 2016/11/18.
//  Copyright © 2016年 高橋知憲. All rights reserved.
//

import UIKit
import TwitterKit

class UserTimelineViewController: TWTRTimelineViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let client = TWTRAPIClient()
        
        Twitter.sharedInstance().logIn { session, error in
            if (session != nil) {
                // ユーザ名からタイムラインを取得
                self.dataSource = TWTRUserTimelineDataSource(screenName: session!.userName, apiClient: client)
            } else {
                print("error: \(error!.localizedDescription)")
            }
        }

        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
    

}

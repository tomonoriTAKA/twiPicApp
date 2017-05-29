//
//  ViewController.swift
//  twiPicApp
//
//  Created by 高橋知憲 on 2016/11/17.
//  Copyright © 2016年 高橋知憲. All rights reserved.
//

import UIKit
import TwitterKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //ログインボタンの実装
        let loginButton = TWTRLogInButton(logInCompletion: {
            session, error in
            
            //誰かログインしてるとき
            if session != nil {
                print(session!.userName)
                let timelineVC = UserTimelineViewController()
                UIApplication.shared.keyWindow?.rootViewController = timelineVC
                
                
            } else {
                print(error!.localizedDescription)
            }
        })
        
        //ログインボタンを画面の中心に配置して表示
        loginButton.center = self.view.center
        self.view.addSubview(loginButton)
    }
    
}






//
//  TheRouterControllerC.swift
//  TheRouterSwift_Example
//
//  Created by mars.yao on 2023/7/27.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import TheRouterSwift
import SnapKit

class TheRouterControllerC: UIViewController {

    // 扫码完成回调
    public var qrResultCallBack: QrScanResultCallBack?
    
    private lazy var resultLabel: UILabel = {
        let lb = UILabel()
        lb.textColor = .black
        lb.font = UIFont.systemFont(ofSize: 15)
        lb.textAlignment = .center
        lb.numberOfLines = 0
        return lb
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .green
        self.view.addSubview(resultLabel)
    
        resultLabel.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.equalTo(200)
            make.center.equalTo(self.view.center)
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            
            guard let _resultCallBack = self.qrResultCallBack else { return }
            _resultCallBack("扫码回调了", false)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension TheRouterControllerC: TheRouterable {
    
    static var patternString: [String] {
        ["scheme://router/demo3",
         "scheme://router/demo33"]
    }
    
    static var descriptions: String {
        "TheRouterControllerCDemo"
    }
    
    static func registerAction(info: [String : Any]) -> Any {
        debugPrint(info)
        
        let vc =  TheRouterControllerC()
        vc.qrResultCallBack = info["clouse"] as? QrScanResultCallBack
        vc.resultLabel.text = info.description
        return vc
    }
}

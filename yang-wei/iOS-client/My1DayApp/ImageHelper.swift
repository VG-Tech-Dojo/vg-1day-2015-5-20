//
//  ImageHelper.swift
//  My1DayApp
//
//  Created by 清 貴幸 on 2015/05/15.
//  Copyright (c) 2015年 VOYAGE GROUP, inc. All rights reserved.
//

import UIKit

class ImageHelper: NSObject {
    /**
    Base64Encodeされた画像のバイナリ文字列をUIImage?に変換して返す関数
    
    :param: base64EncodedString Base64Encodeされた画像のバイナリ文字列
    
    :returns: UIImage?
    */
    static func imageWithBase64EncodedString(base64EncodedString: String) -> UIImage? {
        if let imageData = NSData(base64EncodedString: base64EncodedString, options: nil) , let image = UIImage(data: imageData) {
            return image
        }
        return nil
    }
}

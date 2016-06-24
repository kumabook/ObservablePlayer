//
//  VideoView.swift
//  PlayerKit
//
//  Created by Hiroki Kumamoto on 6/18/16.
//  Copyright © 2016 kumabook. All rights reserved.
//

import UIKit
import AVFoundation

public class VideoView: UIButton {
    public var player: AVPlayer? {
        get {
            let layer: AVPlayerLayer = self.layer as! AVPlayerLayer
            return layer.player
        }
        set(newValue) {
            let layer: AVPlayerLayer = self.layer as! AVPlayerLayer
            layer.player = newValue
        }
    }
    
    override public class func layerClass() -> AnyClass {
        return AVPlayerLayer.self
    }
}

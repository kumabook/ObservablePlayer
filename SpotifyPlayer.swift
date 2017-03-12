//
//  SpotifyPlayer.swift
//  PlayerKit
//
//  Created by Hiroki Kumamoto on 2017/03/09.
//  Copyright © 2017 kumabook. All rights reserved.
//

import Foundation

open class SpotifyPlayer: NSObject, ServicePlayer {
    public typealias ObserverType = ServicePlayerObserver
    public typealias EventType    = ServicePlayerEvent
    fileprivate var _observers: [ObserverType] = []
    open  var  observers: [ObserverType] {
        get { return _observers }
        set { _observers = newValue }
    }
    public var track: Track?
    open var state:       PlayerState  { return .init }
    open var playingInfo: PlayingInfo? { return nil }
    open var playerType:  PlayerType   { return .spotify }
    open func pause() {}
    open func play() {}
    open func clearPlayer() {}
    open func preparePlayer() {}
    open func seekToTime(_ time: TimeInterval) {}

    public override init() {
        track = nil
    }
}

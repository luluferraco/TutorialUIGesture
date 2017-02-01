//
//  GameScene.swift
//  Goal Line
//
//  Created by Pedro G. Branco on 11/12/15.
//  Copyright (c) 2015 Pedro G. Branco. All rights reserved.
//
import Foundation

class Clock {
    
    var endTime: Date!
    
    func startWithDuration(_ duration: TimeInterval) {
        let timeNow = Date();
        
        endTime = timeNow.addingTimeInterval(duration)
    }

    func hasFinished() -> Bool {
        return timeLeft() == 0
    }
    
    func timeLeft() -> TimeInterval {
        let now = Date()
        let remainSeconds = endTime.timeIntervalSince(now)
        
        return(max(remainSeconds, 0))
    }
}

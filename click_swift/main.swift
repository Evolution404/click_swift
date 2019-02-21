//
//  main.swift
//  click_swift
//
//  Created by 张玉玺 on 2019/1/18.
//  Copyright © 2019 张玉玺. All rights reserved.
//

import Foundation

// 分割两个屏幕的位置
let SPLIT_X:Double = 0
let leftPoint = CGPoint(x: -777, y: 226)
let rightPoint = CGPoint(x: 981, y: 113)
// 鼠标点击持续时间
let waitTime = 0.05

func clickPoint(p: CGPoint){
    let eDown = CGEvent(mouseEventSource: nil, mouseType: .leftMouseDown, mouseCursorPosition: p, mouseButton: .left)
    eDown?.post(tap: .cghidEventTap)
    let second: Double = 1000000
    usleep(useconds_t(waitTime * second)) //will sleep for 2 milliseconds (.002 seconds)
    let eUp = CGEvent(mouseEventSource: nil, mouseType: .leftMouseUp, mouseCursorPosition: p, mouseButton: .left)
    eUp?.post(tap: .cghidEventTap)
}



var e = CGEvent(source: nil)
var point = e?.location
if let p = point{
    if Double(p.x) < SPLIT_X{
        clickPoint(p:rightPoint)
    }else{
        clickPoint(p:leftPoint)
    }
}

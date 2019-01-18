//
//  main.swift
//  click_swift
//
//  Created by 张玉玺 on 2019/1/18.
//  Copyright © 2019 张玉玺. All rights reserved.
//

import Foundation

func clickPoint(p: CGPoint){
    let e = CGEvent(mouseEventSource: nil, mouseType: .leftMouseDown, mouseCursorPosition: p, mouseButton: .left)
    e?.post(tap: .cghidEventTap)
}

// 分割两个屏幕的位置
let SPLIT_X:Double = 1920
let leftPoint = CGPoint(x: 907, y: 226)
let rightPoint = CGPoint(x: 2659, y: 113)


var e = CGEvent(source: nil)
var point = e?.location
if let p = point{
    if Double(p.x) < SPLIT_X{
        clickPoint(p:rightPoint)
    }else{
        clickPoint(p:leftPoint)
    }
}



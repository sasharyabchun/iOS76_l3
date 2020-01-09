//
//  ViewController.swift
//  ios-76 ios-76 is076-l2-hw01
//
//  Created by Alexandr on 18.12.2019.
//  Copyright © 2019 Alexandr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //drawPyramid()
        drawTarget()
    }
    
    func drawPyramid() {
        let count = Int.random(in: 1...20)
        let screenSize = UIScreen.main.bounds
        let minSize = Int(screenSize.height > screenSize.width ? screenSize.width : screenSize.height)
        let piece = minSize / ( (count * 3) + count + 1)
        print(minSize)
        print(piece)
        
        for i in 0..<count {
            drawPyramidLine(startX: piece + piece * 2 * i, y: minSize - piece * i - piece * 3 * i, piece: piece, count: count - i)
        }
    }
    
    func drawPyramidLine(startX: Int, y: Int, piece: Int, count: Int) {
        let size = piece * 3
        for i in 0..<count {
            drawBox(x: startX + piece * i + size * i, y: y, size: size)
        }
    }
    
    func drawBox(x: Int, y: Int, size: Int, color: UIColor = .black) {
        let box = UIView(frame: CGRect(x: x, y: y, width: size, height: size))
        box.backgroundColor = color
        view.addSubview(box)
    }
    
    func drawTarget() {
        let boxSize = Int.random(in: 20...50)
        let lineLength = Int.random(in: 3...7)
        let startX = 50
        let startY = 50
        
        for i in 0..<lineLength - 1 {
            drawBox(x: startX + boxSize * i, y: startY, size: boxSize, color: .black)
            drawBox(x: startX, y: startY + boxSize * i + boxSize * (lineLength - 1), size: boxSize, color: .blue)
            drawBox(x: startX + boxSize * (lineLength - 1) - boxSize * i, y: startY + boxSize * (lineLength - 1), size: boxSize, color: .cyan)
            //drawBox(x: startX, y: startY, size: boxSize)
        }
        
    }
}


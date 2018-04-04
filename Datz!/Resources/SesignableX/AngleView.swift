//
//  AngleView.swift
//  Design Inspiration
//
//  Created by Charel Kremer on 29.03.18.
//  Copyright © 2018 https://stackoverflow.com/questions/41269309/create-a-diagonal-custom-uiview-in-swift. All rights reserved.
//

import UIKit

@IBDesignable
class AngleView: UIView {
	
	@IBInspectable public var heightA: CGFloat = 0
	@IBInspectable public var heightB: CGFloat = 0
	
	override func draw(_ rect: CGRect) {
		// Drawing code
		// Get Height and Width
		let layerHeight = layer.frame.height
		let layerWidth = layer.frame.width
		// Create Path
		let bezierPath = UIBezierPath()
		//  Points
		let pointA = CGPoint(x: 0, y: heightA)
		let pointB = CGPoint(x: layerWidth, y: heightB)
		let pointC = CGPoint(x: layerWidth, y: layerHeight)
		let pointD = CGPoint(x: 0, y: layerHeight)
		// Draw the path
		bezierPath.move(to: pointA)
		bezierPath.addLine(to: pointB)
		bezierPath.addLine(to: pointC)
		bezierPath.addLine(to: pointD)
		bezierPath.close()
		// Mask to Path
		let shapeLayer = CAShapeLayer()
		shapeLayer.path = bezierPath.cgPath
		layer.mask = shapeLayer
	}
}

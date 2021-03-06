/*
 * ProceduralImages.swift
 * Part of http://github.com/gfiumara/TwentyOne by Gregory Fiumara.
 * See LICENSE for details.
 */

import UIKit

public class ProceduralImages : NSObject {

    //// Cache

    private struct Cache {
        static let safariBlue: UIColor = UIColor(red: 0.340, green: 0.552, blue: 0.740, alpha: 1.000)
    }

    //// Colors

    public class var safariBlue: UIColor { return Cache.safariBlue }

    //// Drawing Methods

    public class func drawLargeSafari() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalInRect: CGRectMake(10, 10, 380, 380))
        ProceduralImages.safariBlue.setFill()
        ovalPath.fill()
        ProceduralImages.safariBlue.setStroke()
        ovalPath.lineWidth = 2
        ovalPath.stroke()


        //// Group
        //// Polygon Drawing
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, 267.85, 38.91)
        CGContextRotateCTM(context, 30 * CGFloat(M_PI) / 180)

        let polygonPath = UIBezierPath()
        polygonPath.moveToPoint(CGPointMake(25, 0))
        polygonPath.addLineToPoint(CGPointMake(46.65, 172.49))
        polygonPath.addLineToPoint(CGPointMake(3.35, 172.49))
        polygonPath.closePath()
        UIColor.redColor().setFill()
        polygonPath.fill()

        CGContextRestoreGState(context)


        //// Polygon 2 Drawing
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, 133.15, 371.09)
        CGContextRotateCTM(context, -150 * CGFloat(M_PI) / 180)

        let polygon2Path = UIBezierPath()
        polygon2Path.moveToPoint(CGPointMake(25, 0))
        polygon2Path.addLineToPoint(CGPointMake(46.65, 172.49))
        polygon2Path.addLineToPoint(CGPointMake(3.35, 172.49))
        polygon2Path.closePath()
        UIColor.whiteColor().setFill()
        polygon2Path.fill()

        CGContextRestoreGState(context)
    }

    public class func drawLargeContentBlocker() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Polygon Drawing
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, -53.78, 95.47)
        CGContextRotateCTM(context, -22.5 * CGFloat(M_PI) / 180)

        let polygonPath = UIBezierPath()
        polygonPath.moveToPoint(CGPointMake(195, 0))
        polygonPath.addLineToPoint(CGPointMake(332.89, 57.11))
        polygonPath.addLineToPoint(CGPointMake(390, 195))
        polygonPath.addLineToPoint(CGPointMake(332.89, 332.89))
        polygonPath.addLineToPoint(CGPointMake(195, 390))
        polygonPath.addLineToPoint(CGPointMake(57.11, 332.89))
        polygonPath.addLineToPoint(CGPointMake(0, 195))
        polygonPath.addLineToPoint(CGPointMake(57.11, 57.11))
        polygonPath.closePath()
        UIColor.redColor().setFill()
        polygonPath.fill()

        CGContextRestoreGState(context)


        //// Symbol Drawing
        let symbolRect = CGRectMake(101, 101, 200, 200)
        CGContextSaveGState(context)
        UIRectClip(symbolRect)
        CGContextTranslateCTM(context, symbolRect.origin.x, symbolRect.origin.y)
        CGContextScaleCTM(context, symbolRect.size.width / 400, symbolRect.size.height / 400)

        ProceduralImages.drawLargeSafari()
        CGContextRestoreGState(context)
    }

    public class func drawLargeSettings() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Group 2
        //// Rectangle 5 Drawing
        let rectangle5Path = UIBezierPath(rect: CGRectMake(165, 34, 70, 70))
        UIColor.darkGrayColor().setFill()
        rectangle5Path.fill()


        //// Rectangle 6 Drawing
        let rectangle6Path = UIBezierPath(rect: CGRectMake(165, 296, 70, 70))
        UIColor.darkGrayColor().setFill()
        rectangle6Path.fill()


        //// Rectangle 7 Drawing
        let rectangle7Path = UIBezierPath(rect: CGRectMake(34, 165, 70, 70))
        UIColor.darkGrayColor().setFill()
        rectangle7Path.fill()


        //// Rectangle 8 Drawing
        let rectangle8Path = UIBezierPath()
        rectangle8Path.moveToPoint(CGPointMake(295, 235))
        rectangle8Path.addLineToPoint(CGPointMake(365, 235))
        rectangle8Path.addLineToPoint(CGPointMake(365, 165))
        rectangle8Path.addLineToPoint(CGPointMake(295, 165))
        rectangle8Path.addLineToPoint(CGPointMake(295, 235))
        rectangle8Path.closePath()
        UIColor.darkGrayColor().setFill()
        rectangle8Path.fill()




        //// Group
        CGContextSaveGState(context)
        CGContextTranslateCTM(context, -34, 200)
        CGContextRotateCTM(context, -45 * CGFloat(M_PI) / 180)



        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRectMake(131, 0, 70, 70))
        UIColor.darkGrayColor().setFill()
        rectanglePath.fill()


        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRectMake(131, 262, 70, 70))
        UIColor.darkGrayColor().setFill()
        rectangle2Path.fill()


        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRectMake(0, 131, 70, 70))
        UIColor.darkGrayColor().setFill()
        rectangle3Path.fill()


        //// Rectangle 4 Drawing
        let rectangle4Path = UIBezierPath()
        rectangle4Path.moveToPoint(CGPointMake(261, 201))
        rectangle4Path.addLineToPoint(CGPointMake(331, 201))
        rectangle4Path.addLineToPoint(CGPointMake(331, 131))
        rectangle4Path.addLineToPoint(CGPointMake(261, 131))
        rectangle4Path.addLineToPoint(CGPointMake(261, 201))
        rectangle4Path.closePath()
        UIColor.darkGrayColor().setFill()
        rectangle4Path.fill()



        CGContextRestoreGState(context)


        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalInRect: CGRectMake(75, 75, 250, 250))
        UIColor.darkGrayColor().setFill()
        ovalPath.fill()
        UIColor.darkGrayColor().setStroke()
        ovalPath.lineWidth = 2
        ovalPath.stroke()


        //// Oval 2 Drawing
        let oval2Path = UIBezierPath(ovalInRect: CGRectMake(150, 150, 100, 100))
        UIColor.whiteColor().setFill()
        oval2Path.fill()
        UIColor.darkGrayColor().setStroke()
        oval2Path.lineWidth = 2
        oval2Path.stroke()
    }

    public class func drawTwentyOne() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(roundedRect: CGRectMake(112, 212, 800, 600), cornerRadius: 100)
        UIColor.darkGrayColor().setStroke()
        rectanglePath.lineWidth = 20
        rectanglePath.stroke()


        //// Text Drawing
        let textRect = CGRectMake(464.81, 431.09, 392.75, 161.82)
        let textTextContent = NSString(string: "XXI")
        let textStyle = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        textStyle.alignment = .Left

        let textFontAttributes = [NSFontAttributeName: UIFont(name: "Superclarendon-Regular", size: 175)!, NSForegroundColorAttributeName: UIColor.blackColor(), NSParagraphStyleAttributeName: textStyle]

        let textTextHeight: CGFloat = textTextContent.boundingRectWithSize(CGSizeMake(textRect.width, CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: textFontAttributes, context: nil).size.height
        CGContextSaveGState(context)
        CGContextClipToRect(context, textRect);
        textTextContent.drawInRect(CGRectMake(textRect.minX, textRect.minY + (textRect.height - textTextHeight) / 2, textRect.width, textTextHeight), withAttributes: textFontAttributes)
        CGContextRestoreGState(context)


        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(roundedRect: CGRectMake(464.56, 282, 393, 50), cornerRadius: 10)
        UIColor.lightGrayColor().setFill()
        rectangle3Path.fill()


        //// Rectangle 4 Drawing
        let rectangle4Path = UIBezierPath(roundedRect: CGRectMake(464.81, 692, 393, 50), cornerRadius: 10)
        UIColor.lightGrayColor().setFill()
        rectangle4Path.fill()


        //// Group
        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalInRect: CGRectMake(244.5, 384, 100, 100))
        UIColor.blackColor().setFill()
        ovalPath.fill()


        //// Rectangle 5 Drawing
        let rectangle5Path = UIBezierPath(roundedRect: CGRectMake(213.5, 476, 162, 260), byRoundingCorners: [UIRectCorner.TopLeft, UIRectCorner.TopRight], cornerRadii: CGSizeMake(25, 25))
        rectangle5Path.closePath()
        UIColor.blackColor().setFill()
        rectangle5Path.fill()


        //// Rectangle 6 Drawing
        let rectangle6Path = UIBezierPath(roundedRect: CGRectMake(244.5, 541.97, 10.5, 194.03), byRoundingCorners: [UIRectCorner.TopLeft, UIRectCorner.TopRight], cornerRadii: CGSizeMake(5.25, 5.25))
        rectangle6Path.closePath()
        UIColor.whiteColor().setFill()
        rectangle6Path.fill()


        //// Rectangle 7 Drawing
        let rectangle7Path = UIBezierPath(roundedRect: CGRectMake(334.5, 541.97, 10, 194.03), byRoundingCorners: [UIRectCorner.TopLeft, UIRectCorner.TopRight], cornerRadii: CGSizeMake(5, 5))
        rectangle7Path.closePath()
        UIColor.whiteColor().setFill()
        rectangle7Path.fill()




        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(roundedRect: CGRectMake(182, 282, 225, 460), cornerRadius: 25)
        UIColor.grayColor().setStroke()
        rectangle2Path.lineWidth = 20
        rectangle2Path.stroke()
    }

    public class func drawSafariStepIcon() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Symbol Drawing
        let symbolRect = CGRectMake(2.5, 2.5, 35, 35)
        CGContextSaveGState(context)
        UIRectClip(symbolRect)
        CGContextTranslateCTM(context, symbolRect.origin.x, symbolRect.origin.y)
        CGContextScaleCTM(context, symbolRect.size.width / 400, symbolRect.size.height / 400)

        ProceduralImages.drawLargeSafari()
        CGContextRestoreGState(context)
    }

    public class func drawSettingsStepIcon() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Symbol Drawing
        let symbolRect = CGRectMake(0, 0, 40, 40)
        CGContextSaveGState(context)
        UIRectClip(symbolRect)
        CGContextTranslateCTM(context, symbolRect.origin.x, symbolRect.origin.y)
        CGContextScaleCTM(context, symbolRect.size.width / 400, symbolRect.size.height / 400)

        ProceduralImages.drawLargeSettings()
        CGContextRestoreGState(context)
    }

    public class func drawContentBlockerStepIcon() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Symbol Drawing
        let symbolRect = CGRectMake(2.5, 2.5, 35, 35)
        CGContextSaveGState(context)
        UIRectClip(symbolRect)
        CGContextTranslateCTM(context, symbolRect.origin.x, symbolRect.origin.y)
        CGContextScaleCTM(context, symbolRect.size.width / 400, symbolRect.size.height / 400)

        ProceduralImages.drawLargeContentBlocker()
        CGContextRestoreGState(context)
    }

    public class func drawTwentyOneStepIcon() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Symbol Drawing
        let symbolRect = CGRectMake(0, 0, 40, 40)
        CGContextSaveGState(context)
        UIRectClip(symbolRect)
        CGContextTranslateCTM(context, symbolRect.origin.x, symbolRect.origin.y)
        CGContextScaleCTM(context, symbolRect.size.width / 1024, symbolRect.size.height / 1024)

        ProceduralImages.drawTwentyOne()
        CGContextRestoreGState(context)
    }

    public class func drawTwentyOneHeaderIcon() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Symbol Drawing
        let symbolRect = CGRectMake(-10, -10, 150, 150)
        CGContextSaveGState(context)
        UIRectClip(symbolRect)
        CGContextTranslateCTM(context, symbolRect.origin.x, symbolRect.origin.y)
        CGContextScaleCTM(context, symbolRect.size.width / 1024, symbolRect.size.height / 1024)

        ProceduralImages.drawTwentyOne()
        CGContextRestoreGState(context)
    }

}

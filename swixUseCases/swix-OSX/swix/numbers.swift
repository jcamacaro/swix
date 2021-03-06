//
//  constants.swift
//  swix
//
//  Created by Scott Sievert on 7/9/14.
//  Copyright (c) 2014 com.scott. All rights reserved.
//

import Foundation
import Accelerate

// should point to the swift folder
let S2_PREFIX = "\(NSHomeDirectory())/Developer/swix/swix/swix/swix/"
let PYTHON_PATH = "~/anaconda/bin/ipython"

// not using let in case someone wants a variable name phi/etc

// various important constants
var pi = 3.1415926535897932384626433832795028841971693993751058
var π = pi
var tau = 2 * pi
var τ = tau
var phi = (1 + sqrt(5.double))/2
var φ = phi
var e = exp(1.double)
var euler = 0.57721566490153286060651209008240243104215933593992

// largest possible value
var inf = 1.0 / 0.0

// smallest possible difference
var DOUBLE_EPSILON = DBL_EPSILON
var FLOAT_EPSILON = FLT_EPSILON

func close(x: Double, y: Double)->Bool{
    return abs(x-y)<1e-9
}
func ~= (x:Double, y:Double)->Bool{
    return close(x, y)
}

// use 3.double or 3.14.int or N.int
extension Int{
    var int:Int {return Int(self)}
    var cint:CInt {return CInt(self)}
    var float:Float {return Float(self)}
    var double:Double {return Double(self)}
}
extension Double{
    var int:Int {return Int(self)}
    var float:Float {return Float(self)}
    var double:Double {return Double(self)}
    var cdouble:CDouble {return CDouble(self)}
}
extension CInt{
    var int:Int {return Int(self)}
    var float:Float {return Float(self)}
    var double:Double {return Double(self)}
}
extension Float{
    var int:Int {return Int(self)}
    var cfloat:CFloat {return CFloat(self)}
    var float:Float {return Float(self)}
    var double:Double {return Double(self)}

}
extension String {
    var floatValue: Float {
        return (self as NSString).floatValue
    }
    var doubleValue: Double {
        return (self as NSString).doubleValue
    }
    var nsstring:NSString {return NSString(string:self)}
}

// damn integer division causes headaches
infix operator  / {associativity none precedence 140}
func / (lhs: Int, rhs: Int) -> Double{
    return lhs.double / rhs.double}
func / (lhs: Double, rhs: Int) -> Double{
    return lhs / rhs.double}

// a quick hack to get what I want
func isNumber(x: Double)   ->Bool{return true}
func isNumber(x: Float)    ->Bool{return true}
func isNumber(x: Int)      ->Bool{return true}
func isNumber(x: CInt)     ->Bool{return true}
func isNumber(x: ndarray)   ->Bool{return false}
func isNumber(x: matrix) ->Bool{return false}
func isNumber(x: AnyObject)->Bool{return false}










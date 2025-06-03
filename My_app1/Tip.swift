//
//  Tip.swift
//  My_app1
//
//  Created by Alex del Barrio on 3/6/25.
//

import Foundation

struct Tip: Decodable {
    let text : String
    let children : [Tip]?
}

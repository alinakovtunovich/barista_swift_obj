//
//  File.swift
//  proj
//
//  Created by Алина Ковтунович on 01.02.2024.
//
import Foundation

protocol IBarista {
    func brew()
}

@objc class BaristaMachine: NSObject, IBarista {
    @objc let coffee : String
    @objc let time: String = "Coffee is brewing. 1 minute - time left"

    @objc init(coffee: String) {
        self.coffee = coffee
    }

    @objc func brew() {

        print(time)
        print("Coffee is ready!")
    }
}

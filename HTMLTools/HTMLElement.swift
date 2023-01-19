//
//
//  HTMLElement.swift
//  HTMLTools
//
// Created on 18.01.23.
// Created for HTMLTools in 2023
// Using Swift 5.0
//

import Foundation

class HTMLElement {
    let name: String
    let text: String?

    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }

    deinit {
        print("\(name) is being deinited")
    }

    lazy var asHTML: () -> String = {
        [unowned self] in
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }
}

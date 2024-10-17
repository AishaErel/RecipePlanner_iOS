//
//  Extensions.swift
//  todolist
//
//  Created by Ayse Ceyda Erel on 7/22/24.
//

import Foundation
extension Encodable {
    func asDictionary() -> [String: Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:] //else return emptry dictionary
        }
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
            
        } catch {
            return [:]
        }
    }
}

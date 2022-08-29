//
//  TodoItem.swift
//  Todo
//
//  Created by 渡辺涼太 on 2022/08/21.
//

import Foundation
import RealmSwift

class TodoItem: Object {
    @objc dynamic var id = ""
    @objc dynamic var title = ""
    @objc dynamic var date = Date()
}

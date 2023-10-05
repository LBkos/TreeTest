//
//  Node+CoreDataProperties.swift
//  Tree
//
//  Created by Константин Лопаткин on 05.10.2023.
//
//

import Foundation
import CoreData


extension Node {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Node> {
        return NSFetchRequest<Node>(entityName: "Node")
    }

    @NSManaged public var child: [Node]?
    @NSManaged public var name: String?
    @NSManaged public var root: Node?
    @NSManaged public var children: NSSet?
    @NSManaged public var parent: Node?

}

// MARK: Generated accessors for children
extension Node {

    @objc(addChildrenObject:)
    @NSManaged public func addToChildren(_ value: Node)

    @objc(removeChildrenObject:)
    @NSManaged public func removeFromChildren(_ value: Node)

    @objc(addChildren:)
    @NSManaged public func addToChildren(_ values: NSSet)

    @objc(removeChildren:)
    @NSManaged public func removeFromChildren(_ values: NSSet)

}

extension Node : Identifiable {

}

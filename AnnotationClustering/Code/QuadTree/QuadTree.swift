//
//  QuadTree.swift
//  AnnotationClustering
//
//  Created by Gunter Hager on 07.06.16.
//  Copyright © 2016 Gunter Hager. All rights reserved.
//

final class QuadTree<T: Annotation> {
    
    var rootNode: QuadTreeNode<T>
        
    init () {
        rootNode = QuadTreeNode(boundingBox: BoundingBox())
    }
    
    var allAnnotations: [T] {
        return rootNode.allAnnotations
    }
    
    func addAnnotation(_ annotation: T) -> Bool {
        return rootNode.addAnnotation(annotation)
    }
    
    func forEachAnnotation(_ block: (T) -> Void) {
        forEachAnnotationInBox(BoundingBox(), block: block)
    }
    
    func forEachAnnotationInBox(_ box: BoundingBox, block: (T) -> Void) {
        rootNode.forEachAnnotationInBox(box, block: block)
    }
}

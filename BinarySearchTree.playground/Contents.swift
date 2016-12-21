//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// Implementing a Binary Search Tree
//insert items and print all left and right subtree elements


class Node {
    
    var data : Int?
    var leftNode : Node?
    var rightNode : Node?
    
    init(inputData : Int) {
        self.data = inputData
    }
}


class BinarySearchTree {
    
    var rootNode : Node?
    public func  insertItem( num : Int){
        if rootNode == nil {
            rootNode = Node(inputData: num)
            return
        }
        self.insertNum(inputData: num, atNode: rootNode!)
    
    }
    //Function to insert an item in to the tree
    private func insertNum(inputData : Int, atNode inputNode:Node) {
        
        let node = Node(inputData: inputData)
        if inputData <= inputNode.data! {
            if inputNode.leftNode != nil {
                insertNum(inputData: inputData, atNode: inputNode.leftNode!)
            } else {
                inputNode.leftNode = node
            }
        } else {
            if inputNode.rightNode != nil {
               insertNum(inputData: inputData, atNode: inputNode.rightNode!)
            } else {
                inputNode.rightNode = node
            }
        }
    }
    
    //Function to search an item in the BST
    
    func searchItem (item : Int) {
        var node = self.rootNode
        while node?.data != item {
            if item < (node?.data)! {
                if node?.leftNode == nil {
                    print("Not found")
                    return
               }
                node = node?.leftNode
            } else {
                if node?.rightNode == nil {
                    print("Not found")
                    return
                }
                node = node?.rightNode
            }
        
    }
    print("Found")
        
    }
    
    //Search for item recursively
    func recursiveSearch (item : Int, inputnode : Node?){
        
        var node  = inputnode
        if node == nil {
            print("Not found")
            return
        } else {
            
            if node?.data == item {
                print("Found")
                return
            }
            
            if item <= (node?.data!)! {
                node = node?.leftNode
                recursiveSearch(item: item, inputnode: node)
                
            } else {
                node = node?.rightNode
                 recursiveSearch(item: item, inputnode: node)
            }
            
        }
        
        
    }
    
    
    
    
    
    // Function to find the height of the tree (it is the number edges to the farthest leaf)
    func findheightOfNode(inputNode : Node?) -> Int {
        
        if (inputNode == nil) {
            return -1
        }
        return max(findheightOfNode(inputNode: inputNode?.leftNode), findheightOfNode(inputNode: inputNode?.rightNode)) + 1
        
    }
    
    // Function to print all values using (Breadth First Search) algorithm
    func levelOrderTraversal() {
        if rootNode == nil {
            return
        }
        var queue : [Node] = []
        queue.append(rootNode!)
        
        while (!queue.isEmpty){
           let firstnode = queue.removeFirst()
            print(firstnode.data ?? 0)
            if firstnode.leftNode  != nil {
                queue.append(firstnode.leftNode!)
            }
            if firstnode.rightNode != nil {
                queue.append(firstnode.rightNode!)
            }
        }
    }
    
    // Depth First Search Techniques 
    
    // Function to print all values using  Pre-Order Traversal algorithm 
    
    func performPreOrderTraversal(root : Node?)
    {
        if root == nil {
            return
        }
        print(root?.data ?? 0)
        performPreOrderTraversal(root: root?.leftNode)
        performPreOrderTraversal(root: root?.rightNode)
    }
    
    // Function to print all values using  In-Order Traversal algorithm
    
    func performInOrderTraversal(root : Node?)
    {
        
        if root == nil {
            return
        }
        performInOrderTraversal(root: root?.leftNode)
        print(root?.data ?? 0)
        performInOrderTraversal(root: root?.rightNode)
        
    }
    
    // Function to print all values using  Post-Order Traversal algorithm 
    func performPostOrderTraversal(root : Node?)
    {
        
        if root == nil {
            return
        }
        performPostOrderTraversal(root: root?.leftNode)
        performPostOrderTraversal(root: root?.rightNode)
        print(root?.data ?? 0)
        
    }

    
    
    
    
    
    
    
    
    //print all right and left node values of BST
    func printAllValues() {
        
        var node = self.rootNode
        repeat {
            print(node?.data ?? 0)
            node = node?.leftNode
        } while node != nil
         var node1 = self.rootNode
        repeat {
            print(node1?.data ?? 0)
            node1 = node1?.rightNode
        } while node1 != nil
    }
}




var tree = BinarySearchTree()
tree.insertItem(num: 50)
tree.insertItem(num: 40)
tree.insertItem(num: 80)
tree.insertItem(num: 41)
tree.insertItem(num: 42)
tree.insertItem(num: 43)
tree.insertItem(num:20)
//tree.printAllValues()
//tree.levelOrderTraversal()
tree.performPreOrderTraversal(root: tree.rootNode)
print("--------")
tree.performInOrderTraversal(root: tree.rootNode)
print("--------")
tree.performPostOrderTraversal(root: tree.rootNode)

//let height = tree.findheightOfNode(inputNode:tree.rootNode)
//print(height)
//tree.searchItem(item: 8)
//tree.searchItem(item: 5)
//tree.recursiveSearch(item: 123, inputnode: tree.rootNode)











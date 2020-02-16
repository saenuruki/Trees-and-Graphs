/*
 Trees And Graphs
 4.1. Route Between Nodes:
      Given a directed graph, design an algorithem to find out whether there is a route between two nodes.
 */

struct Graph {
    var nodes: [Node] = []
    
    init(nodes: [Node]) {
        self.nodes = nodes
    }
}

struct Node {
    var name: String = ""
    var children: [Node] = []
    
    init(name: String, children: [Node]) {
        self.name = name
        self.children = children
    }
}

func search(graph: Graph, startNode: Node, targetNode: Node) -> Bool {
    
    if startNode.name == targetNode.name { return true }
    
    var queue: [Node] = []
    
    queue.append(startNode)
    
    while !queue.isEmpty {
        let dequeueNode = queue.removeFirst()
        if dequeueNode.name == targetNode.name { return true }
        dequeueNode.children.forEach { node in
            queue.append(node)
        }
    }
    return false
}


let node1 = Node(name: "1", children: [])
let node2 = Node(name: "2", children: [])
let node3 = Node(name: "3", children: [])
let node4 = Node(name: "4", children: [])
let node5 = Node(name: "5", children: [node1, node2])
let node6 = Node(name: "6", children: [])
let node7 = Node(name: "7", children: [node5, node6])
let node8 = Node(name: "8", children: [])
let node9 = Node(name: "9", children: [node3, node7])
let node10 = Node(name: "10", children: [node8, node9])

let graph = Graph(nodes: [node10, node4])
let result1 = search(graph: graph, startNode: node10, targetNode: node5)
print("探索結果： \(result1)")

let result2 = search(graph: graph, startNode: node10, targetNode: node4)
print("探索結果： \(result2)")

let result3 = search(graph: graph, startNode: node9, targetNode: node5)
print("探索結果： \(result3)")

let result4 = search(graph: graph, startNode: node8, targetNode: node5)
print("探索結果： \(result4)")

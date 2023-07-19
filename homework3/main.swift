//fill the missing implementation
class List<T> {
    var value: T
    var next: List<T>?
    
    init(_ items: Any...) {
        self.value = items[0] as! T
    }
}

extension List {
    subscript(index: Int) -> T? {
        var currentNode = self
        var currentIndex = 0
        
        while currentNode.next != nil {
            if currentIndex == index {
                return currentNode.value
            }
            
            currentNode = currentNode.next!
            currentIndex += 1
        }
        
        return nil
    }
}

extension List {
    var length: Int {
        var count = 0
        var currentNode: List<T>? = self
        
        while currentNode != nil {
            count += 1
            currentNode = currentNode!.next
        }
        
        if count != 0
        {
            return count
        }
        else
        {
            return -1
        }
    }
}


extension List {
    func flatten() -> List {
        var currentNode: List<T>? = self
        
        while currentNode != nil {
            if currentNode!.value is List<T> {
                currentNode!.flattenNestedList()
            }
            
            currentNode = currentNode!.next
        }
        
        return self
    }
    
    private func flattenNestedList() {
        var lastNode: List<T>? = self
        var currentNode: List<T>? = self.value as? List<T>
        
        while currentNode != nil {
            lastNode!.next = currentNode
            lastNode = lastNode!.next
            
            currentNode = currentNode!.next
        }
        
        lastNode!.next = self.next
    }
}

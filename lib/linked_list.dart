class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value => ${next.toString()}';
  }
}

class LinkedList<E> extends Iterable<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }

  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while(currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex++;
    }
    return currentNode;
  }

  Node<E>? insertAfter(Node<E> node, E value) {
    if (tail == node) {
      append(value);
      return tail;
    }
    node.next = Node(value: value, next: node.next);
    return node.next;
  }

  E? pop() {
    final value = head?.value;
    head = head?.next;
    if (isEmpty) {
      tail = null;
    }
    return value;
  }

  E? removeLast() {
    if (head?.next == null) return pop();
    var current = head;
    while(current!.next != tail) {
      current = current.next;
    }

    final value = tail?.value;
    tail = current;
    tail?.next = null;
    return value;
  }

  E? removeAfter(Node<E> node) {
    final value = node.next?.value;
    if (tail == node.next) {
      tail = node;
    }
    node.next = node.next?.next;
    return value;
  }

  @override
  // TODO: implement iterator
  Iterator<E> get iterator => _LinkedListIterator(this);


}

class _LinkedListIterator<E> implements Iterator<E> {
  _LinkedListIterator(LinkedList<E> list): _list = list;
  final LinkedList<E> _list;
  Node<E>? _currentNode;

  @override
  // TODO: implement current
  E get current => _currentNode!.value;


  bool _firstPass = true;

  @override
  bool moveNext() {
    if (_list.isEmpty) return false;
    if(_firstPass){
      _currentNode = _list.head;
      _firstPass = false;
    } else {
      _currentNode = _currentNode?.next;
    }
    return _currentNode != null;
  }
}

class Vector2d {
  // ...

  Vector2d.named({required this.x, required this.y});
  final int x;
  final int y;
}

class Vector3d extends Vector2d {

  Vector3d.yzPlane({required super.y, required this.z}) : super.named(x: 0);
  final int z;

  @override
  String toString() {
    return 'Vector3d{x: $x, y: $y, z: $z}';
  }
}
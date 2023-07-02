class Stack<E> {
  Stack():_storage = <E>[];
  final List<E> _storage;

  @override
  String toString() {
    return '--- TOP ---\n'
    '${_storage.reversed.join('\n')}'
    '\n-----------';
  }

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

  E peek() => _storage.last;

  bool get isEmpty => _storage.isEmpty;
}

abstract class A {
  void fly();
}

abstract interface class B {
  void fly();
}

class C implements A, B {
  @override
  void fly() {
    print('I m flying');
  }

}

void main() {
  var stack = Stack();
  stack.push(45);
  stack.push(55);
  stack.push(77);
  stack.push(77);
  stack.push(77);
  stack.pop();
  print(stack.toString());
}
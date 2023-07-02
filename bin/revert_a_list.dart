import 'stack.dart';

List revertList(List list) {
  var stack = Stack();
  var result = [];
  for(final el in list) {
    stack.push(el);
  }
  while(!stack.isEmpty) {
    result.add(stack.pop());
  }
  return result;
}

void main() {
  print(revertList([12, 85, 'abc']));
}
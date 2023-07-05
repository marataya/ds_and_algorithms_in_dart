import 'package:ds_and_algorithms_in_dart/linked_list.dart';

void main() {
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  list.push(0);
  list.append(7);
  list.append(9);
  list.insertAfter(list.nodeAt(2)!, 88);
  print(list);
  print(list.pop());
  print(list);
  print(list.removeLast());
  print(list);
  print(list.removeAfter(list.nodeAt(2)!));
  print(list);
  for (final el in list) {
    print(el);
  }

}
main() {
  Doubly doubly = Doubly();
  doubly
    ..addNode(7)
    ..addNode(8)
    ..addNode(98)
    ..addNode(45)
    ..printing();
  print('reversing');
  doubly.reversePrinting();
  print('deleted');
  doubly.deleting(98);
  doubly.printing();
}

class Node {
  int data;
  Node? next;
  Node? prev;
  Node(this.data);
}

class Doubly {
  Node? head;
  Node? tail;

  addNode(data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  printing() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  reversePrinting() {
    Node? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }

  void deleting(int target) {
    if (head?.data == target) {
      head = head?.next;
      head?.prev = null;
      return;
    }

    if (tail?.data == target) {
      tail = tail?.prev;
      tail?.next = null;
      return;
    }

    Node? temp = head;

    while (temp != null && temp.data != target) {
      temp = temp.next;
    }
    if (temp == null) {
      print('target not found');
      return;
    }

    Node? prevNode = temp.prev;
    Node? nextto = temp.next;

    prevNode?.next = nextto;
    nextto?.prev = prevNode;
  }

  
}

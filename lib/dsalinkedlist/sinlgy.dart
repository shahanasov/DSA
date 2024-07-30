void main(List<String> args) {
  Doubly doubly = Doubly();
  doubly
    ..addNode(12)
    ..addNode(23)
    ..addNode(34)
    ..addNode(45)
    ..printNormal();
  print('delete and printing');
  doubly
    // ..printreverse()
    ..deleteNextOne(23)
    ..printNormal();
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
    Node newOne = Node(data);
    if (head == null) {
      head = newOne;
    } else {
      tail?.next = newOne;
      newOne.prev = tail;
    }
    tail = newOne;
  }

  printNormal() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  printreverse() {
    Node? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }

  daleting(int target) {
    
    if (head?.data == target) {
      head = head?.next;
    }
    if (tail?.data == target) {
      tail = tail?.prev;
    }

    Node? temp = head;
    while (temp != null && temp.data != target) {
      temp = temp.next;
    }

    Node? nextto = temp?.next;
    Node? prevNode = temp?.prev;

    prevNode?.next = nextto;
    nextto?.prev = prevNode;
  }

  deleteNextOne(int target) {
    if (head?.data == target) {
      print('Nothing to delete');
      return;
    }

    if (head?.next?.data == target) {
      head = head?.next;
      head?.prev = null;
    }

    Node? temp = head;
    while (temp != null) {
      temp = temp.next;
    }

    Node? todelete = temp?.prev;
    Node? previ = todelete?.prev;

    previ?.next = temp;
    temp?.prev = previ;
  }

  deletingAfter(int target) {
    if (tail?.data == target) {
      print('Nothing to delete');
    }

    if (tail?.next?.data == target) {
      tail = tail?.prev;
      tail?.next = null;
    }

    Node? temp = head;
    while (temp != null && temp.data != target) {
      temp = temp.next;
    }
  }
}

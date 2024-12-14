void main() {
  SignlyList singly = SignlyList();
  singly.addNode(3);
  singly.addNode(2);
  singly.addNode(7);
  singly.addNode(9);
  singly.printing();

  SignlyList second = SignlyList();
  second.addNode(2);
  second.addNode(8);
  second.addNode(6);
  second.addNode(2);
  second.printing();

  print('After merging');
  singly.merging(singly.tail, second.head);
  singly.printing();

  print('after sorting');
  singly.sorting(singly.head);
  singly.printing();

  print('after deleting');
  singly.head = singly.deletedupli(singly.head);
  singly.printing();
}

class Node {
  int data;
  Node? next;
  Node(this.data);
}

class SignlyList {
  Node? head;
  Node? tail;

  addNode(data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

  printing() {
    if (head == null) {
      print('Empty list');
      return;
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  merging(Node? tail, Node? secondhead) {
    tail?.next ??= secondhead;
  }

  sorting(head) {
    int tem = 0;
    Node? temp = head;
    Node? nextto;
    if (head == null) {
      print('empty list');
      return;
    }

    while (temp != null) {
      nextto = temp.next;
      while (nextto != null) {
        if (temp.data > nextto.data) {
          tem = temp.data;
          temp.data = nextto.data;
          nextto.data = tem;
        }
        nextto = nextto.next;
      }
      temp = temp.next;
    }
  }

  Node? deleting(head, key) {
    Node? temp = head;
    Node? prev;

    if (temp != null && temp.data == key) {
      head = temp.next;
      return head;
    }

    while (temp != null && temp.data != key) {
      prev = temp;
      temp = temp.next;
    }
    if (temp == null) {
      return head;
    }
    prev?.next = temp.next;
    return head;
  }

  Node? deletedupli(head) {
    Node? temp = head;
    Node? nextto;
    while (temp != null) {
      nextto = temp.next;
      while (nextto != null && nextto.data == temp.data) {
        nextto = nextto.next;
      }
      temp.next = nextto;
      temp = nextto;
    }
    return head;
  }

  
  deletedupli2(){
    Node? temp=head;
    Node? nextto;
    while(temp!=null){
      nextto=temp.next;
      while(nextto?.data==temp.data){
        nextto=nextto?.next;
      }
      temp.next=nextto;
      temp=temp.next;
    }
  }


  Node? reverse(){
    Node? temp=head,prev,nextto;
    while(temp!=null){
      nextto=temp.next;
      temp.next=prev;
      prev=temp;
      temp=nextto;
    }
    return prev;
  }
  
}

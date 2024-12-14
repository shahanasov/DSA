class Node{
  int data;
  Node? next;
  Node(this.data);
}

Node? top;
push(data){
  Node newNode=Node(data);
  if(top==null){
    top=newNode;
  }else{
    newNode.next=top;
    top=newNode;
  }
}
display(){
  Node? temp=top;
  while(temp!=null){
    print(temp.data);
    temp=temp.next;
  }
}

pop(){
  if(top==null){
    print('stackUnderflow');
    return;
  }
  top=top?.next;
}
void main(List<String> args) {
  push(9);
  push(4);
  push(7);
  push(6);
  pop();
  display();
}


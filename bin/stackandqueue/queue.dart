class Node{
  int data;
  Node? next;
  Node(this.data);
}

Node? front;
Node? rear;

enqueue(int data){
  Node newNode=Node(data);
  if(rear==null){
   front=rear=newNode;
   return;
  }else{
    rear?.next=newNode;
    rear=newNode;
  }
}

dequeue(){
  if(front==null){
    print('empty queue');
    return;
  }
  front=front?.next;
  if(front==null){
    rear=null;
  }
}

display(){
  Node? temp=front;
  while(temp!=null){
    print(temp.data);
    temp=temp.next;
  }
}

void main(){
  enqueue(7);
  enqueue(5);
  enqueue(9);
  enqueue(60);
  dequeue();
  
  display();
}
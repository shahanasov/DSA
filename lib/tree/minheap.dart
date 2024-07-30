class MinHeap{
  late List heap;
  MinHeap(){
    heap=[];
  }

  swap(int i, int j){
    var temp=heap[i];
    heap[i]=heap[j];
    heap[j]=temp;
  }

  insert(List array){
    for (var val in array){
      heap.add(val);
      heapifyUp(heap.length-1);
    }
  }

  heapifyUp(int pos){
    while(pos>0){
      int parent=(pos-1)~/2;
      if(heap[pos]<heap[parent]){
        swap(pos, parent);
        pos=parent;
      }else{
        break;
      }
    }
  }

  delete(){
    swap(heap.length-1, 0);
    heap.removeLast();
    heapifyDown();
  }

  heapifyDown(){
    int parent=0;
    var leftchild=parent*2+1;
    var rightchild=parent*2+2;

    while(parent*2+1<heap.length){
      var minchild=min(leftchild,rightchild);
      if (heap[minchild]<heap[parent]){
        swap(parent, minchild);
        parent=minchild;
      }else{
        break;
      }
      leftchild=parent*2+1;
      rightchild=parent*2+2;
    }
  }

  min(int i, int j){
    if(j<heap.length){
      if(heap[i]<heap[j]){
        return i;
      }else{
        return j;
      }
    }
    return i;
  }

  List<int> sorting(){
    List<int> sorted=[];
    while(heap.isNotEmpty){
      sorted.add(heap[0]);
      delete();
    }
    return sorted;
  }
}

void main(List<String> args) {
  MinHeap heap=MinHeap();
  heap.insert([1,8,8,6,9,7]);
  print("${heap.heap}");
 List<int> sorted= heap.sorting();
 print(sorted);
}

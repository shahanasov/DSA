class Maxheap {
  late List heap;
  Maxheap() {
    heap = [];
  }

  swaping(int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

  insert(List array) {
    for (var val in array) {
      heap.add(val);
      heapifyUp(heap.length - 1);
    }
  }

  void heapifyUp(int pos) {
    while (pos > 0) {
      int parent = (pos - 1) ~/ 2;
      if (heap[pos] > heap[parent]) {
        swaping(pos, parent);
        pos = parent;
      } else {
        break;
      }
    }
  }

  deleting() {
    swaping(heap.length - 1, 0);
    heap.removeLast();
    heapifyDown();
  }

  heapifyDown() {
    int parent = 0;
    var leftchild = parent * 2 + 1;
    var rightchild = parent * 2 + 2;

    while (parent * 2 + 1 < heap.length) {
      var maxchild = max(leftchild, rightchild);
      if (heap[maxchild] > heap[parent]) {
        swaping(parent, maxchild);
        parent = maxchild;
      } else {
        break;
      }
      leftchild = parent * 2 + 1;
      rightchild = parent * 2 + 2;
    }
  }

  int max(int i, int j) {
    if (j < heap.length) {
      if (heap[i] > heap[j]) {
        return i;
      } else {
        return j;
      }
    }
    return i;
  }

  sorting() {
    List<int> sorted = [];
    while (heap.isNotEmpty) {
      sorted.add(heap[0]);
      deleting();
    }
    return sorted;
  }
}

void main(List<String> args) {
  Maxheap heap = Maxheap();
  heap.insert([1, 8, 8, 6, 9, 7]);
  print("${heap.heap}");
  List<int> sorted = heap.sorting();
  print(sorted);
}

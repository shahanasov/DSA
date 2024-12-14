class Node {
  int data;
  Node? left, right;
  Node(this.data);
}

Node? root;

insert(int data) {
  Node? current = root;
  Node newNode = Node(data);
  if (current == null) {
    root = newNode;
    return;
  }
  while (current != null) {
    if (data < current.data) {
      if (current.left == null) {
        current.left = newNode;
        break;
      } else {
        current = current.left;
      }
    } else if (data > current.data) {
      if (current.right == null) {
        current.right = newNode;
      } else {
        current = current.right;
      }
    } else {
      break;
    }
  }
}

bool contains(int key) {
  Node? corrent = root;
  while (corrent != null) {
    if (key < corrent.data) {
      corrent = corrent.left;
    } else if (key > corrent.data) {
      corrent = corrent.right;
    } else {
      return true;
    }
  }
  return false;
}

remove(int data) {
  removeHelper(data, root, null);
}

removeHelper(int data, Node? current, Node? parent) {
  while (current != null) {
    if (data < current.data) {
      parent = current;
      current = current.left;
    } else if (data > current.data) {
      parent = current;
      current = current.right;
    } else {
      if (current.left != null && current.right != null) {
        current.data = getMinValue(current.right);
        removeHelper(current.data, current.right, current);
      } else {
        if (parent == null) {
          if (current.right == null) {
            root = current.left;
          } else {
            root = current.right;
          }
        } else {
          if (parent.left == current) {
            if (current.right == null) {
              parent.left = current.left;
            } else {
              parent.left = current.right;
            }
          } else {
            if (current.right == null) {
              parent.right = current.left;
            } else {
              parent.right = current.right;
            }
          }
        }
      } 
      break;
    }
  }
}

getMinValue(Node? current) {
  if (current?.left == null) {
    return current?.data;
  } else {
    return getMinValue(current?.left);
  }
}

inOrder(Node? node) {
  if (node != null) {
    inOrder(node.left);
    print(node.data);
    inOrder(node.right);
  }
}

preOrder(Node? node) {
  if (node != null) {
    print(node.data);
    preOrder(node.left);
    preOrder(node.right);
  }
}

postOrder(Node? node) {
  if (node != null) {
    postOrder(node.left);
    postOrder(node.right);
    print(node.data);
  }
}

void main() {
  insert(10);
  insert(8);
  insert(15);
  insert(6);
  insert(12);
  insert(18);
  remove(18);
// crct inOrder(root);
// preOrder(root);

postOrder(root);
}

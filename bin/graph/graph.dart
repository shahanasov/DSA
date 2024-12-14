class Graph {
  late Map<int, List<int>> map;

  Graph() {
    map = {};
  }


  addVertex(int vertex) {
    if (!map.containsKey(vertex)) {
      map[vertex] = [];
    }
  }

  addEdge(int vertex,int edge,bool direction){
    if(!map.containsKey(vertex)){
      addVertex(vertex);
    }
    if(!map.containsKey(edge)){
      addVertex(edge);
    }
    map[vertex]!.add(edge);
    if(direction){
      map[edge]!.add(vertex);
    }
  }

  printGraph(){
    map.forEach((key, value) {
      print("$key : ${value.join(',')}");
    });
  }

    deleteVertex(int vertex) {
    if (map.containsKey(vertex)) {
      map.remove(vertex);
      map.forEach((key, value) {
        value.removeWhere((element) => element == vertex);
      });
    }
  }

    deleteEdge(int vertex, int edge, bool direction) {
    if (map.containsKey(vertex) && map[vertex]!.contains(edge)) {
      map[vertex]!.remove(edge);
      if (direction && map.containsKey(edge)) {
        map[edge]!.remove(vertex);
      }
    }
  }




  // void bfs(int startVertex) {
  //   List<bool> visited = List<bool>.filled(map.length, false);
  //   Queue<int> queue = Queue<int>();

  //   visited[startVertex] = true;
  //   queue.add(startVertex);

  //   while (queue.isNotEmpty) {
  //     int vertex = queue.removeFirst();
  //     print(vertex);

  //     for (int adjVertex in map[vertex]!) {
  //       if (!visited[adjVertex]) {
  //         visited[adjVertex] = true;
  //         queue.add(adjVertex);
  //       }
  //     }
  //   }
  // }

  // void dfsUtil(int vertex, List<bool> visited) {
  //   visited[vertex] = true;
  //   print(vertex);

  //   for (int adjVertex in map[vertex]!) {
  //     if (!visited[adjVertex]) {
  //       dfsUtil(adjVertex, visited);
  //     }
  //   }
  // }

  // void dfs(int startVertex) {
  //   List<bool> visited = List<bool>.filled(map.length, false);
  //   dfsUtil(startVertex, visited);
  // }
}

void main(List<String> args) {
  Graph graph =Graph();
  graph..addEdge(2, 1, false)
  ..addEdge(2, 3, true)
  // ..dfs(2)
  // ..deleteEdge(2,1,false)
  ..printGraph();
  
}
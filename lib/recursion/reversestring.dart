void main(List<String> args) {
  String name='shanu';
  List<String> arr=name.split('');
  reverse(arr,arr.length);
}

reverse(List name,length){
  if(length==0){
    return;
  }
  print(name[length-1]);
  reverse(name, length-1);
}
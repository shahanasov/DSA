selectionsorting(List<int> arr){
  for(int i=0;i<arr.length-1;i++){
    int small=i;
    for(int j=i+1;j<arr.length-1;j++){
      if(arr[small]>arr[j]){
        small=j;
      }
    }
    int temp=arr[i];
    arr[i]=arr[small];
    arr[small]=temp;
  }
}
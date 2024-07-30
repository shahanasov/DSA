quicksort(List<int> arr){
  quicksorthelping(arr,0,arr.length-1);
}
quicksorthelping(List<int> arr,int start, int end){
  if(start>=end){
    return;
  }
  int pivot=start;
  int left=start+1;
  int right =end;
  while(left<=right){
    if(arr[left]>arr[pivot]&& arr[right]<arr[pivot]){
      swap(arr, left, right);
      left++;
      right--;
    }
    if(arr[left]<=arr[pivot]){
      left++;
    }
    if(arr[right]>=arr[pivot]){
      right--;
    }

  }
  swap(arr, right, pivot);
  quicksorthelping(arr, start, right-1);
  quicksorthelping(arr, right+1, end);
}
swap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}
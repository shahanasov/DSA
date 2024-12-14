void main(List<String> args) {
  List<int> arr=[1,2,3,4,5,6,7,8,9,10];
  int target=11;
 int rslt= finding(arr,target,0,arr.length-1);
 print(rslt);
}

int finding(arr,target,start,end) {
  int mid=((start+end)/2).floor();
  if(start>end){
    return -1;
  }
  if(arr[mid]==target){
    return mid;
  }else if(arr[mid]<target){
    return finding(arr, target, mid+1, end);
  }else{
    return finding(arr, target, start, mid-1);
  }
 
}
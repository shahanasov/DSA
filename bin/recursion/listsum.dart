void main(){
 List<int> array=[1,2,3,4,5];
 int rslt=0;
 rslt=sum(array,array.length-1);
 print(rslt);
}

int sum(List array,length) {
if(length<0){
  return 0;
}
else{
  return array[length]+sum(array, length-1);
}
}

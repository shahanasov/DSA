 class Trie{
  Map<String, Trie> children={};
 }

 Trie root =Trie();
 String endSymbol='*';

 insert(String str){
  populateSuffixTrie(str);
 }
 
 void populateSuffixTrie(String str) {
  for(int i=0;i<str.length;i++){
    insertSubstringAt(i, str);
  }
 }
 
 
 void insertSubstringAt(int index, String str) {
  Trie? current=root;
  for( int i=index;i<str.length;i++){
    String letter= str[i];
    if(!current!.children.containsKey(letter)){
      current.children[letter]= Trie();
    }
    current= current.children[letter];
  }
  current!.children[endSymbol]=Trie();
 }

 bool contains(String str){
  Trie? current=root;
  for(int i=0;i<str.length;i++){
    String letter =str[i];
    if(!current!.children.containsKey(letter)){
      return false;
    }
    current=current.children[letter];
  }
  return current!.children.containsKey(endSymbol);
 }


void main(List<String> args) {
  insert('shahanas');
 bool contain= contains('');
 print(contain);
}

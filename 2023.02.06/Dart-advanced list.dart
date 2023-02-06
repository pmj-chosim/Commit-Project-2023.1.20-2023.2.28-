void main() {
  // Call an empty list 'l'
  List l=[];
  List l2=List.filled(10,1, growable: false);
  
  print(l2);
  
  print(l.isEmpty);
  
  // Check if l is empty
  for(int i=0; i<5;i++){
    l.add(i);
  }
  
  // Add integer numbers in list l
  print(l);
  
  // Check if l is empty
  print(l.isEmpty);
  // Print l's first item
  print(l.first);
  // Print l's last item
  print(l.last);
  // Print l's second item
  print(l.indexOf(l));
}

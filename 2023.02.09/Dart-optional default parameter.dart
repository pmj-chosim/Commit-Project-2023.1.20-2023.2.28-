void main() {

	// Call cities() fuction in print()
  print(cities(10,20));
  print(cities(10,20,height:30));

}

// Declare cities() function with Optional Default Parameters
int cities(int horizon, int vertical, {int height=10}){
  return horizon*vertical*height;
}
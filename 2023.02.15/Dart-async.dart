// Set Future<void> Type function 'loading'
Future<void> loading(){
	// Make Future.delayed return
  return Future.delayed(const Duration(seconds:2), ()=>print('Loading done!'));
}
void main() {
  // Print 'Welcome to MicroLearnable'
  print('Welcome to MicroLearnable');
  print('Loading...');

	// Print 'Loading..'
  loading();
  // Call loading()

  // Print 'Lesson Start!'
  print('Lesson Start!');

}
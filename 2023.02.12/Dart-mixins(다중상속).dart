// Set abstract Class 'Sports'
abstract class Sports{
  void play(){
    print('playing sports');
  }
}


// Set Inheritance Class 'BallSport'
abstract class BallSport extends Sports{}


// Set Inheritance Class 'Athletics'
abstract class Athletics extends Sports{}


// Set Mixin Class 'Racket'
mixin Racket{
  void racket(){
    print('player uses racket');
  }
}


// Set Mixin Class 'Running'
mixin Running{
  void running(){
    print('Player runs');
  }
}


// Set Soccer Class
class Soccer extends BallSport with Running{
  void kick(){
    print('Soccer kickes ball');
  }
}


// Set Tennis Class
class Tennis extends BallSport with Racket,Running{}

// Set Dash Class
class Dash extends Athletics with Running{
  @override
  void play(){
    print('Dash is the most popular sports in the Olympics');
  }
}


void main() {
  // Call Soccer, Tennis, Dash Class
  Soccer soccer=Soccer();
  Tennis tennis=Tennis();
  Dash dash=Dash();

  
  // Call soccer's Function kick
  soccer.kick();
  soccer.play();
  soccer.running();
  
  // Call tennis's Function racket
  tennis.racket();
  tennis.play();
  tennis.running();

  
  // Call dash's function play
  dash.play();
  dash.running();

}
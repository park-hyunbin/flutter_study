abstract class Human {
  void walk(); 
}
enum Team { red, blue}
enum XPLevel {beginner, medium, pro}

class Player extends Human{
  String name;
  XPLevel xp;
  Team team;
  
  Player({
    required this.name,
    required this.xp, 
    required this.team});

  void walk() {
    print("the coach is walking");
  }

  void sayHello() {
    print("Hi my name is $name");
  } 
}

class Coach extends Human {
  void walk() {
    print("the coach is walking");
  }
}
void main(){
  var hwan = Player(name : 'hwan', xp : XPLevel.medium, team :Team.red,);
  hwan.name = 'bin';
  hwan.xp = XPLevel.medium;
  hwan.team = Team.blue;
  hwan.sayHello();
}
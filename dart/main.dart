void main() {

  var name = 'nico';
  var greeting = "Hello everyone my name is $name";
  print(greeting); 

  var oldFriends = ['kyeong', 'hwan'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "🥰 $friend",
  ];
    print(newFriends);

}
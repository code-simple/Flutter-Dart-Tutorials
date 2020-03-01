class Microphone{
  String name;
  String color;
  int model;


  Microphone(this.name, this.color, this.model); //  Syntactic Sugar Constructor

  Microphone.initialize(){ // Named Constructor
    name = 'Blue yeti';
    color = 'Brown';
  }

  int get getModel => model ; //getter and setters, I learnt here; --> https://codegym.cc/groups/posts/13-getters-and-setters
                              //Getter and setters are used so that class properties are not mistakely assigned. read Webpage.
  set setName(int model){
    if(model >= 0){
      this.model = model;
    }else{
      print("Error Model is too old, it should be not less than");
    }
  }
//  set setName(String value) => name = value; //setter



//  Microphone(String name, String color, int model){ // Simple Constructor
//    this.name = name;
//    this.color = color;
//    this.model = model;
//  }





  void muted(){
    print('$name volume is Muted');   // Methods
  }

  void volUp(){
    print('$name Volume is UP');    // Methods
  }

  void volDown(){
    print('$name Volume is Down, with color $color');     // Methods
  }
}


void main(List<String> arguments) {
  var mic = new Microphone('John', 'Red', 0);

  mic.setName = -12344;
  print(mic.getModel);


  // var mic2 = new Microphone.initialize();
//
//print(mic.name +' has the model number: '+ mic.model.toString()); //
//mic.volDown(); // Calling Methods
//print(mic2.name + ' is of color '+mic2.color); // calling  constructor with different name.
                                              // incase you require same class with differnt args.
}


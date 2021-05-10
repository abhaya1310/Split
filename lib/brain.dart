class Brain{
  var names = new Map();

  void updateRecord(String name, var paisa){       //update records upon new entry
    if(names.containsKey(name)){
    names.update(name, (dynamic value) => value + paisa);
    }
    else{
      names.addAll({name:paisa});
    }
    print(names);
  }

  void calculate(){                           //returns map of names with +ve and -ve balance
    var sumTotal = 0;
    names.values.forEach((var paisa) {sumTotal+=paisa;
    });
    names.keys.forEach((name){
      names.update(name, (value) => (value-sumTotal));
    });
    // return names;
  }

  void clear(){
    names.clear();
    print(names);
  }

}

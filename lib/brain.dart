class Brain{
  var names = Map();

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
    num sumTotal = 0;
    names.values.forEach((var paisa) {sumTotal+=paisa;
    });
    sumTotal/=names.length;
    names.keys.forEach((name){
      names.update(name, (value) => (value-sumTotal));
    });
  }

  void clear(){
    names.clear();
  }

}

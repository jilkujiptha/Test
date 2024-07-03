class vehicle{
  var _model;
  var _year;
  String get model=>_model;
  set model(String _model)=>this._model=_model;

  int get year=>_year;
  set year(int _year)=>this._year=_year;
}

void main(){
  var veh=vehicle();
  veh._model="asw12222222";
  veh._year=2002;
  print(veh._model);
  print(veh._year);
}
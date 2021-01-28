MovimentosHanoi = function(QtdeDiscos){
  if(QtdeDiscos > 1){
    QtdeDiscos = QtdeDiscos - 1    
    return(2*MovimentosHanoi(QtdeDiscos) + 1)
  }
  else{
    return(1) 
  }
}

MovimentosHanoi(22)

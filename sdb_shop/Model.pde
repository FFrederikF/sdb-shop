class Model{
  
  
  // Model attributter
  //String[] vareHistory;
  
  //Vare[] VareListe;
  // Model konstruktør
  
  // Model funktioner
  Vare[] laesListe(){
    Vare[] vA;
    String[] vareLinje = loadStrings("vareListe.txt");
    for (int i = 0 ; i < vareLinje.length; i++) {
      String[] vS = split(vareLinje[i], ", ");
      Vare v = new Vare(int(vS[0]), vS[1], float(vS[2]));
      vA = append(vA, v);
    }
    return vA;
    
    
    // læs filen
    // split - for hver vare opret et objekt at typen vare. 
    // læg denne vare ind i et array af type vare
    // returner array med alle varer i 
    
  }
  
  void gemListe(Vare[] vA){
    String[] gem;
    for(int i = 0; i < vA.length; i++){
      String[] vareP = new String[3];
      vareP[0] = str(vA[i].getId());
      vareP[1] = vA[i].getNavn();
      vareP[2] = str(vA[i].getPris());
      String vare = join(vareP, ", ");
      gem[i] = vare;
      //vareHistory = append(vareHistory, vare);
    }
    saveStrings("vareListe.txt", gem);
  }
}

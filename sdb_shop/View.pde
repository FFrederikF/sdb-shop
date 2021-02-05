
class View {

  Textfield productID;
  Textfield amount;
  Textlabel reciept;
  
  Button confirm;
  Button finishSale;
  Button saveReciept;
  Button loadReciept;
  
  
  
  PFont font;
  
  
  View() {
    
    font = createFont("Arial", 24);
    
    productID = cp5.addTextfield("productName");
    productID.setPosition(200, 20)
      .setSize(250, 40)
      .setFont(font)
      .setColor(color(255))
      .setAutoClear(false)
      .setLabel("");
      
    amount = cp5.addTextfield("productPrice");
    amount.setPosition(460, 20)
      .setSize(150, 40)
      .setFont(font)
      .setColor(color(255))
      .setAutoClear(false)
      .setLabel("");
      
    reciept = cp5.addTextlabel("reciept");
    reciept.setPosition(10, 10)
      .setSize(150, height-20)
      .setFont(font)
      .setColor(color(255))
      .setLabel("This is text \n is this new line?");
      
    confirm = cp5.addButton("confirm");
    confirm.setPosition(620, 20)
      .setSize(100, 40)
      .setLabel("Tilfoeg til kurv");
    
  }
  
  // Retuner ID for vare
  int getID() {
    int id = int(this.productID.getValue());
    return id;
    
  }
  
  // Retuner mængden af den samme vare
  int getAmount() {
    int a = int(this.amount.getValue());
    return a;
  
  }



}

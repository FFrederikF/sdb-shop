
class View {

  Textfield productName;
  Textfield productPrice;
  Textfield reciept;
  
  Button confirm;
  Button finishSale;
  Button saveReciept;
  Button loadReciept;
  
  
  
  PFont font = createFont("Arial", 24);
  
  
  View() {
    
    this.productName = cp5.addTextfield("productName");
    this.productPrice = cp5.addTextfield("productPrice");
    this.reciept = cp5.addTextfield("reciept");
    
    
    reciept.setPosition(10, 10)
      .setSize(150, height-20)
      .setFont(font)
      .setColor(color(255))
      .setAutoClear(false)
      .setLabel("");
      
    productName.setPosition(200, 20)
      .setSize(150, 40)
      .setFont(font)
      .setColor(color(255))
      .setAutoClear(false)
      .setLabel("");
    
  
  }



}

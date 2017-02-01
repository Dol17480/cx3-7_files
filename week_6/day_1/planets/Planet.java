class Planet{

  private String name;
  private long size;


  public Planet(String inputName, long size){
    this.name = inputName;
    this.size = size;
  }

  public String getName(){
    return this.name;
  }

  public long getSize(){
    return this.size;
  }

  public void explode(){
    System.out.println("Boom!" + this.name + " has exploded.");
  }
}

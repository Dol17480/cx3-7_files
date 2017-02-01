class Bear{
  private String name;
  private int age;
  private double weight;
  private char gender;

  public Bear(String inputName, int age, double weight, char gender){
    this.name = inputName;
    this.age = age;
    this.weight = weight;
    this.gender = gender;
  }

  public double getWeight(){
    return this.weight;
  }

  public int getAge(){
    return this.age;
  }

  public void setAge(int age){
    this.age = age;
  }

  public String getName(){
    return this.name;
  }

  public void setName(String inputNewName){
   this.name = inputNewName;
  }

  public boolean readyToHibernate(){
    return this.weight >= 80.00;
  }

  public char getGender(){
    return this.gender;
  }

}


















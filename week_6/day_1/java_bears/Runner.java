class Runner{

public static void main(String[] args){
  Bear bear = new Bear("Balu", 27, 98.62, 'f');
  String name = bear.getName();
  bear.setName("Yogi");
  name = bear.getName();
  System.out.println(name);
}

}
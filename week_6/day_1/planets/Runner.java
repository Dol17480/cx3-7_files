class Runner{

public static void main(String[] args){
  Planet planet = new Planet("Mars", 908973);
  planet.explode();
  System.out.println(planet.getName() + " is " + planet.getSize());
}

}
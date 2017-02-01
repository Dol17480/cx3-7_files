import static org.junit.Assert.*;
import org.junit.*;
import jewellery.*;

public class RingTest {

  Ring ring;
  
  @Before 
  public void before(){
    ring = new Ring(MetalType.GOLD, GemType.DIAMOND);
  }

  @Test
  public void canGetMetal(){
    assertEquals(MetalType.GOLD, ring.getMetal());
  }

  @Test
  public void canGetGem(){
    assertEquals(GemType.DIAMOND, ring.getGem());
  }



 // @Test
 // public void metalCanBeMispelled(){
 //  ring = new Ring("Gollld");
 //  assertEquals("Gollld", ring.getMetal());
 // }

 // @Test
 // public void metalCanBeBanana(){
 //  ring = new Ring("Banana");
 //  assertEquals("Banana", ring.getMetal());
 // }

}
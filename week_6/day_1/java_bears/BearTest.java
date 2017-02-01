import static org.junit.Assert.assertEquals;
import org.junit.*;

public class BearTest{

  Bear bear;

  @Before
  public void before(){
    bear = new Bear("Yogi", 42, 95.62, 'f');
  }

  @Test
  public void hasName(){
     assertEquals( "Yogi", bear.getName());
  }

  @Test
  public void hasWeight(){
    assertEquals(95.62, bear.getWeight(), 0.01);
  }

  @Test
  public void readyToHibernate(){
    assertEquals( true, bear.readyToHibernate());
  }

  @Test
  public void isFemale(){
    assertEquals( 'f', bear.getGender());
  }
}
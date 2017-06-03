package hanoi;
import javax.swing.JOptionPane; 
import drawing.*;
/**
 * la classe des choix du jeu de hanoi (3 tours constituent les tours de Hanoi)
 *<br/> <H2 style="color:red"> Permet de choisir entre manuel ou automatique Algorithme iteratif ou recursif </H2> 
 * @author D.M. 
 * @version Fevrier 2006
 * @see <a href="Hanoi.png" > schema uml</a>
 */
public class ChoixHanoi {
/** Methode principale<br/>
 * propose un choix et execute l'une des methode main de<br/>
 * HanoiR (recursif)<br/>
 * HanoiIt (eratif)<br/>
 * HanoiJ<br/>
 */
  public static void main(String args[]) { 
    String ch;
    while (((ch=JOptionPane.showInputDialog(null,"Choisissez entre: \n<I>teratif\n<R>ecursif\n<M>anuel"))    !=null) && 
                ((ch=ch.toUpperCase()).length()>1) || 
                ((ch!=null) &&("MIR".indexOf(ch.charAt(0))<0)));
    if (ch!=null){
      String[] s =new String[1];
      s[0] =JOptionPane.showInputDialog(null,"Entrez le nombre de disques");
      if (ch.equals("M")){ 
        System.out.println("Jeu Manuel : "+ s[0]+" disques");
        if (s[0]!=null &&  ! "0".equals(s[0])) HanoiJ.main(s);                           
      } else if (ch.equals("I")) {
        System.out.println("Jeu Iteratif: "+ s[0]+" disques");
        if (s[0]!=null &&  ! "0".equals(s[0]))  HanoiI.main(s);                        
      } else if (ch.equals("R")){
        System.out.println("Jeu Recursif: "+ s[0]+" disques"); 
        if (s[0]!=null &&  ! "0".equals(s[0]))  HanoiR.main(s);
      } 
    }
  }
}
import java.net.*;
import java.lang.*;
import java.io.IOException;

public class receiveUDP{
	
	public static void main(String[] args)throws SocketException, IOException{
		
		DatagramPacket receivePacket = new DatagramPacket(new byte[512], 512);
		DatagramSocket bindSocket = new DatagramSocket(Integer.parseInt(args[0]));
		bindSocket.receive(receivePacket);
		System.out.println(new String(receivePacket.getData()));
		bindSocket.close();
	}
}

import java.io.*;
import java.net.*;
class DNS {
	public static void main(String args[]) throws Exception
	{
		DatagramSocket clientSocket = new DatagramSocket();
		InetAddress defaultDnsServer = InetAddress.getByName("172.18.12.9");

		byte[] query = new byte[29];
		byte[] response = new byte[160];

		query[0] = 0x08;
		query[1] = 0x0b;
		query[2] = 0x01;
		query[3] = 0x00;
		query[4] = 0x00;
		query[5] = 0x01;
		query[6] = 0x00;
		query[7] = 0x00;
		query[8] = 0x00;
		query[9] = 0x00;
		query[10] = 0x00;
		query[11] = 0x00;
		query[12] = 0x03;
		query[13] = 0x77;
		query[14] = 0x77;
		query[15] = 0x77;
		query[16] = 0x04;
		query[17] = 0x6c;
		query[18] = 0x69;
		query[19] = 0x66;
		query[20] = 0x6c;
		query[21] = 0x02;
		query[22] = 0x66;
		query[23] = 0x72;
		query[24] = 0x00;
		query[25] = 0x00;
		query[26] = 0x01;
		query[27] = 0x00;
		query[28] = 0x01;

		DatagramPacket queryPacket = new DatagramPacket(query, query.length, defaultDnsServer, 53);
		clientSocket.send(queryPacket);
		DatagramPacket responsePacket = new DatagramPacket(response, response.length);
		clientSocket.receive(responsePacket);
		String question = new String(queryPacket.getData());
		String result = new String(responsePacket.getData());
		System.out.println("Data sent :" + question);
		System.out.println("Data received :" + result);
		System.out.println("L'adresse ip est :" + responsePacket.getAddress());
		clientSocket.close();
      }
    }

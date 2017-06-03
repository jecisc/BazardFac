#include <netinet/in.h>

#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#include<arpa/inet.h>
#include<sys/socket.h>
 
#define SERVER "172.18.12.118"
#define PORT 8888 
 

int main(int argv, char **argc)
{
	struct sockaddr_in struct_socket;
	int s, i, slen=sizeof(struct_socket);

	if ( (s=socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)) == -1)
	{
		printf("Erreur socket\n");
		exit(1);
	}

	memset((char *) &struct_socket, 0, sizeof(struct_socket));
	struct_socket.sin_family = AF_INET;
	struct_socket.sin_port = htons(PORT);

	struct_socket.sin_addr.s_addr = inet_addr(SERVER);

	
	if (sendto(s,argc[1], strlen(argc[1]) , 0 , (struct sockaddr *) &struct_socket, slen)==-1)
	{
		printf("Erreur dans l'envoi du message\n");
		exit(1);
	}

 
	close(s);
	return 0;
}

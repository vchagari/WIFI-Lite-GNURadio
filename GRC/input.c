#include <stdio.h>
#include <string.h>

int main() {

   FILE *fp;
   char ch;
   int i, j, id, len;
   char msgBuf[1024];
   char idBuf[10];
   char bitBuf[1024];
   unsigned char data;
   int bitCount;

   fp = fopen("input.dat", "w");

   do {
      printf("Terminal ID (1: Vamsi or 2: Ganapati) : ");	
      i = 0;
      while((ch=getchar()) != 0xA) {
         idBuf[i++] = ch;
         fflush(stdout);
      }
      idBuf[i] = '\0';
      id = atoi(idBuf);
   } while(id != 1 && id != 2); 

   printf("Enter 5 letter Message : ");
   i=0;
   while((ch=getchar()) != 0xA) {
      msgBuf[i++] = ch;
      fflush(stdout);
   }
   msgBuf[i] = '\0';

   len = strlen(msgBuf);
   if(len > 5) {
      len = 5;
      msgBuf[5] = '\0';
   }

   printf("Message STRING : ");
   for(i=0; i<len; i++) printf("%02X ", msgBuf[i]);
   printf("\n");

   data = (id == 1) ? 0 : 1;
printf("%d ", data);
   fwrite(&data, 1, 1, fp);
   bitCount = 1;
   for(i=0; i<strlen(msgBuf); i++) {  
      ch = msgBuf[i];
      for(j=6; j>=0; j--) {
         if((ch >> j) & 0x1) data = 1;
         else data = 0; 
printf("%d ", data);
         fwrite(&data, 1, 1, fp);
         bitCount++;
      }
   }
   data = 0;
   for(i=bitCount; i<40; i++) {
printf("%d ", data);
      fwrite(&data, 1, 1, fp);
   }
printf("\n");
   
   fclose(fp);   
	
   system("timeout 7 /home/chagari/Work/GNURadio/OverAir-Test/GRC/WIFI_OFDM_TX.py");
    system("/home/chagari/Work/GNURadio/OverAir-Test/GRC/copy_data_to_mspd.sh");

}

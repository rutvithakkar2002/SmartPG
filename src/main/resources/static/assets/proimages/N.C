#include<stdio.h>
#include<conio.h>
#include<ctype.h>
#include<string.h>
struct mnemonic_tab
{
    int code;
    char name[10];
  };
struct register_tab
{
    char name[10];
    int code;
  };
struct condition_tab
{
    char name[10];
    int code;
  };
struct assembler_dir
{
    char name[6];
    int code;
  };

struct declaration_tab
{
    char name[10];
    int code;
  };
struct symbol_tab
{
    char symbol[10];
    int addr;
    int len;
  };
struct op_tab
{
    char code[10];
    char clas[3];
    int mcode;
    int len;

};
struct literal_tab
{
    char lit[5];
    int addr;
};
void main()
{
char *ch,ch1[80],*tmp;
FILE *fp;
int i,o,j,addr1,l,f,s,kflag,tempaddr;
   struct mnemonic_tab m1[11];
   struct register_tab r1[5];
   struct condition_tab c1[7];
   struct declaration_tab d1[3];
   struct assembler_dir a1[5];
   struct symbol_tab s1[100];
   struct op_tab o1[100];
   struct literal_tab l1[100];
  // Mnemonic Table
   for (i=0;i<11;i++)
	m1[i].code=i;
   strcpy(m1[0].name,"STOP");
   strcpy(m1[1].name,"ADD");
   strcpy(m1[2].name,"SUB");
   strcpy(m1[3].name,"MULT");
   strcpy(m1[4].name,"MOVER");
   strcpy(m1[5].name,"MOVEM");
   strcpy(m1[6].name,"CMP");
   strcpy(m1[7].name,"BC");
   strcpy(m1[8].name,"DIV");
   strcpy(m1[9].name,"READ");
   strcpy(m1[10].name,"PRINT");

   // Register Table
   for (i=0;i<4;i++)
	r1[i].code=i+1;
   strcpy(r1[0].name,"AREG");
   strcpy(r1[1].name,"BREG");
   strcpy(r1[2].name,"CREG");
   strcpy(r1[3].name,"DREG");

   // Condition Table
   for (i=0;i<6;i++)
	c1[i].code=i+1;
   strcpy(c1[0].name,"LT");
   strcpy(c1[1].name,"LE");
   strcpy(c1[2].name,"EQ");
   strcpy(c1[3].name,"GT");
   strcpy(c1[4].name,"GE");
   strcpy(c1[5].name,"ANY");
  // Declaration Table
   d1[0].code = 1;
   d1[1].code = 2;
   strcpy(d1[0].name,"DC");
   strcpy(d1[1].name,"DS");

   //  Assembler Directives
   for (i=0;i<5;i++)
	a1[i].code=i+1;

   strcpy(a1[0].name,"START");
   strcpy(a1[1].name,"END");
   strcpy(a1[2].name,"ORIGIN");
   strcpy(a1[3].name,"EQU");
   strcpy(a1[4].name,"LTORG");
fp = fopen("c:\\tc\\bin\\pass11.txt","r");
clrscr();
addr1=l=j=o=s=0;
	  kflag=0;
     while( !feof(fp))
	  {
	  i=0;
	  f=0;

	  fgets(ch1,80,fp);
	  printf("%d  %s",addr1,ch1);
	  ch = strtok(ch1, " ");
 //	   if (ch)   printf("%s nn", ch);
	    while(ch)
		  {
		  if(ch[strlen(ch)-1] == '\n')
		     ch[strlen(ch)-1] = NULL;
		    // optab entry check
		    for(j=0;j<o;j++)
		      {
			if(strcmp(ch,o1[j].code)==0)
			   break;
		      }
		      if(j>=o)
		       {
			//check mnemonic tab entry
			    for(j=0;j<11;j++)
			       {
				if(strcmp(ch,m1[j].name)==0)
				   break;
			       }
			    if(j<11)
			       {
				strcpy(o1[o].code,ch);
				o1[o].mcode = m1[j].code;
				o1[o].len = 1;
				if(strcmp("STOP",m1[j].name)==0)
					o1[o].len = 0;
				strcpy(o1[o].clas,"IS");
				o++;
			       }
			       // check for declaration table
			    for(j=0;j<2;j++)
			       {
				if(strcmp(ch,d1[j].name)==0)
				   break;
			       }
			    if(j<2)
			       {
				strcpy(o1[o].code,ch);
				o1[o].mcode = d1[j].code;
				o1[o].len = 1;
				strcpy(o1[o].clas,"DL");
				o++;
				}
				//check for assebler directives
			    for(j=0;j<5;j++)
			       {
				if(strcmp(ch,a1[j].name)==0)
				   break;
			       }
			    if(j<5)
			       {
				strcpy(o1[o].code,ch);
				strcpy(o1[o].clas,"AD");
				o1[o].mcode = a1[j].code;
				o1[o].len = 1;
				if(strcmp("END",a1[j].name)==0)
					o1[o].len = 0;
				o++;
				if(strcmp("START",a1[j].name)==0)
				   {
				      i++;
				      ch = strtok(NULL," ");
				      addr1 = atoi(ch)-1;
				   }
			       }
		       }

		    for(j=0;j<2;j++)
		       {
			if(strcmp(ch,d1[j].name)==0)
			   break;
		       }
		    if(j<2)
		       {
			for(j=0;j<s;j++)
			   {
				if(strcmp(tmp,s1[j].symbol)==0)
				   break;
			   }
			 if(j<s)
			   s1[j].addr = addr1;
			}
		  if(strcmp(ch,"LTORG")==0 || strcmp(ch,"END")==0)
		    { kflag=1;
		     break;}

		    if(ch[0]==39 || ch[0] == '=' && kflag==1)
			{f=1;
				  // litt tab entry
				     strcpy(l1[l].lit,ch);
				     l1[l].addr = addr1;
				     l++;
			 }
			else
			{kflag=0;}

		    for(j=0;j<11;j++)
		       {
			if(strcmp(ch,m1[j].name)==0)
			  {f=1; break;}
		       }
		    for(j=0;j<2;j++)
		       {
			if(strcmp(ch,d1[j].name)==0)
			  {f=1; break;}
		       }
		    for(j=0;j<5;j++)
		       {
			if(strcmp(ch,a1[j].name)==0)
			 {f=1;
			   break;}
		       }
		    for(j=0;j<5;j++)
		      {
			if(strcmp(ch,r1[j].name)==0)
			   {f=1;
			    break;}
		      }
		    for(j=0;j<6;j++)
		      {
			if(strcmp(ch,c1[j].name)==0)
			   {f=1;
			   break;}
		      }
		    if(f==0)
		      {
			    for(j=0;j<s;j++)
			      {
			      // entry for EQU statement
				if (strcmp(tmp,"EQU")==0)
				   {
				   if(strcmp(ch,s1[j].symbol)==0)
					{ tempaddr=s1[j].addr;
					 break;}
				   }
				if(strcmp(ch,s1[j].symbol)==0)
				   break;
				if(strstr(ch,"+")) // check for + in origin statement
				  break;

			      }
			      // entry in symbol table
			      if((j>=s) && (strcmp(ch,"")) && (strcmp(ch,"\t")) && (!(isdigit(ch[0]))) && (ch[0] != '=') && (ch[0] != 39))
			       {
				   strcpy(s1[s].symbol,ch);
				   s1[s].addr = addr1;
				   s1[s].len = 1;
				   s++;
				}

		      }
		  i++;
		   strcpy(tmp,ch);
		   ch = strtok(NULL," ");
		   f=0;

		  }
		  // increment location counter
		   addr1++;

	  }
	  getch();
	  printf("\n-----------------------------------------------");
	  printf("\n              OPTAB\n");
	  printf("Mnemonic      Class            Mnemonic\n");
	  printf(" Opcode                            Info  ");
	  printf("\n-----------------------------------------------");
	  for(j=0;j<o;j++)
	     printf("\n  %s\t\t%2s\t\t(%d , %d)",o1[j].code,o1[j].clas,o1[j].mcode,o1[j].len);
	  printf("\n-----------------------------------------------");
	  getch();
	  printf("\n-----------------------------------------------");
	  printf("\n     LITTAB\n");
	  printf("Literal     Address\n");
	  printf("\n-----------------------------------------------");
	  for(j=0;j<l;j++)
	     printf("\n  %s\t\t%d",l1[j].lit,l1[j].addr);
	  printf("\n-----------------------------------------------");
	  getch();
	  printf("\n-----------------------------------------------");
	  printf("\n             Symbol Table\n");
	  printf("Symbol          Address       Length\n");
	  printf("\n-----------------------------------------------");
	  for(j=0;j<s;j++)
	     printf("\n%-10s\t%5d\t\t%2d",s1[j].symbol,s1[j].addr,s1[j].len);
	  printf("\n-----------------------------------------------");
	  getch();
	fclose(fp);



fp = fopen("c:\\tc\\bin\\pass11.txt","r");
clrscr();
	  printf("\n-----------------------------------------------");
	  printf("\n     IC");
	  printf("\n-----------------------------------------------\n");

l=j=0;
     while( !feof(fp))
	  {
	  i=0;
	  f=0;
	  fgets(ch1,80,fp);
//	  printf("%s",ch1);
	  ch = strtok(ch1, " ");
 //	   if (ch)   printf("%s nn", ch);
 f=0;
	    while(ch)
		  {
		  if(ch[strlen(ch)-1] == '\n')
		     ch[strlen(ch)-1] = NULL;

		//     f=0;
/*
		  for(j=0;j<s;j++)
		      {
			if(strcmp(ch,s1[j].symbol)==0)
			  {
			   printf("  (S , %d)",j+1);
			   f=1;
			   break;
			  }
		      }*/
		  for(j=0;j<11;j++)
		   {
			if(strcmp(ch,m1[j].name)==0)
			    {
			     printf("  (IS , %d)",m1[j].code);
			     f=1;
			     break;
			    }
		   }
		  for(j=0;j<2;j++)
		   {
		    if(strcmp(ch,d1[j].name)==0)
		       {
			  printf("  (DL , %d)",d1[j].code);
			   f=1;
			  break;
		       }
		    }
		    for(j=0;j<5;j++)
		      {
			if(strcmp(ch,a1[j].name)==0)
			  {
			    printf("  (AD , %d)",a1[j].code);
			   f=1;
			    break;
			  }
		       }
		      if(ch[0]>='0'&& ch[0]<='9')
			{
			    printf("  (C , %s)",ch);
			    f=1;
			}
		    for(j=0;j<5;j++)
		      {
			if(strcmp(ch,r1[j].name)==0)
			   {
			      printf("  (%d)",r1[j].code);
			      f=1;
			      break;
			   }
		      }
		    for(j=0;j<6;j++)
		      {
			if(strcmp(ch,c1[j].name)==0)
			   {
			      printf("   (%d)",c1[j].code);
			      f=1;
			      break;
			   }
		      }
		      if (f==1)
		      {
		       for(j=0;j<s;j++)
		      {

			if(strcmp(ch,s1[j].symbol)==0)
			  {
			   printf("  (S , %d)",j+1);

			   break;
			  }
		      }}

		  i++;
		   ch = strtok(NULL," ");
		  }
		   printf("\n");
	  }
	  fclose(fp);
getch();
fp = fopen("c:\\tc\\bin\\pass11.txt","r");
clrscr();
	  printf("\n-----------------------------------------------");
	  printf("\n     PASS II");
	  printf("Address       Instruction");
	  printf("\n-----------------------------------------------\n");

addr1=j=0;
     while( !feof(fp))
	  {
	  i=0;
	  f=0;
	  fgets(ch1,80,fp);
	  printf("\n%s\t\t%d)",ch1,addr1);
	  ch = strtok(ch1, " ");
 //	   if (ch)   printf("%s nn", ch);
	    while(ch)
		  {
		  if(ch[strlen(ch)-1] == '\n')
		     ch[strlen(ch)-1] = NULL;
		  for(j=0;j<s;j++)
		      {
			if(strcmp(ch,s1[j].symbol)==0)
			  {
			   printf("  %d",s1[j].addr);
			   break;
			  }
		      }
		    for(j=0;j<l;j++)
		      {
			if(strcmp(ch,l1[j].lit)==0)
			   {
			      printf("  %d",l1[j].addr);
			      break;
			   }
		      }
		  for(j=0;j<11;j++)
		   {
			if(strcmp(ch,m1[j].name)==0)
			    {
			     printf(" + %d",m1[j].code);
			     break;
			    }
		   }
		  for(j=0;j<2;j++)
		   {
		    if(strcmp(ch,"DC")==0)
		       {

			  printf("  %d ",d1[j].code);
			  break;
		       }
		    }
		     if(ch[0]>='0'&& ch[0]<='9')
			{
			    printf("  %s",ch);
			}
		    for(j=0;j<5;j++)
		      {
			if(strcmp(ch,r1[j].name)==0)
			   {
			      printf(" %d ",r1[j].code);
			      break;
			   }
		      }
		    for(j=0;j<6;j++)
		      {
			if(strcmp(ch,c1[j].name)==0)
			   {
			      printf(" %d ",c1[j].code);
			      break;
			   }
		      }
		    for(j=0;j<5;j++)
		      {     if(strcmp(ch,a1[j].name)==0)
			    { strcpy(tmp,ch);
			    break;}
		      }
		    if(j<5)
		      {    ch = strtok(NULL," ");
			     if(strcmp(tmp,"START")==0)
			       addr1 = atoi(ch)-1;
			break;
		      }
		  i++;
		  strcpy(tmp,ch);
		   ch = strtok(NULL," ");
		  }
		  addr1++;
		   getch();
	  }
getch();
	  fclose(fp);
}

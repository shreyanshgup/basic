//Single linkList

#include<stdio.h>
#include<stdlib.h>
#include<malloc.h>

struct node{
int data ;
struct node *link;

};
struct node* root=NULL;
int len;
void append(void);


void addatbegin(void)
{
}



void addatafter(void);
int length(void);
void delete(void);
void display(void);
void Reverse_list();
int main(){
int ch;
while(1)
{printf("Single linked list Opertation\n");
printf("1.Append\n");
printf("2.AddAtbegin\n");
printf("3.AddAfter\n");
printf("4.Length of the list\n");
printf("5.display]\n");
printf("6.Delete\n");
printf("7.Quit\n");
printf("8.reverse a linked list");

printf("Enter choice");
scanf("%d",&ch);
switch(ch){
case 1: append();
         break;

case 2: addatbegin();
          break;
case 3: addatafter();
         break;
case 4:len= length();
       printf("Length %d \n",len);
         break;

case 5: display();
        break;
case 6: delete();
         break;
case 7: exit(1);
break;
case 8:Reverse_list();
break;
default:printf("invalid choice");








}


}
return 0;

}


void append()
{

struct node* temp;
temp=(struct node*)malloc(sizeof(struct node));
printf("Enter note date");
scanf("%d",&temp->data);
temp->link=NULL;

if(root==NULL)//list is empty
{root=temp;

}
else
{
    struct node* p;
    p=root;
    while(p->link!=NULL)
    {p=p->link;

    }
    p->link=temp;

    }

}




int length()

{

int count=0;
struct node* temp;
temp=root;
while(temp!=NULL)
{
    count++;
    temp=temp->link;
}

return count;
}




void display()

{
struct node* temp;
temp=root;
if(temp==NULL)
{printf("List is empty");

}
else
{

    while(temp!=NULL)
    {printf("%d\t",temp->data);
    temp=temp->link;

    }

 printf("\n \n");
   }
}


void delete(){
struct node *temp;

int loc;
printf("Enter Location to delete");
scanf("%d",&loc);
if(loc>length())
{  printf("Invalid location");
}
else if(loc==1)
{temp=root;
    root=root->link;
//temp->link=NULL;
free(temp);

}

else


{
    struct node *p=root;
    struct node *q;
    int i=1;
    while(i<loc-1)

    {p=p->link;
    i++;
    }

    q=p->link;
    p->link=q->link;
    q->link=NULL;
    free(q);

}


}

void addatafter()

{

    struct node* temp;

    int loc,len,i=1;
    struct node* p;
    printf("Enter location");
    scanf("%d",&loc);
    len=length();
    if(loc>len)

    {

        printf("Invalid location");
        printf("currently list is having %d node",len);

    }

    else
    {
        p=root;
        while(i<loc)
        {
            p=p->link;
            i++;
        }
temp=(struct node*)malloc(sizeof(struct node));
printf("enter element to insert after first node");
scanf("%d",&temp->data);
temp->link=NULL;
        temp->link=p->link;



        p->link=temp;

printf("%d\n",temp->data);
    }


}

void Reverse_list()
{
    int i,j ,len;
    len=length();
    struct node*p;
    struct node *q;
    struct node *temp;
    i=0;
    int k;
    j=len-1;
    p=q=root;
    while(i<j)
    {
        k=0;

    while(i<j)
    {
    k=0;
    }
    while(k<j)
    {
        q=q->link;

    k++;

    }

    temp=p->data;
    p->data=q->data;
    q->data=temp;


    i++;
     j--;


     p=p->link;
    q=root;



    }

}


}

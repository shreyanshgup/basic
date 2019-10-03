/*stack implementation using static array*/

#include<stdio.h>

#define CAPACITY 5//Pre process macro
int stack[CAPACITY];
int top=-1;
void push(int);//function declaration
int pop(void);
void peek(void);
void traverse(void);
int isFull(void);
int isEmpty(void);
int main()

{
    int ch,item;
    while(1)
    {

    printf("1.Push\n");
printf("2.POP \n");
printf("3.Peek \n");
printf("4.Traverse \n");
printf("5. quit\n");
printf("Enter your choice");
scanf("%d",&ch);



   switch(ch)
  {
    case 1: printf("Enter element to push\n");
               scanf("%d",&item);
        push(item);
        break;
    case 2: item =pop();
             if(item==0)
              {
                 printf("Stack is underflow");
              }
             else{

                printf("Popped item:%d\n",item);

                  }
             break;

    case 3:peek();
    break;
    case 4:traverse();
    break;
    case 5:exit(0);
    break;
    default: printf("Invalid choice\n");

    }


   }
return 0;
  }
void push(int ele)
{
if(isFull())
{
    printf("Stack is overflow orFULL\n");

}
else
    {
      top++;
      stack[top]=ele;
      printf("%d Pushed Successfully\n"+ele);

    }


}

isFull()
{
    if(top == CAPACITY-1){

        return 1;
    }
else
{
    return 0;
}
}

int pop()
{
    if(isEmpty())
    {
        return 0;
    }

else{

    return stack[top--];

    }

}


isEmpty()
{
    if(top==-1)
    {

     return 1;
}
else
{
    return 0;
}
}
void peek()
{

    if(isEmpty())
    {
        printf("Stack is underflow");
    }
    else
    {
        printf("peek element %d \n",stack[top]);
    }
}

void traverse()
{
    if(isEmpty())
{
    printf("No element in the stack");

}
else{

    int i;
    printf("Stack element are\n");
    for(i=0;i<=top;i++)
    {
        printf("%d\n",stack[i]);
    }

}
}

#include <iostream>
#include <pthread.h>
#include <string>

using namespace std;

void *print_message_function( void *ptr );
string a = "Sagar";

main()
{
     pthread_t thread1, thread2;
     string message1 = "Thread 1";
     string message2 = "Thread 2";
     int  iret1, iret2;

    /* Create independent threads each of which will execute function */

     iret1 = pthread_create( &thread1, NULL, print_message_function, &message1);
     /* Wait till threads are complete before main continues. Unless we  */
     /* wait we run the risk of executing an exit which will terminate   */
     /* the process and all threads before the threads have completed.   */

     pthread_join( thread1, NULL);
     iret2 = pthread_create( &thread2, NULL, print_message_function, &message2);
     pthread_join( thread2, NULL); 

     printf("Thread 1 returns: %d\n",iret1);
     printf("Thread 2 returns: %d\n",iret2);
     exit(0);
}

void *print_message_function( void *ptr )
{    
     cout << a << endl;
     a = "Jain";
     string *message;
     message = (string*) ptr;
     cout<< *message << endl;
}
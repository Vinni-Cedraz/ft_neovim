#include<unistd.h>
int my_strlen(char *str) { char*end=str;while(end&&*end)end++; return end - str;}

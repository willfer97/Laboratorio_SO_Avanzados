#include <stdio.h>
#include <sys/inotify.h>
#include <unistd.h>

int main()
{
  int fd, wd;
  char buffer[300];

  fd = inotify_init();
  wd = inotify_add_watch(fd, "/home/vagrant/Laboratorio_2", IN_CLOSE_WRITE);

  while(1)
    {
      read(fd, buffer, 300);
      printf("El archivo modificado es: %s \n", ((struct inotify_event*)buffer)->name);
    }
  return 0;
}

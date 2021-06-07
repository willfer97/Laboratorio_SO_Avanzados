#include <fcntl.h> //manipula el descriptor del fichero
#include <unistd.h> //funcion de leer
#include <stdio.h> //estandar de entrada y salida, printf

int main()
{
  int fd; //file descriptor devolvera la funcion open y es como un indicador del ficheros
  char buffer[20];
  ssize_t num_bytes;

  fd = open("/home/vagrant/Laboratorio_2/archivo1", O_RDONLY);
  
  if(fd == -1)
    {
      printf("ERROR, el archivo no existe o ha habido un problema al abrirlo\n");
    }
  else
    {
      num_bytes = read(fd, buffer, 10);
      close(fd);

      if(num_bytes == 0)
	{
	  printf("No hay nada en el archivo\n");
	}
      else
	{
	  printf("El numero de caracteres es %d, y su contenido es %s\n", (int)num_bytes, buffer);
	}
    }

}

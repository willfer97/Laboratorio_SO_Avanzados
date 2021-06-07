#include <unistd.h>
#include <stdio.h>

int main()
{
  char buffer[512], carpeta;
  int dato;

  //printf("El directorio actual es: %s\n", getcwd(buffer, -1));
  printf("¿Que deseas hacer?\n1) Mirar directorio actual\n2) Crear Carepeta\n3) Eliminar carpeta\n\n");
  scanf("%d", &dato);

  if(dato == 1)
    {
      printf("El dirrectorio actual es: %s\n", getcwd(buffer, -1));
    }
  else if (dato == 2)
    {
      printf("Escriba el nombre de la carpeta que quiere crear:\n");
      scanf("%s", &carpeta);
      mkdir(&carpeta, 0755);
    }
  else if (dato == 3)
    {
      printf("Escriba la carpeta que desea eliminar:\n");
      scanf("%s", &carpeta);
      rmdir(&carpeta);
    }
  else
    {
      printf("OPCION INVALIDA\n");
    }
  /*
  chdir("./carpeta1");
  mkdir("./carpeta2", 0755);
  mkdir("./carpeta3", 0755);
  rmdir("./carpeta3");
  */
  return 0;
}

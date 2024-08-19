# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Library General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
#!/bin/sh

clear

echo "|------------------------------------------------------------|"
echo "    Usuario:  `whoami`                                        "
echo "|   Fecha: `date`                       |"
echo "|                                                             |"
echo "|                      Agenda personal                        |"
echo "|                                                             |"
echo "|---------------------Menu principal--------------------------|"
echo "|                                                             |"
echo "|                         1) ALTAS                            |"
echo "|                         2) BAJAS                            |"
echo "|                         3) CONSULTAS                        |"
echo "|                         4) CAMBIOS                          |"
echo "|                         9) SALIDA                           |"
echo "|                         0) Sobre ....                       |"
echo "|                                                             |"
echo "|                                                             |"
echo "|-------------------------------------------------------------|"
echo -n "|  Teclee su opcion: " 
		read opcion

   case $opcion in
        1) 
           clear
           echo "|--------------------------------------------------|"
           echo "|                   Menu de altas                  |"
           echo "| Adicionar una persona a la agenda                |"
		   echo
           echo -n " Apellido paterno: "
                  read fapepaterno
           echo -n " Apellido materno: "
                  read fapematerno
           echo -n " Nombre: "
                  read nombre
           echo -n " Telefono: "
                  read telefono
           echo -n " Correo electronico: "
                  read email
           echo "$fapepaterno,$fapematerno,$nombre,\t $telefono \t $email " >> telefonos.txt
		   echo
           echo "Persona capturada ...."
		   echo
           echo "Para regresar al menu pulse < q > y despues  < ENTER >  "
           echo -n "Para capturar otra persona pulse  < ENTER >: "
           read res
               case $res in
                  [Qq]) break ;;
               esac
                ;;
        2)    
          
              clear
              echo "|---------------------------------------------|"
              echo "|              Menu de bajas                  |"
              echo "| Eliminar un registro de la agenda           |"
              echo "| Mostrando registros ....                    |"
			  echo
              cat telefonos.txt
			  echo
              echo "Para eliminar un registro deme el numero de la fila del registro."
              echo -n "Dame el numero de fila (registro) a eliminar: "
              read n
              echo "sed '$n d' telefonos.txt > tmp.txt "  > borrar
              chmod +rx borrar
              if sh borrar 
                    then
                  echo "\t registro eliminado."
               else
              echo " Registro no encontrado."
              fi
              rm -f telefonos.txt
              mv tmp.txt telefonos.txt 
              echo -n "Pulse  < r > para regresar o <ENTER> para continuar..."
              read tecla
              case $tecla in
                    [Rr]) break ;;
               esac
          

                    ;;
        3)
            clear
            echo "|------------------------------------------------|"
            echo "|             Menu de consultas                  |"
            echo "|  Busquedas de personas                         |"
            echo " 1) por apellido paterno      "   
            echo " 2) por caracter "
            echo " 3) ver todos los registros "
            echo " 4) regresar "
            echo -n " Teclee su tipo de busqueda: "
            read num
             case $num in
                   1) echo -n " Dame el apellido paterno :"
                      read apellido
                      grep $apellido telefonos.txt
                      echo -n "Pulse <enter> para otra busqueda ..."
                      read tecla
                        ;;
                   2) echo " Buscar los que contengan un caracter en especial"
                      echo -n " Dame el caracter a buscar: "
                      read letra
                      grep $letra telefonos.txt
                      echo -n "Pulse <enter> para otra busqueda ..."
                      read tecla
                        ;;
                   3) echo " Registros capturados...."
				   echo
				   echo
                      cat telefonos.txt
					  echo
                      echo -n "Pulse <enter> para otra busqueda ..."
                      read tecla
                      ;;
                   4) break ;;
             esac
                             ;;
        4)   
              clear
              echo " |-------------------------------------------------|"
              echo " |              Menu de cambios                    |"
              echo " | Mostrando todos los registros....               |"
              echo
              cat telefonos.txt
			  echo
              echo "Para hacer cambios a un registro siga las siguientes instrucciones"
              echo "Teclee el numero de la fila donde se encuentra el registro a cambiar"
              echo -n "Dame el numero de la fila:"
                    read num
              echo -n "Dame la palabra que quieres sustituir: "
                   read cadena
              echo -n "Dame la nueva palabra que la sustituira: "
                   read cadena2
             echo " sed '$num s/$cadena/$cadena2/' telefonos.txt > tmp2.txt " > cambios
             chmod +rx cambios
             if sh cambios 
                   then
                 echo "Registro cambiado."
                 else
                 echo "Registro no encontrado."
              fi
              rm -f telefonos.txt
              mv tmp2.txt telefonos.txt
              cat telefonos.txt
			  echo
              echo -n "presiona < ENTER > para continuar ... "
              read tecla
              break
             
              
               ;;
        9)
               clear
			   echo
               echo "Cerrando la agenda ..." 
               exit 2
               ;;
        0) clear
           echo "|---------------------------------------------|"
           echo "|       c) martin@nuclecu.unam.mx             |"
           echo "|                                             |"
           echo "|              Agenda Personal                | "
           echo "|                                             |"
           echo "|                                             |"
           echo "|     presiona <enter> para continuar...      |"
           echo "|---------------------------------------------|"
            read tecla
              ;;
        *) ;;
   esac


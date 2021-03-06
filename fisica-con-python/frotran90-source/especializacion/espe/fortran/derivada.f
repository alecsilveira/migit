CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C     Curso de Fisica Matematica  Y Computacional
C     Especializacion En Fisica General
C NOMBRE: Derivada
C AUTOR: Antalcides Olivo
C DESCRIPCION: Este programa calcula las derivadas parciales usando
C              diferncias finitas .
C FECHA: 07/11/03 17.50
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C

      program derivadas

      real dift, difd,difc,dx,x,A,errord,errort,errorc
      Write(*,*) '*****************************************************'
      Write(*,*) ' Este programa calcula la derivada de log(x) en x=4  '
      Write(*,*) '*****************************************************'
      Write(*,*) '                                                     '
      Write(*,*) '                                                     '
      Write(*,*) '                                                     '
C**********************************************************************
      !definicion de las variables
      ! dift indica que realizaremos la derivada hacia adelante
      ! dift indica que realizaremos la derivada hacia atras
      ! difc indica que realizaremos la derivada centrada
      ! dx es el paso
      ! errord,errort,errorc representan los errores de las derivadas
      ! definidas anteriormente
      ! X representa el valor numerico de la derivada
      ! A representa el valor analitico de la derivada
C***********************************************************************
C     valor a evaluar:
      x=4.0
C     tama�o del paso
      dx= 0.1
C     calculamos la derivada:
      difd=(fun(x+dx)-fun(x))/dx
      dift=(fun(x)-fun(x-dx))/dx
      difc=(fun(x+dx)-fun(x-dx))/(2*dx)
C      print*, 'difd=', difd
C      !print*, 'dift=', dift
C      !print*, 'difc=', difc
      A= 2.0
      errord=((abs(A-difd))/A)*100
      errort=((abs(A-dift))/A)*100
      errorc=((abs(A-difc))/A)*100
       WRITE(*,'(3(T4,A/),3(T4,A/T4,(3(A,1PE13.6))/))')
     &'              � Valor numerico� Valor analit. �              ',
     &'              �estimado       � ******        �   Diferencia ',
     &'              �               �  ******       �   en %       ',
     &'�������������������������������������������������������������',
     &'difd          � ',difd,     ' � ' ,a     ,  ' � ', errord     ,
     &'�������������ĳ��������������ĳ��������������ĳ��������������',
     &'dift          � ',dift   ,  ' � ' ,a     ,  ' � ',errort,
     &'�������������ĳ��������������ĳ��������������ĳ��������������',
     &'difc          � ' ,difc ,   ' � ' ,a     ,  ' � ',errorc
      WRITE(6,*)'El programa termino!'

      end
C           Definimos la funcion a evaluar:
      function fun(X)
      real X
      fun = log(X**2)
      end
      ! sintaxis del programa

      

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

      real x,dx(5), difc(5),dif2(5),error2(5),errorc(5),A,B
      integer i
      Write(*,*) '*****************************************************'
      Write(*,*) ' Este programa calcula la derivada de sin((pi/2)*x  '
      Write(*,*) '*****************************************************'
      Write(*,*) '                                                     '
      Write(*,*) '                                                     '
      Write(*,*) '                                                     '
C     valor a evaluar:
      write(*,*) 'Ingrese el valor de X'
      read(*,*) x
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

      !pi=3.1416
C     tama�o del paso
      dx(1)= 0.0005
      dx(2)=0.001
      dx(3)=0.01
      dx(4)=0.1
      dx(5)=0.2
C     calculamos la derivada:
      A=fun1(x)
      B=fun2(x)
      do 10 i=1,5
      dif2(i+1)=(fun(x+dx(i))-2*fun(x)+fun(x-dx(i)))/(dx(i)**2)
      difc(i+1)=(fun(x+dx(i))-fun(x-dx(i)))/(2*dx(i))
      errorc(i+1)=(abs((A-difc(i))/A))*100
      error2(i+1)=(abs((B-dif2(i))/B))*100
      write(*,*) dif2(i),difc(i),dx(i)
10    continue
       WRITE(*,'(3(T4,A/),3(T4,A/T4,(3(A,1PE13.6))/))')
     &'              � Valor numerico� Valor analit. �              ',
     &'              �estimado       � ******        �   Diferencia ',
     &'              �               �  ******       �   en %       ',
     &'�������������������������������������������������������������',
     &'    dif2      � ' ,dif2(i) , '� '  ,B     , ' � ',error2(i)     ,
     &'�������������ĳ��������������ĳ��������������ĳ��������������',
     &'   difc       � ' ,difc(i), ' � ' ,A     ,  ' � ' ,errorc(i),
     &'�������������ĳ��������������ĳ��������������ĳ��������������'

      WRITE(6,*)'El programa termino!'

      end
C           Definimos la funcion a evaluar:
      function fun(v)
      parameter(pi=3.1416)
      real v,t
      t=pi/2
      fun = sin(t*v)
      end
      
      function fun1(z)
      parameter(pi=3.1416)
      real z,t
      t=pi/2
      fun1 =(t)*(cos(t*z) )
      end
      
      ! sintaxis del programa
      function fun2(w)
      parameter(pi=3.1416)
      real w,t,s
      t=pi/2
      s=t**2
      fun2 =(-s)* (sin(t*w) )
      end

      

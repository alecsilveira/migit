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
      integer i,j ,k

      real difc(5), dif2(5),dx(5),x,A ,b
      real errorc(5),error2(5)
      Write(*,'(T5,A/)')
     & '***************************************************************'
C     Introducion:
      Write(6,'(T5,A/)')
     & '�*******************�********************�********************�'
      write(6,'(T5,A/)')
     & ' calcule la 1� y 2� derivada de f(x) = sin((pi/2)*x)',
     & 'para los valores de dx 0.0005,0.001,0.01,0.1 y 0.2'
      Write(6,'(T5,A/)')
     & '�****************�*****************�**************************�'
      Write(*,'(T5,A/)')
     & '***************************************************************'
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
      Write(6,'(T5,A/)') 'Ingrese el valor x a evaluar'
      read (5,*)  x
C     tama�o del paso
      dx(1)=0.0005
      dx(2)=0.001
      dx(3)=0.01
      dx(4)=0.1
      dx(5)=0.2
C      ** Valores analiticos de las derivadas
      A=fun1(x)
      b=fun2(x)
      Write(*,*) '                                                     '
      Write(*,*) '                                                     '
C     calculamos la derivada:
      do 10 i=1,5

      difc(i)=(fun(x+dx(i))-fun(x-dx(i)))/(2*dx(i))
      dif2(i)=(fun(x+dx(i)) -2*fun(x)+fun(x-dx(i)))/(dx(i)**2)
      write(6,100)'La primera derivada es : ', difc(i),i
      write(6,200)'La segunda derivada es :',dif2(i),i
100   format(a25,2x,f8.5,2x,i2)
200   format(a25,2x,f8.5,2x,i2)
      open(20,file='derivadatex.dat',status='unknown')
      write(20,105)'La primera derivada es : ', difc(i),i
      write(20,205)'La segunda derivada es :',dif2(i),i
105   format(a25,2x,f8.5,2x,i2)
205   format(a25,2x,f8.5,2x,i2)
10    continue
      do 30 j=1,5

      errorc(j)=abs(((A-difc(j))/A)*100)
      error2(j)=abs(((B-dif2(j))/B)*100)
      write(6,300)'El error de la primera derivada  es: ', errorc(j),j
      write(6,400)'El error de la segunda derivada es:',  error2(j),j
300   format(a35,2x,f8.5,2x,i2)
400   format(a35,2x,f8.5,2x,i2)
       write(20,305)'El error de la primera derivada  es: ', errorc(j),j
      write(20,405)'El error de la segunda derivada es:',  error2(j),j
305   format(a35,2x,f8.5,2x,i2)
405   format(a35,2x,f8.5,2x,i2)
30      continue



      close(20)
      do 50 k=1,5

      open(40,file='derivadac.dat',status='unknown')
      open(60,file='derivada2.dat',status='unknown')
      write(40,*) dx(k),errorc(k)
      write(60,*) dx(k),error2(k)
50    continue
      close(40)
      close(60)
      end
C***********************************************************************
C           Definimos la funcion a evaluar:
C***********************************************************************
      function fun(X)
      real X ,t
      parameter (pi=3.1416)
      t=pi/2.0
      fun = sin(t*x)
      end
C***********************************************************************
C     Primera derivada
      function fun1(X)
      real X ,t
      parameter (pi=3.1416)
      t=pi/2.0
      fun1 = t*cos(t*x)
      end
C***********************************************************************
C     Segunda derivada
      function fun2(X)
      real X ,t
      parameter (pi=3.1416)
      t=pi/2.0
      fun2 = -(t**2)*sin(t*x)
      end

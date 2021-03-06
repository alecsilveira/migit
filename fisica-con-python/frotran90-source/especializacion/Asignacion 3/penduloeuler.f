
c     **Seudocodigo para calcular el movimiento de proyectiles simples**

      program pendulosimp
      
c     **Declaraci�n de variables**
      integer i,imax,n  !imax numero de itereciones maximas y n el
      !numero de oscilaciones
      real L,P ,W0 ,R ,AX,Wx
      !************************************************************
      !L representa la longitud del pendulo em metros
      !P representa el periodo en segundos
      !************************************************************
c      ** Declaracion de vectores del movimiento**
      real W(20000),A(20000),t(20000)
      !***********************************************************
      ! W  representa el vector velocidad angular  dado en rad/s
      ! A representa el vector posicion angular dado en rad
      ! T representael tiempo dado en s
      !**********************************************************
c     **Condiciones iniciales**
       parameter(g=9.8, dt=0.0005, pi=3.1416)
       
      write(*,*)'digite la longitud del pendulo en metros'
      read(*,*) L
      print*,'digite el numero de oscilaciones n'
      read(*,*) n

      
c     **Dar la velocidad  y la posicion angular inicial **
       W(1)=0.5
       A(1)=0.017
       T(1)=0
       W0=sqrt(g/l)
       P=(2*pi)/W0
      imax=(n*P)/dt
      R=n*P
      print*, 'El n�mero de iteracciones a realizar es',imax
       Ax=0.017
       Wx=0.5
      do 10 i=1,imax

        W(i+1)=W(i)-((W0**2)*Ax*dt )
        A(i+1)=A(i)+Wx*dt
        T(i)=i*dt
        Wx=W(i+1)
        Ax=A(i+1)

        print*, A(i),W(i),t(i),i
10    continue
       et=(abs(T(imax)-R)/R)*100

      WRITE(6,*)'El errorrelativo es:', et ,'%'

      WRITE(6,*)'El programa termino!'
      
c     **abrir los archivos y escribir los datos**
      open(20,file='posiciona2.dat',status='unknown')
      !open(30,file='velocidad.txt',status='unknown')
      do 60  i=1,imax
       write(20,*) T(i),A(i)
60    continue
      !write(30,*) vx
      close(20)
      open(40,file='velocidada2.dat',status='unknown')
      !open(30,file='velocidad.txt',status='unknown')
      do 80  i=1,imax
       write(40,*) w(i),A(i)
80    continue
      !write(30,*) vx
      close(40)
      !close(30)
      open(50,file='velocidad12.dat',status='unknown')
      !open(30,file='velocidad.txt',status='unknown')
      do 200  i=1,imax
       write(50,*) T(i),w(i)
200   continue
      !write(30,*) vx
      close(50)
      end

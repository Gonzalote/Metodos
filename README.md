El archivo f.m es una función auxiliar utilizada tanto en entrega2.m como en orden_error.m

El archivo euler.m implementa el método de Euler hacia adelante.

El archivo beuler.m implementa el método de Euler hacia atrás.

El archivo trapecio.m implementa el método del trapecio.

El archivo heun.m implementa el método Heun.

El archivo rungekutta4.m implementa el método de Runge-Kutta clásico de orden 4.

El archivo entrega2.m muestra una gráfica de error para cada método que representa el error global a medida que se aumenta la cantidad de pasos y además mide el tiempo que demora en finalizar cada método.

El archivo orden_error muestra una gráfica en escala logarítmica que representa cómo decrece el error global en cada método a medida que se decrementa el incremento h.

Para poder reproducir los experimentos planteados en el documento y/o realizar nuevos, se debe primero importar estos archivos, o copiar el código en algún motor de lenguaje Octave y luego elegir los parámetros deseados de la siguiente manera:

      -Se eligen los valores iniciales modificando el vector de estados inicial "y0" en el código de entrega2.m
      -Se elige el tiempo final modificando el valor de "tf" en el código de entrega2.m
      -Se elige la cantidad de intervalos modificando el valor de "M" en el código de entrega2.m
      
      -Se eligen los valores iniciales modificando el vector de estados inicial "y0" en el código de orden_error.m
      -Se elige el tiempo final modificando el valor de "tf" en el código de orden_error.m
      -Se elige la cantidad de intervalos modificando el valor de "M" en el código de orden_error.m
 

Los archivos f.m y euler.m son funciones auxiliares utilizadas tanto en entrega1.m como en graph1.m

El archivo entrega1.m simplemente despliega los puntos obtenidos por el método utilizado en forma de tabla. 

El archivo graph1.m obtiene los puntos de igual manera que lo hace entrega1.m, y además muestra una gráfica de la superficie y la curva obtenida sobre ella. También muestra gráficas de error que representan la diferencia entre el u(t) y v(t) obtenido por el método y el que devuelve Octave con la función Isode, considerando que este último se aproxima mucho más a la solución exacta que el resultado que nosotros obtenemos.

Para poder reproducir los experimentos planteados en el documento y/o realizar nuevos, se debe primero importar estos archivos, o copiar el código en algún motor de lenguaje Octave y luego elegir los parámetros deseados de la siguiente manera:

      -Se eligen los valores iniciales modificando el vector de estados inicial "y0".
      -Se elige el tiempo final modificando el valor de "tf".
      -Se elige la cantidad de intervalos modificando el valor de "M".

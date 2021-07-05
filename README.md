
<!DOCTYPE html>

<html>

<head>




<meta name="author" content="Rocío Mallqui" />





<!-- code folding -->




</head>

<body>


<div class="container-fluid main-container">




<div class="fluid-row" id="header">



<h1 class="title toc-ignore">resolución_práctica1</h1>
<h4 class="author">Rocío Mallqui</h4>
<h4 class="date">4/7/2021</h4>

</div>


<div id="ejercicio-1" class="section level2">
<h2>Ejercicio 1</h2>
<p>¿Qué cantidad de dinero sobra al repartir 10000$ entre 3 personas?</p>
<pre class="r"><code>10000%%3</code></pre>
<pre><code>## [1] 1</code></pre>
</div>
<div id="ejercicio-2" class="section level2">
<h2>Ejercicio 2</h2>
<p>¿Es el numero 4560 divisible por 3?</p>
<pre class="r"><code>x&lt;- 4560
x%%3==0  </code></pre>
<pre><code>## [1] TRUE</code></pre>
</div>
<div id="ejercicio-3" class="section level2">
<h2>Ejercicio 3</h2>
<p>Construya un vector con los numeros enteros del 2 al 87. ¿Cuales de esos numeros son divisibles por 7?</p>
<pre class="r"><code>y &lt;- c(2:87)  
y[(y %% 7)== 0]</code></pre>
<pre><code>##  [1]  7 14 21 28 35 42 49 56 63 70 77 84</code></pre>
</div>
<div id="ejercicio-4" class="section level2">
<h2>Ejercicio 4</h2>
<p>Construya dos vectores, el primero con los numeros enteros desde 7 hasta 3, el segundo vector con los primeros cinco numeros positivos divisibles por 5. • Sea A la condicion de ser par en el primer vector. • Sea B la condicion de ser mayor que 10 en el segundo vector. • ¿En cual de las 5 posiciones se cumple A y B simultaneamente?</p>
<pre class="r"><code>a &lt;- 7:3 
b &lt;- 1:5*5

A &lt;- a %% 2 == 0
B &lt;- b &gt; 10

A &amp; B</code></pre>
<pre><code>## [1] FALSE FALSE FALSE  TRUE FALSE</code></pre>
</div>
<div id="ejercicio-5" class="section level2">
<h2>Ejercicio 5</h2>
<p>Consulte este <link> en el cual hay una anectoda de Gauss niño. Use R para obtener el resultado de la suma solicitada por el profesor del niño Gauss.</p>
<pre class="r"><code>sum(c(1:100))</code></pre>
<pre><code>## [1] 5050</code></pre>
</div>
<div id="ejercicio-6" class="section level2">
<h2>Ejercicio 6</h2>
<p>Construya un vector con los siguientes elementos: 1, -4, 5, 9, -4. Escriba un procedimiento para extraer las posiciones donde est´a el valor minimo en el vector.</p>
<pre class="r"><code>V &lt;- c(1,-4,5,9,-4)   
which.min(V)</code></pre>
<pre><code>## [1] 2</code></pre>
</div>
<div id="ejercicio-7" class="section level2">
<h2>Ejercicio 7</h2>
<p>Calcular 8!</p>
<pre class="r"><code>prod((1:8))</code></pre>
<pre><code>## [1] 40320</code></pre>
</div>
<div id="ejercicio-8" class="section level2">
<h2>Ejercicio 8</h2>
<p>Evaluar la siguiente sumatoria Pi=7 i=3</p>
<pre class="r"><code>x&lt;- 3:7
sum(exp(x))</code></pre>
<pre><code>## [1] 1723.159</code></pre>
</div>
<div id="ejercicio-9" class="section level2">
<h2>Ejercicio 9</h2>
<p>Evaluar la siguiente productoria</p>
<pre class="r"><code>i =c(1:10)
prod(log(sqrt(i)))</code></pre>
<pre><code>## [1] 0</code></pre>
</div>
<div id="ejercicio-10" class="section level2">
<h2>Ejercicio 10</h2>
<p>Realizar una funcion que permita calcular el area de una corona circular.</p>
<pre class="r"><code>corona_circular &lt;- function(R,r){
  resultado  &lt;- pi*((R^2)- (r^2))
  resultado
}

corona_circular(8,2)</code></pre>
<pre><code>## [1] 188.4956</code></pre>
</div>
<div id="ejercicio-11" class="section level2">
<h2>Ejercicio 11</h2>
<p>Construya un vector cualquiera e inviertalo, es decir, que el primer elemento quede de ultimo, el segundo de penultimo y así sucesivamente. Compare su resultado con el de la funcion rev</p>
<pre class="r"><code>v &lt;- c(2,7,8,14,29)
x &lt;- c(v[length(x)],v[length(x)-1],v[length(x)-2],v[length(x)-3],v[length(x)-4])
rev(v)</code></pre>
<pre><code>## [1] 29 14  8  7  2</code></pre>
</div>
<div id="ejercicio-12" class="section level2">
<h2>Ejercicio 12</h2>
<p>Calcular lo siguiente sumatorio P100 i=10(i^3 + 4i^2)</p>
<pre class="r"><code>suma&lt;-0 
for (i in 10:100) {
  ecu&lt;-((i^3) + (4*i^2))
  suma&lt;-suma+ecu
  }
suma</code></pre>
<pre><code>## [1] 26852735</code></pre>
</div>
<div id="ejercicio-13" class="section level2">
<h2>Ejercicio 13</h2>
<p>Calcular lo siguiente sumatoria de i=1 a 25 (2^i/i +3<sup>i/i</sup>2 )</p>
<pre class="r"><code>x&lt;-0
for (i in 1:25) {
  y&lt;-((2^i)/i+(3^i)/(i^2))
  x&lt;-x+y
}
x</code></pre>
<pre><code>## [1] 2129170437</code></pre>
</div>
<div id="ejercicio-14" class="section level2">
<h2>Ejercicio 14</h2>
<p>Lea el siguiente archivo</p>
<p>• Calcular el numero de variables del dataset</p>
<pre class="r"><code>dt&lt;-read.table(&quot;C:/PROGRA/Paises.txt&quot;,header = TRUE)

length(colnames(dt)) </code></pre>
<pre><code>## [1] 5</code></pre>
<p>• ¿Cuantos países hay en el dataset?</p>
<pre class="r"><code>length(dt$Pais)  </code></pre>
<pre><code>## [1] 107</code></pre>
<p>• ¿Cuál es el país con mayor poblacion?</p>
<pre class="r"><code>dt$Pais[which.max(dt$poblacion)] </code></pre>
<pre><code>## [1] &quot;China_&quot;</code></pre>
<p>• ¿Cuál es el país con alfabetizacion mas baja?</p>
<pre class="r"><code>dt$Pais[which.min(dt$alfabetizacion)] </code></pre>
<pre><code>## [1] &quot;Burkina_Faso&quot;</code></pre>
</div>
<div id="ejercicio-15" class="section level2">
<h2>Ejercicio 15</h2>
<p>En R hay unas bases de datos inclu´ıdas, una de ellas es la base de datos llamada mtcars. Para conocer las variables que estan en mtcars usted puede escribir en la consola ?mtcars o tambi´en help(mtcars). De la base mtcars obtenga bases de datos que cumplan las siguientes condiciones.</p>
<pre class="r"><code>w&lt;-mtcars
head(w)</code></pre>
<pre><code>##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1</code></pre>
<p>• Autos que tengan un rendimiento menor a 18 millas por galon de combustible.</p>
<pre class="r"><code>rendi &lt;-w[w$mpg&lt;18,]
rownames(rendi)</code></pre>
<pre><code>##  [1] &quot;Duster 360&quot;          &quot;Merc 280C&quot;           &quot;Merc 450SE&quot;         
##  [4] &quot;Merc 450SL&quot;          &quot;Merc 450SLC&quot;         &quot;Cadillac Fleetwood&quot; 
##  [7] &quot;Lincoln Continental&quot; &quot;Chrysler Imperial&quot;   &quot;Dodge Challenger&quot;   
## [10] &quot;AMC Javelin&quot;         &quot;Camaro Z28&quot;          &quot;Ford Pantera L&quot;     
## [13] &quot;Maserati Bora&quot;</code></pre>
<p>• Autos que tengan 4 cilindros.</p>
<pre class="r"><code>cilin &lt;-w[w$cyl==4,]
rownames(cilin) </code></pre>
<pre><code>##  [1] &quot;Datsun 710&quot;     &quot;Merc 240D&quot;      &quot;Merc 230&quot;       &quot;Fiat 128&quot;      
##  [5] &quot;Honda Civic&quot;    &quot;Toyota Corolla&quot; &quot;Toyota Corona&quot;  &quot;Fiat X1-9&quot;     
##  [9] &quot;Porsche 914-2&quot;  &quot;Lotus Europa&quot;   &quot;Volvo 142E&quot;</code></pre>
<p>• Autos que pesen mas de 2500 libras y tengan transmision manual</p>
<pre class="r"><code>peso &lt;-w[w$wt&gt;2.500 &amp; w$am==1, ]
rownames(peso)</code></pre>
<pre><code>## [1] &quot;Mazda RX4&quot;      &quot;Mazda RX4 Wag&quot;  &quot;Ford Pantera L&quot; &quot;Ferrari Dino&quot;  
## [5] &quot;Maserati Bora&quot;  &quot;Volvo 142E&quot;</code></pre>
</div>
<div id="ejercicio-16" class="section level2">
<h2>Ejercicio 16</h2>
<p>La ecuacion de tiempo es la diferencia entre el tiempo solar medio y el tiempo solar aparente. Si bien esta var´ıa, la forma anal´ıtica de esta ecuacion se muestra a continuaci´on (Usar x como un rango de 0 a 365). Replicar el grafico:</p>
<p>y = 2π · (x − 81)/365 f(y) = 9.87 · sin(2y) − 7.53 · cos(y) − 1.5 · sin(y)</p>
<pre class="r"><code>x&lt;-0:365
y&lt;-pi*2*(x-81)/365
funcion&lt;-9.87*sin(2*y)-7.35*cos(y)-1.5*sin(y)
n&lt;-month.abb
n&lt;-x/33.27
m&lt;-month.abb


plot(n, funcion, xaxt = &quot;n&quot;)
axis(1, at = seq(round(min(n)), round(max(n)), by = 1), labels =m)</code></pre>
<p><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABUAAAAPACAMAAADDuCPrAAAA21BMVEUAAAAAADoAAGYAOjoAOmYAOpAAZmYAZpAAZrY6AAA6OgA6Ojo6OmY6ZmY6ZpA6ZrY6kJA6kNtmAABmOgBmOjpmOmZmZmZmZpBmkJBmkLZmkNtmtrZmtttmtv+QOgCQOjqQZgCQZjqQZmaQkGaQkLaQtraQttuQtv+Q29uQ2/+2ZgC2Zjq2kDq2kGa2kLa2tma2tpC2tra2ttu225C229u22/+2///bkDrbkGbbtmbbtpDbtrbbttvb27bb29vb2//b/7bb////tmb/25D/27b/29v//7b//9v///+cSLV4AAAACXBIWXMAAB2HAAAdhwGP5fFlAAAgAElEQVR4nO3djZ/bNp7fcU5itzOxNzk/dHZ9F7ubvUu2mdTbnVySuTi104wfpP//L6ooiiRAUhLxI0DgB3zer/bOmRuRIAh+hSdpqi0AQKSKXQAA0IoABQAhAhQAhAhQABAiQAFAiAAFACECFACECFAAECJAAUCIAAUAIQIUAIQIUAAQIkABQIgABQAhAhQAhAhQABAiQAFAiAAFACECFACECFAAECJAAUCIAAUAIQIUAIQIUAAQIkABQIgABQAhAhQAhAhQABAiQAFAiAAFACECFACECFAAECJAAUCIAAUAIQIUAIQIUAAQIkABQIgABQAhAhQAhAhQABAiQAFAiAAFACECFACECFAAECJAAUCIAAUAIQIUAIQIUAAQIkABQIgABQAhAhQAhAhQABAiQAFAiAAFACECFACECFAAECJAAUCIAAUAIQIUAIQIUAAQIkABQIgABQAhAhQAhAhQABAiQAFAiAAFACECFACECFAAECJAAUCIAAUAIQIUAIQIUAAQIkABQIgABQAhAhQAhAhQABAiQAFAiAAFACECFACECFAAECJAAUCIAAUAIQIUAIQIUAAQIkABQIgABQAhAhQAhAhQABAiQAFAiAAFACECFACECFAAECJAAUCIAAUAIQIUAIQIUAAQIkABQIgABQAhAhQAhAhQABAiQAFAiAAFACECFACECFAAECJAAUCIAAUAIQIUAIQIUAAQIkABQIgABQAhAhQAhAhQABAiQAFAiAAFACECFACECFAAECJAAUCIAAUAIQIUAIQIUAAQIkABQIgABQAhAhQAhAhQABAiQAFA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" width="672" /></p>
</div>




</div>


<!-- tabsets -->


<!-- code folding -->


<!-- dynamically load mathjax for compatibility with self-contained -->


</body>
</html>

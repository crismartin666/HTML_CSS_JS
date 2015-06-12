<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<style>
	body {
		background-image: none;
	}
	#list_images, #list_links {
		display: none;
	}
</style>

<section>
	<article>
		<header>
			<h2>Objetos básicos de JavaScript</h2>
		</header>
		<div class="cnt_article">
		
			<h3>Window</h3>
			<p>Capitulo 13; pagina 306</p>	
			<ul>
				<li>
					<strong>location:</strong>
					<span id="w_location"></span>
				</li>
				<li>
					<strong>name:</strong>
					<span><mark id="w_name"></mark></span><code>document.title</code> para el nombre de la pestaña
				</li>
				<li>
					<strong>window.open():</strong>
					<input type="button" id="w_open" value="window.open(url,nombe,opciones)">
					<code>* Chrome no funciona resizable=no hacerlo mediante JavaScript.</code>
				</li>
				<li>
					<strong>window.close():</strong>
					<input type="button" id="w_close" value="window.close()">
					<code>Scripts may close only the windows that were opened by it.</code>
				</li>
				<li>
					<strong>window.alert():</strong>
					<input type="button" id="w_alert" value="window.alert(mensaje)">
				</li>
				<li>
					<strong>window.confirm():</strong>
					<input type="button" id="w_confirm" value="window.confirm(mensaje)">
				</li>
				<li>
					<strong>window.prompt():</strong>
					<input type="button" id="w_prompt" value="window.prompt(mensaje,valor_por_defecto)">
				</li>
			</ul>		
			<script>
				/****************************
							WINDOW
				****************************/
				//Propiedad location
				var span_location = document.getElementById('w_location');
				span_location.innerHTML = window.location;
				//Propiedad name
				document.getElementById('w_name').innerHTML = window.name; // Esta vacio.				
				//Metodo open()
				var btn_w_open =  document.getElementById('w_open');
				btn_w_open.onclick = function () {
					console.info('Hemos hecho click');
					window.open("http://localhost:8080/HolaMundoIeltxu/ejemplos/javascript/objetos.jsp", "w_open", "height=2000px, width=500px" );
				}				
				//Metodo close()
				document.getElementById('w_close').onclick = function () {
					window.close();				
				}	
				//Metodo alert()
				document.getElementById('w_alert').onclick = function () {	
						window.alert("Mensaje del alert, actualmente esta desaconsejado su utilizacion");			
				}
				//Metodo confirm()
				document.getElementById('w_confirm').onclick = function () {
					if (window.confirm ("¿Quieres continuar?") == true){
						alert("Esta bien, continuemos");
					} else {
						alert("Continuemos de todas formas!");
					}				
				}				
				//Metodo prompt()
				document.getElementById('w_prompt').onclick = function () {
					var nombre = window.prompt("Introduzca su nombre;", "");
					if(nombre){
						alert("Buenos dias " + nombre + " !");
					}else{
						alert("Te quedas sin saludo.");
					}					
				}
			</script>	
			
					
			<h3>Document</h3>
			<p>Capitulo 13; pagina 310</p>
			<ul>
				<li>
					<strong>bgcolor:</strong>
					<input type="button" id="d_bgcolor" value='document.bgColor=""'>
				</li>
				<li>
					<strong>images:</strong>
					<input type="button" id="d_images" value="document.images[ ]">
					<input type="button" id="ocultar_images" value="ocultar">
					<div id="list_images">
						<ul>
							<%
								for(int i=0;i<3;i++){
									out.print("<li id='image_" + i + "'></li>");
								}
							%>
						</ul>
					</div>
				</li>
				<li>
					<strong>links:</strong>
					<input type="button" id="d_links" value="document.links[ ]">
					<input type="button" id="ocultar_links" value="ocultar">
					<div id="list_links">
						<ul>
							<%
								for(int i=0;i<5;i++){
									out.print("<li id='link_" + i + "'></li>");
								}
							%>
						</ul>
					</div>
				</li>
			</ul>	
			<script>
				/****************************
						   DOCUMENT
				****************************/
				//Propiedad bgColor
				document.getElementById('d_bgcolor').onclick = function () {
					document.bgColor="green";
				}
				//Propiedad images
				document.getElementById('d_images').onclick = function () {
					document.getElementById('list_images').style.display = "block";
					for(i=0; i<document.images.length; i++){
						console.info(document.images[i]);
						document.getElementById('image_' + i).innerHTML = document.images[i].src;
					}
					
				}
				//Propiedad link
				document.getElementById('d_links').onclick = function () {
					document.getElementById('list_links').style.display = "block";
					for(i=0; i<document.links.length; i++){
						console.info(document.links[i]);
						document.getElementById('link_' + i).innerHTML = document.links[i];
					}
				}
				
				//ocultar las listas
				document.getElementById('ocultar_links').onclick = function () {
					document.getElementById('list_links').style.display = "none";
				}
				document.getElementById('ocultar_images').onclick = function () {
					document.getElementById('list_images').style.display = "none";
				}
			</script>
			
			
			<h3>Location</h3>
			<p>Capitulo 13; pagina 311</p>	
			<ul>
				<li>
					<strong>host:</strong>
					<span id="l_host"></span>
				</li>
				<li>
					<strong>hostname:</strong>
					<span id="l_hostname"></span>
				</li>
				<li>
					<strong>port:</strong>
					<span id="l_port"></span>
				</li>
				<li>
					<strong>protocol:</strong>
					<span id="l_protocol"></span>
				</li>
				<li>
					<strong>href:</strong>
					<span id="l_href"></span>
				</li>
				<li>
					<strong>pathname:</strong>
					<span id="l_pathname"></span>
				</li>
				<li>
					<strong>reload():</strong>
					<input type="button" id="l_reload" value="location.reload()">
				</li>
				<li>
					<strong>replace():</strong>
					<input type="button" id="l_replace" value="location.replace(URL)">
				</li>
			</ul>
			<script>
				/****************************
						   LOCATION
				****************************/
				//Propiedad host
				document.getElementById('l_host').innerHTML = location.host;
				//Propiedad hostname
				document.getElementById('l_hostname').innerHTML = location.hostname;
				//Propiedad port
				document.getElementById('l_port').innerHTML = location.port;
				//Propiedad protocol
				document.getElementById('l_protocol').innerHTML = location.protocol;
				//Propiedad href
				document.getElementById('l_href').innerHTML = location.href;
				//Propiedad href
				document.getElementById('l_pathname').innerHTML = location.pathname;
				//Metodo reload()
				document.getElementById('l_reload').onclick = function () {
					location.reload();
				}
				//Metodo replace()
				document.getElementById('l_replace').onclick = function () {
					location.replace("http://localhost:8080/HolaMundoIeltxu/");
				}
			</script>
			
								
			<h3>Screen</h3>
			<p>Capitulo 13; pagina 313</p>
			<ul>
				<li>
					<strong>availHeight:</strong>
					<span id="s_availHeight"></span>
				</li>
				<li>
					<strong>height:</strong>
					<span id="s_height"></span>
				</li>
				<li>
					<strong>availWidth:</strong>
					<span id="s_availWidth"></span>
				</li>
				<li>
					<strong>width:</strong>
					<span id="s_width"></span>
				</li>
				<li>
					<strong>colorDepth:</strong>
					<span id="s_colorDepth"></span>
				</li>
			</ul>	
			<script>
				/****************************
						   SCREEN
				****************************/
				//Propiedad availHeight
				document.getElementById('s_availHeight').innerHTML = screen.availHeight;
				//Propiedad availWidth
				document.getElementById('s_availWidth').innerHTML = screen.availWidth;
				//Propiedad height
				document.getElementById('s_height').innerHTML = screen.height;
				//Propiedad width
				document.getElementById('s_width').innerHTML = screen.width;
				//Propiedad colorDepth
				document.getElementById('s_colorDepth').innerHTML = screen.colorDepth;
			</script>
			
			
			<h3>Navigator</h3>
			<p>Capitulo 13; pagina 313</p>	
			<ul>
				<li>
					<strong>language:</strong>
					<span id="n_language"></span>
				</li>
				<li>
					<strong>userAgent:</strong>
					<span id="n_userAgent"></span>
				</li>
				<li>
					<strong>cookieEnabled:</strong>
					<span id="n_cookieEnabled"></span>
				</li>
			</ul>
			<script>
				/****************************
						   NAVIGATOR
				****************************/
				//Propiedad n_language
				document.getElementById('n_language').innerHTML = navigator.language;
				//Propiedad userAgent
				document.getElementById('n_userAgent').innerHTML = navigator.userAgent;
				//Propiedad cookieEnabled
				document.getElementById('n_cookieEnabled').innerHTML = navigator.cookieEnabled;
			</script>
			
			
			<h3>History</h3>			
			<p>Capitulo 13; pagina 315</p>	
			<ul>
				<li>
					<strong>length:</strong>
					<span id="h_length"></span>
				</li>
				<li>
					<strong>back():</strong>
					<input type="button" id="h_back" value="history.back()">
				</li>
				<li>
					<strong>forwad():</strong>
					<input type="button" id="h_forward" value="history.forwad()">
				</li>
				<li>
					<strong>go():</strong>
					<input type="button" id="h_go" value="history.go(numero)">
				</li>
				
			</ul>
			<script>
				/****************************
						   HISTORY
				****************************/
				//Propiedad length
				document.getElementById('h_length').innerHTML = history.length;
				//Metodo back()
				document.getElementById('h_back').onclick = function () {
					history.back();
				}
				//Metodo forward()
				document.getElementById('h_forward').onclick = function () {
					history.forward();
				}
				//Metodo go()
				document.getElementById('h_go').onclick = function () {
					history.go(-3);
				}
			</script>
			
		</div> <!-- cnt_article -->
		<footer>
			<p>Para visualizar entrar en la console de Chrome 'ctrl+shift+i'</p>
		</footer>
	</article>

</section>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>
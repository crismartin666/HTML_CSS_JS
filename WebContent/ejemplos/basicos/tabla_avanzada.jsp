<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<section>
	
		<div id="tabla_avanzada">		
						
			<h1>Extreme�a de Tel�fonos S.A</h1>
			<table>
				<caption>Factura detallada</caption>
				
				<!-- cabecera de la tabla -->
				<thead>
					<tr>
						<th colspan="5">EXTREME�A DE TEL�FONOS</th>
					</tr>
				</thead>
				<!-- fin cabecera -->  

				<!-- pie de la tabla -->
				<tfoot>
					<tr>
						<td colspan="5" class="cursiva">Extreme�a de Tel�fonos le informa que puede llamar al n�mero gratuito 666 para cualquier duda o sugerencia que tenga acerca de esta factura o de nuestro servicios.</td>
					</tr>
				</tfoot>
				<!-- fin pie de la tabla -->  

				<!-- cuerpo de la tabla -->
				<tbody>
				<tr>
				   <th colspan="5">Detalle de cuotas</th>
				</tr>
				<tr>
				   <th>PERIODO</th>
				   <th>CONCEPTO</th>
				   <th>IMPORTE</th>
				   <th colspan="2">DESCUENTO</th>
				</tr>
				<tr>
				   <td  rowspan="3" class="centrado">01/05/13 - 01/07/13</td>
				   <td class="izquierda">Servicio de identificaci�n de llamadas</td>
				   <td class="centrado">12 �</td>
				   <td colspan="2" class="centrado">0</td>
				</tr>
				<tr>
				   <td class="izquierda">L�nea individual</td>
				   <td class="centrado">14 �</td>
				   <td colspan="2" class="centrado">0</td>
				</tr>
				<tr>
				   <td class="izquierda">Bono ciudad</td>
				   <td class="centrado">10 �</td>
				   <td colspan="2" class="centrado">0</td>
				</tr>
				<tr>
				   <td class="izquierda" colspan="2">TOTAL:</td>
				   <td colspan="3" class="derecha">36 �</td>
				</tr>
				<tr>
				   <th colspan="5">Detalle de consumos</th>
				</tr>
				<tr>
				   <th>CONCEPTO</th>
				   <th>LLAMADAS</th>
				   <th>DURACI�N</th>
				   <th>IMPORTE</th>
				   <th>DESCUENTO</th>
				</tr>
				<tr>
				<td class="izquierda">Ll�mada internacional</td>
				   <td>23</td>
				   <td>10m 23s</td>
				   <td>13 �</td>
				   <td>0</td>
				</tr>
				<tr>
				<td class="izquierda">Ll�mada metropolitana</td>
				   <td>23</td>
				   <td>10m 23s</td>
				   <td>3,5 �</td>
				   <td>0</td>
				</tr>
				<tr>
				   <td colspan="2" class="izquierda">TOTAL:</td>
				   <td colspan="3" class="derecha">16, 5�</td>
				</tr>
				</tbody>
				<!-- fin cuerpo de la tabla -->  
			</table>
		</div> <!-- tabla_avanzada -->
</section>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>

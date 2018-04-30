<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adicionar Crit�rio</title>
</head>
<body>
	<center>
	
		<% int n = 0; %>
		
		<h1> Crit�rio </h1>
			
        <form action="confirmarCriterio.jsp" method="post">
            <p>Descri��o: <textarea name="descricaoCrit" rows="1" cols="30" required></textarea></p>
            <p>Peso: <input type="number" name="pesoCrit" value="0" required> </p>
            
            <h2> Itens do Crit�rio </h2>
            
            <div id="origem" align="center">
            	<p>Descri��o: <textarea id="descricao0" name="descricao0" rows="1" cols="30"></textarea></p>
            	<p>Peso: <input type="number" id="peso0" name="peso0" value="0"> </p>
			</div>
			
			<div id="destino">
			</div>
            
            <input type="button" value="+" onclick="maisCampos();">
            <input type="button" value="-" onclick="removerCampos(this);">
            
			<br /> 		          
            <p><button type="submit">Adicionar Crit�rio</button></p>
        </form>
        
         <!-- <form action="adicionarMaisItens.jsp" method="post">
	            <button type="submit">Adicionar Mais Itens</button>
	     </form> -->
        
    </center>
    
    <script type="text/javascript">
    	var cont = 1;
    	
	    function maisCampos(){
	    	var clone = document.getElementById('origem').cloneNode(true);
	    	var destino = document.getElementById('destino');
	    	destino.appendChild(clone);

	    	var camposClonados = clone.getElementsByTagName('input');
	    	for(i=0; i<camposClonados.length;i++){
	    		camposClonados[i].value = '';
	    		camposClonados[i].name = camposClonados[i].name + cont;
	    	}
	    	
	    	camposClonados = clone.getElementsByTagName('textarea');
	    	for(i=0; i<camposClonados.length;i++){
	    		camposClonados[i].value = '';
	    		camposClonados[i].name = camposClonados[i].name + cont;
	    	}
	    	
	    	cont = cont + 1;
	    }
	    
 	    function removerCampos(id){
	   	    var node1 = document.getElementById('destino');
	    	node1.removeChild(node1.childNodes[cont]);
	    	cont = cont - 1;
	    } 
    </script>
</body>
</html>
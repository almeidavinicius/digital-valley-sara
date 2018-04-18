<%-- 
    Document   : paginaEvento
    Created on : 09/04/2018, 11:22:03
    Author     : Hugo
--%>

<%@page import="br.ufc.russas.model.Evento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            table{    
                border-spacing: 10px; 
            }
        </style>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sara</title>
    </head>
    <body>
    <center>
        <% 
            String nome = request.getParameter("evento");
            Evento evento = (Evento) session.getAttribute(nome);
        %>
        <h2><%= evento.getNome()%></h2>
        <p><%= evento.getDescricao()%></p>
        <p><%= evento.getLocalizacao()%></p>
        <p><%= evento.getDataEvento()%></p>
        
        <table border="1" >
        <tr>
            <th>Trilha</th>
            <th>Descrição</th>
            <th>Data</th>
        </tr>
        <% 
            for(int i=0; i < evento.getTrilhas().size(); i++){
                session.setAttribute("t"+Integer.toString(evento.getTrilhas().get(i).getIdTrilha()), evento.getTrilhas().get(i));
               %>
               
               <tr>
                   
                   <td><%= evento.getTrilhas().get(i).getNome() %> </td> 
                   <td>Descrição</td> 
                   <td>Data</td>
                   <td> <form action="paginaTrilha" method="post"> 
                           <input type="hidden" value="t<%= evento.getTrilhas().get(i).getIdTrilha()%>" name="trilha"> 
                           <button type="submit">pressione</button>
                       </form> 
                   </td>
                   
               </tr>
               
            <%}
        %>    
    </table>
    <p/>
    <input type="button" onclick="location.href='indexAutor';" value="Voltar"/>
    </center>
    </body>
</html>

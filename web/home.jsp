<%-- 
    Document   : home
    Created on : 07/05/2018, 21:38:40
    Author     : a
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatepg.quiz.ControleDeSessao"%>
<%@page import="br.com.fatepg.quiz.Questoes"%>
<%@page import="br.com.fatepg.quiz.Quiz"%>
<%@page import="br.com.fatepg.quiz.TestesRealizados"%>
<%@page import="br.com.fatepg.quiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Quiz</title>
    </head>
    <body>
        <h1>Web Quiz</h1>
        
        <%  
      
        if(session.getAttribute("userName") != null){  
        String name=(String)session.getAttribute("userName"); 
        %>
        <h2>Bem vindo <%=name%></h2>
         <%}%>
        <form action="ControleDeSessao">  
            <br/>  
            <%  
                if(session.getAttribute("userName") == null){ 
            %>
                Login:<input type="text" name="userName"/>
                <input type="submit" name=login  value="Entrar"/>
            <%}else{%>  
                <input type="submit" name=logout value="Sair"/>
                <input type="button" onclick="document.location.href='quiz.jsp'" value="Realizar Quiz"/>  
            <%}%>
        </form>
        
            <div>
                <% if(session.getAttribute("userName") != null){ 
                    Usuario user = new Usuario();
                    user.setNome((String)session.getAttribute("userName"));
                    user.pegarPartidas();
                   if (user.getLast10().size() > 0) { 
                %>
                <h2>Sua pontuação média: <%= user.getMedia() %></h2>
            <h2>Seus <%= user.getLast10().size() %> Ultimos Jogos</h2>
                 <table>
                     <tr>
                         <th>Nota</th>
                     </tr>

                    <% 
                        int sizeList = (user.getLast10().size())-1;
                        int fimRank = sizeList - 10;
                        for(int i=sizeList;i>fimRank;i--){ %>
                     <tr>
                        <% if(i>=0){ %>
                        <td><%= user.getLast10().get(i) %></td>
                        
                        <%}else{}%>
                     </tr>
                
                    <%}%>
                 </table>
                  <%}%>
                <%}%>
            </div>
            
            <div>
                <% 
                   TestesRealizados teste = new TestesRealizados();
                   if (teste.getLast10Geral().size() > 0) { %>
                    <%if(teste.getLast10Geral().size() <= 10){%>
                        <h2>Ultimos <%= teste.getLast10Geral().size() %> Jogos</h2>
                    <%}else{ %>
                        <h2>Ultimos 10 Jogos</h2>        
                    <%}%>
                    <table>
                     <tr>
                            <th>Nome</th><th>Nota</th>
                     </tr>
                    <% 
                        int sizeList = (teste.getLast10Geral().size())-1;
                        int fimRank = sizeList - 10;
                        for(int i=sizeList;i>fimRank;i--){ %>
                     <tr>
                        <% if(i>=0){ %>
                        <td><%= teste.getLast10Geral().get(i).getUser() %></td>
                        <td><%= teste.getLast10Geral().get(i).getPontuacao() %>/100.0</td>
                        <%}else{}%>
                     </tr>
                
                    <%}%>
                 </table>
                <%}%>
           </div>

           <div>
                <% 
                  // TestesRealizados test = new TestesRealizados();
                   if (teste.getLast10Geral().size() > 0) { 
                    teste.gerarTopPontuacoes();
                %>
                    <%if(teste.getMelhoresNotas().size() <= 10){%>
                        <h2>Top <%= teste.getMelhoresNotas().size() %> Pontuaçoes</h2>
                    <%}else{ %>
                        <h2>Top 10 Pontuações</h2>        
                    <%}%>
                    <table>
                     <tr>
                            <th>Nome</th><th>Nota</th>
                     </tr>
                    <% 
                        int sizeList = (teste.getMelhoresNotas().size())-1;
                        int fimRank = sizeList - 10;
                        for(int i=sizeList;i>fimRank;i--){ %>
                     <tr>
                        <% if(i>=0){ %>
                        <td><%= teste.getMelhoresNotas().get(i).getUser() %></td>
                        <td><%= teste.getMelhoresNotas().get(i).getPontuacao() %>/100.0</td>
                        <%}else{}%>
                     </tr>
                    <%}%>
                 </table>
                <%}%>
           </div>
    </body>
</html>
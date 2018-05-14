
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatepg.quiz.Questoes"%>
<%@page import="br.com.fatepg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Web Quiz</title>
    </head>
    <body>
        <h1>Web Quiz</h1>
        <h2>Selecione o nome do jogo de acordo com a imagem.</h2>
        <form action = "resultado.jsp">
        <%            
            Quiz q = new Quiz();
            ArrayList<Questoes> test = new ArrayList<>();
            q.inicializarQuestoes();
            test = q.getTeste();
            
            for(int i=0; i < test.size(); i++){
        
                //for (int i=0;i<Quiz.getTeste().size(); i++){
                  //  Quiz quiz = new Quiz(session.getAttribute("userName").toString());
                    //Questoes q = Quiz.getTeste().get(i); 
        %>
             
            <img src ="<%=test.get(i).getQuestao()%>" alt="image" />
                <br>
            <input type="radio" name="<%=i %>" value="<%=test.get(i).getAlternativas()[0]%>"/><%=test.get(i).getAlternativas()[0]%>
            <input type="radio" name="<%=i %>" value="<%=test.get(i).getAlternativas()[1]%>"/><%=test.get(i).getAlternativas()[1]%>
            <input type="radio" name="<%=i %>" value="<%=test.get(i).getAlternativas()[2]%>"/><%=test.get(i).getAlternativas()[2]%>
            <br>
            <br>
            <%}%>
            
                <hr/>
                <input type="submit" name="tested" value="Enviar" />
        </form>
    </body>
</html>
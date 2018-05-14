
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatepg.quiz.Questoes"%>
<%@page import="br.com.fatepg.quiz.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="theme.css" type="text/css"> </head>
        <title>Web Quiz</title>
    </head>
    <body>
         <nav class="navbar navbar-expand-md bg-primary navbar-dark bg-gradient">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <i class="fa d-inline fa-gamepad fa-4x"></i>
                    <b><strong>Game Quiz</strong></b>
                </a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar2SupportedContent">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse text-center justify-content-end" id="navbar2SupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="sobreNos.jsp">
                                <i class="fa d-inline fa-lg fa-reddit-alien"></i>&nbsp;
                                <br>Sobre nós</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
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
        <br><br>
        
            <img src ="<%=test.get(i).getQuestao()%>" alt="image" />
                <br>
            <input type="radio" name="<%=i %>" value="<%=test.get(i).getAlternativas()[0]%>"/><%=test.get(i).getAlternativas()[0]%>
            <input type="radio" name="<%=i %>" value="<%=test.get(i).getAlternativas()[1]%>"/><%=test.get(i).getAlternativas()[1]%>
            <input type="radio" name="<%=i %>" value="<%=test.get(i).getAlternativas()[2]%>"/><%=test.get(i).getAlternativas()[2]%>
            <br>
            <br>
            <%}%>
            
                <hr/>
                <input type="submit" class="btn btn-secondary" name="tested" value="Enviar" />
                
                
        </form>
            <br>
            <div class="py-5 bg-dark text-white">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        <p class="lead">Sign up to our newsletter for the latest news</p>
                        <form class="form-inline">
                            <div class="form-group">
                                <input type="email" class="form-control" placeholder="Your e-mail here"> </div>
                            <button type="submit" class="btn btn-secondary ml-3">Subscribe</button>
                        </form>
                    </div>
                    <div class="col-4 col-md-1 align-self-center">
                        <a href="https://www.facebook.com" target="_blank">
                            <i class="fa fa-fw fa-facebook fa-3x text-white"></i>
                        </a>
                    </div>
                    <div class="col-4 col-md-1 align-self-center">
                        <a href="https://twitter.com" target="_blank">
                            <i class="fa fa-fw fa-twitter fa-3x text-white"></i>
                        </a>
                    </div>
                    <div class="col-4 col-md-1 align-self-center">
                        <a href="https://www.instagram.com" target="_blank">
                            <i class="fa fa-fw fa-instagram text-white fa-3x"></i>
                        </a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 mt-3 text-center">
                        <p>© Copyright 2018 Turma ADS - All rights reserved.</p>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>

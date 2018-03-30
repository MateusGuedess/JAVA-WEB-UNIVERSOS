<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String equipe = request.getParameter("equipe");
    List<String> personagens = new ArrayList<String>();

        if("Jedi".equals(equipe)){
        personagens.add("Luke Skywalker");
        personagens.add("Yoda");
        personagens.add("Obi Wan Kenobi");
        personagens.add("Qui-Gon Jinn");
    }   
    if("Sith".equals(equipe)){
        personagens.add("Darth Vader");
        personagens.add("Darth Sidious");
        personagens.add("Darth Maul");
        personagens.add("Conde Dokku");
    }   
    if("Humanos".equals(equipe)){
        personagens.add("Aragorn");
        personagens.add("Boromir");
        personagens.add("Gandalf");
        personagens.add("Saruman");
    }   
    if("Anoes".equals(equipe)){
        personagens.add("Azaghal");
        personagens.add("Thorin ");
        personagens.add("Gloin");
        personagens.add("Gimli");
        personagens.add("Fili");
    }   
    if("Elfos".equals(equipe)){
        personagens.add("Galadriel");
        personagens.add("Legolas");
        personagens.add("Tauriel");
    }   
    if("Hobbits".equals(equipe)){
        personagens.add("Frodo Baggins");
        personagens.add("Bilbo Baggins");
        personagens.add("Samwise Gamgee");
        personagens.add("Peregrin Took");
    }   
    if("Stark".equals(equipe)){
        personagens.add("Ned Stark");
        personagens.add("Catelyn Stark");
        personagens.add("Robb Stark");
        personagens.add("Arya Stark");
    }   
    if("Targaryen".equals(equipe)){
        personagens.add("Daenerys Targaryen");
        personagens.add("Aegon Targaryen");
        personagens.add("Aerys Targaryen");
        personagens.add("Viserys Targaryen");
    }   
    if("Lannister".equals(equipe)){
        personagens.add("Guilherme Lannister");
        personagens.add("Tyrion Lannister");
        personagens.add("Jaime Lannister");
        personagens.add("Cersei Lannister");
    }   


%>
<!DOCTYPE html>
<html>
    <head>
        <title>Equipe <%=equipe%></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <h1 class="text-center">Equipe <%=equipe%></h1>
                    <ol>
                        <% for(String personagem : personagens){%>
                            <li><%=personagem%></li>
                        <%} %>
                        <p>
                            <a href="javascript:history.back()" class="btn  btn-danger" style="width: 100%">Voltar</a>
                        </p>
                    </ol>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    </body>
</html>

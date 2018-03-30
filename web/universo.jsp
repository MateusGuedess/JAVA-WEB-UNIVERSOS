<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dto.Grupo"%>
<%@page import="dto.Universo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int codigo = Integer.parseInt(request.getParameter("universo"));
    Universo universo = new Universo();
    
    switch(codigo){
        case 1:
            universo.setNome("Star Wars");
            List<Grupo> grupos = new ArrayList<Grupo>();
            grupos.add(new Grupo("Jedi"));        
            grupos.add(new Grupo("Sith"));       
            universo.setGrupos(grupos);
            break;
        case 2:
            universo.setNome("Senhor dos Aneis");
            List<Grupo> grupos2 = new ArrayList<Grupo>();
            grupos2.add(new Grupo("Humanos"));
            grupos2.add(new Grupo("Anoes"));
            grupos2.add(new Grupo("Elfos"));
            grupos2.add(new Grupo("Hobbits"));
            universo.setGrupos(grupos2);
            break;
        case 3:
            universo.setNome("Game of Thrones");
            List<Grupo> grupos3 = new ArrayList<Grupo>();
            grupos3.add(new Grupo("Stark"));
            grupos3.add(new Grupo("Targaryen"));
            grupos3.add(new Grupo("Lannister"));
            universo.setGrupos(grupos3);
            break;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title><%=universo.getNome()%></title>
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
                    <form action="equipe.jsp" method="GET">
                        <h1 class="text-center"><%=universo.getNome()%></h1>
                        <p class="text-center">Selecione seu grupo:</p>
                        <select class="form-control" name="equipe">
                            <% for(Grupo grupo : universo.getGrupos()){%>
                                <option value="<%=grupo.getNome()%>"><%=grupo.getNome()%></option>
                            <%}%>
                        </select>
                        <br>
                        <input type="submit" value="Enviar" class="btn btn-info" style="width: 100%">
                        <br><br>
                        <a href="javascript:history.back()" class="btn  btn-danger" style="width: 100%">Voltar</a>
                    </form>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    </body>
</html>


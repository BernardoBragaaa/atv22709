<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <h1>Informe seu Ano de Nascimento e Se Já Fez Aniversário</h1>
    <form action="Index.jsp" method="post">
        <label for="anoNascimento">Ano de Nascimento:</label>
        <input type="text" id="anoNascimento" name="anoNascimento" required><br><br>

        <label for="fezAniversario">Já fez aniversário este ano?</label>
        <input type="radio" id="sim" name="fezAniversario" value="sim"> Sim
        <input type="radio" id="nao" name="fezAniversario" value="nao"> Não<br><br>

        <input type="submit" value="Enviar">
    </form>
    
    <% 
        String anoNascimento = request.getParameter("anoNascimento");
        String fezAniversario = request.getParameter("fezAniversario");
        
        if (anoNascimento != null && fezAniversario != null) {
            int anoNasc = Integer.parseInt(anoNascimento);
            int anoAtual = java.time.LocalDate.now().getYear();
            
            int idade = anoAtual - anoNasc;
            
            if (fezAniversario.equals("nao")) {
                idade--;
            }
            
            out.println("<p>Sua idade é: " + idade + " anos.</p>");
        }
    %>
</body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <h2>Introduzca los datos del nuevo socio:</h2>
    <form method="post" action="grabaSocio.jsp">
      Nº socio <input type="text" name="numero"/></br>
      Nombre <input type="text" name="nombre"/></br>
      Estatura <input type="text" name="estatura"/></br>
      Edad <input type="text" name="edad"/></br>
      Localidad <input type="text" name="localidad"/></br>
      <input type="submit" value="Aceptar">
    </form>


    <%-- Mostrar errores de validación --%>
    <%
      String errorNumero = (String) session.getAttribute("errorNumero");
      String errorNombre = (String) session.getAttribute("errorNombre");
      // ... (obtener otros posibles errores)

      if (errorNumero != null || errorNombre != null /* || otros errores */) {
    %>
    <div style="background-color: red; color: yellow;">
      <h3>Errores de validación:</h3>
      <% if (errorNumero != null) { %>
      <p><%= errorNumero %></p>
      <% }
        if (errorNombre != null) { %>
      <p><%= errorNombre %></p>
      <% } /* Otros errores */ %>
    </div>
    <% }
      // Limpiar errores después de mostrarlos
      session.removeAttribute("errorNumero");
      session.removeAttribute("errorNombre");
      // ... (limpiar otros posibles errores)
    %>

  </body>
</html>
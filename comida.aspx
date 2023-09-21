<%@ Page Language="C#" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registro de Comida</title>
</head>
<body>
    <form runat="server">
        <label for="comida">¿Qué has comido hoy?</label>
        <input type="text" id="comida" runat="server" /><br />
        <input type="button" value="Guardar" onclick="GuardarComida()" />
    </form>
    <script runat="server">
        protected void GuardarComida()
        {
            string comida = comida.Value;
            string fecha = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            string registro = $"{fecha}: {comida}";

            System.IO.File.AppendAllText(Server.MapPath("~/comidas.txt"), registro + Environment.NewLine);
            comida.Value = string.Empty;
        }
    </script>
</body>
</html>

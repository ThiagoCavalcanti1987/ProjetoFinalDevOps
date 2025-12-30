const http = require("http");

const port = 80; // porta que a aplicação vai escutar

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader("Content-Type", "text/plain; charset=utf-8");
  res.end("Olá mundo! Aplicação Node.js rodando na porta 80 🚀");
});

server.listen(port, () => {
  console.log(`Servidor rodando na porta ${port}`);
});

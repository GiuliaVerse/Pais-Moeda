async function enviarPais() {
  const paisOrigem = document.getElementById("pais-origem").value;
  const url = "salvar-pais.php"; // Replace with your script filename

  try {
    const response = await fetch(url, {
      method: "POST",
      body: JSON.stringify({ pais: paisOrigem }),
      headers: { "Content-Type": "application/json" },
    });

    const data = await response.json();
    const resultado = document.getElementById("resultado");
    resultado.textContent = `A moeda do seu país é: ${data.moeda}`; // Update with your response property names
  } catch (error) {
    const resultado = document.getElementById("resultado");
    resultado.textContent = "Erro ao enviar: " + error.message;
  }
}

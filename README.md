# ContractPDF - Geração de PDF no Salesforce

## 📌 Visão Geral
Este projeto implementa uma funcionalidade no **Salesforce** que permite a geração de um **PDF personalizado** a partir de um **botão na Oportunidade**, extraindo informações do contrato associado.

---

## 🚀 Funcionalidades Implementadas
- 🔹 **Criação de um Apex Controller** para buscar os dados do contrato relacionado à oportunidade.
- 🔹 **Desenvolvimento de uma Página Visualforce** (`renderAs="pdf"`) para exibição e geração do documento.
- 🔹 **Criação de um botão na Oportunidade**, que ao ser clicado, gera o PDF do contrato correspondente.

---

## ⚡ Fluxo de Funcionamento
1. O usuário acessa um registro de **Oportunidade** no Salesforce.
2. Um **botão customizado** é exibido na interface.
3. Ao clicar no botão, a página **Visualforce** é chamada, buscando o contrato associado.
4. O documento **PDF é gerado automaticamente**, trazendo dados formatados e estilizados.
5. O usuário pode visualizar ou baixar o PDF diretamente da plataforma.

---

## 📂 Organização do Repositório
- **Apex Controller:** Responsável por buscar e estruturar os dados do contrato.
- **Página Visualforce:** Renderiza o contrato como PDF com layout personalizado.
- **Botão Customizado:** Aciona a geração do documento.
- 
---

## 📌 Próximos Passos
- 📌 Melhorar a responsividade e estilização do PDF.
- 📌 Adicionar opções para **download e envio por e-mail** diretamente do Salesforce.
- 📌 Incluir um histórico de PDFs gerados para controle interno.


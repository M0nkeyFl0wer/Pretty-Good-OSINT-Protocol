# Pretty Good OSINT Protocol (PGOP)

**“Now not only the bad guys have these tools.”**

PGOP is a modular, open-source intelligence platform designed to democratize access to powerful OSINT tools — with automation, privacy, and plugin-based flexibility for ethical investigators, journalists, and defenders.

---

## 🧠 Features

- **🕷️ OSINT Engine** – Automated profiling with SpiderFoot + enhanced modules
- **🤖 AI Assistant** – Summarize scans, classify targets, and suggest next steps (local and hosted LLM support via Ollama)
- **🖼️ Multimedia Analysis** – ExifTool, facial similarity, image geolocation
- **🔗 Blockchain Forensics** – Wallet & contract tracing via Etherscan, Bitquery, Breadcrumbs
- **🗃️ Immutable Reporting** – Publish findings to IPFS + Orbit Chain or Base
- **🕶️ Privacy Layer** – Optional zero-knowledge redaction using Holonym/Human.Tech
- **💰 Crypto Payments** – Pay for API services using cryptocurrency, including hosted model access and VM time
- **🖥️ CLI + Web UI** – Power-user CLI & beginner-friendly Streamlit GUI (`Have I Been Rekt`)
- **🛑 Non-Web3 Mode** – Optional fully local use with no blockchain dependency

---

## 🔧 MVP Scope

The current focus of PGOP is to deliver a lean, working prototype:

- 🕷️ SpiderFoot-powered scans  
- 🤖 AI-generated summaries (OpenAI or Ollama)  
- 🔒 Zero-knowledge redaction (via Holonym)  
- 📡 Publishing to IPFS or Orbit/Base  

All other features are modular or in progress. PRs welcome!

---

## 🤖 Local & Hosted AI Model Support

PGOP supports:

- Running **open-source LLMs locally** with [Ollama](https://ollama.com)
- Optional integration with OpenAI via API
- Support for **fine-tuned models** tailored for OSINT tasks

**Users can run models:**
- Locally via Docker/VM setup
- Hosted via PGOP VM instances (pay-as-you-go with crypto)

> This provides accessible, privacy-respecting intelligence without needing centralized AI infrastructure.

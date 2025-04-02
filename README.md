Pretty Good OSINT Protocol (PGOP)

“Now not only the bad guys have these tools.”

PGOP is a modular, open-source intelligence platform designed to democratize access to powerful OSINT tools — with automation, privacy, and plugin-based flexibility for ethical investigators, journalists, and defenders.

🧠 Features

🕷️ OSINT Engine – Automated profiling with SpiderFoot + enhanced modules

🤖 AI Assistant – Summarize scans, classify targets, and suggest next steps (local and hosted LLM support via Ollama)

🖼️ Multimedia Analysis – ExifTool, facial similarity, image geolocation

🔗 Blockchain Forensics – Wallet & contract tracing via Etherscan, Bitquery, Breadcrumbs

🗃️ Immutable Reporting – Publish findings to IPFS + Orbit Chain or Base

🕶️ Privacy Layer – Optional zero-knowledge redaction using Holonym/Human.Tech

💰 Crypto Payments – Pay for API services using cryptocurrency, including hosted model access and VM time

🖥️ CLI + Web UI – Power-user CLI & beginner-friendly Streamlit GUI (Have I Been Rekt)

🛑 Non-Web3 Mode – Optional fully local use with no blockchain dependency

🤖 Local & Hosted AI Model Support

PGOP supports:

Running open-source LLMs locally with Ollama

Optional integration with OpenAI via API

Support for fine-tuned models tailored for OSINT tasks

Users can run models:

Locally via Docker/VM setup

Hosted via PGOP VM instances (pay-as-you-go with crypto)

This provides accessible, privacy-respecting intelligence without needing centralized AI infrastructure.

🚀 Getting Started

1. Clone the repo

git clone https://github.com/M0nkeyFl0wer/Pretty-Good-OSINT-Protocol.git
cd Pretty-Good-OSINT-Protocol

2. Add your API keys

Copy .env.example to .env and fill in:

OPENAI_API_KEY=your-key
SERPAPI_KEY=your-key
WHOISXML_API_KEY=your-key
HUNTER_API_KEY=your-key

3. Run locally with Docker

docker-compose up --build

📦 Repo Structure

contracts/         → PGOPDeployer smart contract
scripts/           → Deployment automation
tests/             → Test suite (Mocha, Hardhat)
docs/              → Grant proposal, onboarding slides, architecture diagrams
assets/            → Logos, UI mockups, visuals
models/            → Ollama and other local LLM configs

🔐 PGOPDeployer Smart Contract

PGOP includes a Solidity-based registry for contributors and verified plugins.

📄 Source: contracts/PGOPDeployer/PGOPDeployer.sol

📍 Address: 0x219d07BdFA45C11Fb655A24E20709205C6255746

🔎 Use: Allowlisted contributors and plugins are tracked on-chain

📄 Project Documents

📝 Gitcoin Grant Proposal (Markdown)

🧭 Onboarding Flow Slides

📊 Architecture Diagram

📁 Directory Layout

🧪 Contributing

Pull requests welcome! Plugin devs, crypto analysts, and front-end folks — we see you.

See CONTRIBUTING.md for info on:

Plugin API structure

Docker dev environments

Local LLM integration with Ollama

UI + CLI extensibility

📜 License

MIT — Use for good, not evil. Help build tools that protect users, not exploit them.

🔗 Live Demos & Frontends

🧪 Web UI (WIP): Have I Been Rekt?

📦 Package release: Coming soon via Hugging Face Spaces & Docker Hub

💬 Credits & Contact

Built with ❤️ by open-source collaborators. Project coordination by @M0nkeyFl0wer.Logo, onboarding UX, and identity protection features supported by Holonym / Human.Tec

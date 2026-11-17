# Vanta Render deploy package

The application source is in `vanta-render-source.zip`. The root `Dockerfile` extracts it during the Render build, and `render.yaml` configures the web service and its persistent data disk.

In Render, create a Blueprint from this repository. The configured compute plan and 1 GB disk are paid resources. Local account/session files and secrets are excluded from the source archive; accounts created on Render will persist on its disk. Add `OPENROUTER_API_KEY` through Render's environment settings only if you enable the AI assistant.

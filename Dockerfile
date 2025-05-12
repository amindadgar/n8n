# ────────────────────────────────────────────────────────────────
# Custom n8n image with @qdrant/js-client-rest pre‑installed
# ────────────────────────────────────────────────────────────────
FROM n8nio/n8n:latest

# Install extra npm packages in the user data folder
RUN cd /home/node/.n8n \
    && npm init -y --scope=n8n-custom --yes \
    && npm install --production @qdrant/js-client-rest

# The base image already switches to USER node
# so no additional USER directive is needed here.

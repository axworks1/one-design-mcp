# One Design MCP: runs the published npm package (one-design-mcp) over stdio
FROM node:22-slim
RUN npm install -g one-design-mcp@latest && npm cache clean --force
WORKDIR /work
ENTRYPOINT ["one-design-mcp"]

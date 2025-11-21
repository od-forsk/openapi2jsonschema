FROM ghcr.io/astral-sh/uv:python3.11-alpine

COPY . /app
WORKDIR /app

# Install dependencies and the package
RUN uv sync --frozen

WORKDIR /out

ENTRYPOINT ["uv", "run", "openapi2jsonschema"]
CMD ["--help"]

FROM node:22-alpine

WORKDIR /app

RUN corepack enable

COPY package.json pnpm-lock.yaml ./

# Allow esbuild to run during installation
RUN pnpm config set onlyBuiltDependencies esbuild

RUN pnpm install --frozen-lockfile

COPY . .

EXPOSE 3001

CMD ["pnpm", "start"]
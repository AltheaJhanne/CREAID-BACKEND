import "dotenv/config";
import { Elysia } from "elysia";
import { node } from "@elysiajs/node";
import { app } from "./app.js";

const port = process.env.PORT || 3001;

new Elysia({
  adapter: node(),
})
  .use(app)
  .listen(port);

console.log(
  `API running at http://localhost:${port}/api`
);
const { PORT = 5001 } = process.env;
const app = require("../src/App.js");
const knex = require("./knexfile");
const listener = () => console.log(`Listening on Port ${PORT}!`);
knex.migrate
  .latest()
  .then((migrations) => {
    console.log("migrations", migrations);
    app.listen(PORT, listener);
  })
  .catch(console.error);

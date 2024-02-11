const environment = process.env.NODE_ENV || "development";
const config = require("../../backend/knexfile")[environment];
const knex = require("knex")(config);

module.exports = knex;

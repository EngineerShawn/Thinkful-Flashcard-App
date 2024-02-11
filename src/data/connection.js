const environment = process.env.NODE_ENV || "production";
const config = require("../../backend/knexfile")[environment];
const knex = require("knex")(config);

module.exports = knex;

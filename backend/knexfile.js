// require("dotenv.development").config();
// require("dotenv.production").config();

// const {
    // DEVELOPMENT_DATABASE_URL,
   // PRODUCTION_DATABASE_URL,
 // } = process.env;
  // const URL =
  //   NODE_ENV === "production"
  //     ? PRODUCTION_DATABASE_URL
  //     : DEVELOPMENT_DATABASE_URL;

  module.exports = {
    production: {
       client: "postgresql",
       connection: "postgres://uttoeanw:WlHBhHntmwg-m_4vk_vPtXdFrBIhB1xt@berry.db.elephantsql.com/uttoeanw",
       pool: { min: 0, max: 5 },
       migrations: {
         directory: path.join(__dirname, "src", "data", "migrations"),
       },
       seeds: {
         directory: path.join(__dirname, "src", "data", "seeds"),
       },
     },
    };

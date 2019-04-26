const express = require("express");
const router = express.Router();

// import controller
const dataController = require("../controllers/dataController.js")

// GET
// @route data/all
// @desc gets all data
// @params none
// @response json data of all
router.get("/all", dataController.getAllData);

module.exports = router;
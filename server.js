const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const bodyParser = require("body-parser");
const axios = require("axios");

const app = express();

// Middleware
app.use(cors());
app.use(express.json());

app.use(bodyParser.json());

// MySQL Connection
const db = mysql.createConnection({
  host: "Akshays-Air.lan", // MySQL host
  user: "root", // MySQL username
  password: "Qywter@123", // MySQL password
  database: "db_project", // MySQL database name
});

// Connect to MySQL
db.connect((err) => {
  if (err) {
    console.log(err);
  } else {
    console.log("MySQL Connected!");
  }
});

// Handle user input and query the database, then query OpenAI with the combined response
app.post("/api/chat", async (req, res) => {
  try {
    const databaseResponse = await queryDatabase(req.body.userInput);
    const openAIResponse = await queryOpenAI(
      req.body.userInput,
      databaseResponse
    );

    // Respond to the frontend with the combined response
    res.send(openAIResponse);
  } catch (error) {
    console.error("Error:", error);
    res.status(500).send("Internal Server Error");
  }
});

// Endpoint to get the list of tables
app.get("/api/tables", (req, res) => {
  const sql = "SHOW TABLES";
  db.query(sql, (err, result) => {
    if (err) {
      res.status(500).send(err);
    } else {
      res.json(result);
    }
  });
});

// Endpoint to get table data for a specific table
app.get("/api/tableData/:tableName", (req, res) => {
  const tableName = req.params.tableName;
  const sql = `SELECT * FROM ${tableName} LIMIT 5`;
  db.query(sql, (err, result) => {
    if (err) {
      res.status(500).send(err);
    } else {
      res.json(result);
    }
  });
});

// Function to query the MySQL database
async function queryDatabase(userInput) {
  return new Promise((resolve, reject) => {
    // MySQL database query logic
    const query = `SELECT c.Make, c.Dealership_num, c.Price FROM Car c JOIN Dealership d ON c.Dealership_num = d.Dealership_num;`;

    db.query(query, (err, results) => {
      if (err) {
        reject(`Error querying the database: ${err.message}`);
      } else {
        // Formated results
        resolve(formatDatabaseResponse(results));
      }
    });
  });
}

// Function to format the database response
function formatDatabaseResponse(results) {
  const formattedMessages = results.map((result) => {
    return JSON.stringify(result, null, 2);
  });
  let concatenatedMessages = formattedMessages.join("\n\n");
  // Limit for retrieved data
  const maxLength = 1500;
  if (concatenatedMessages.length > maxLength) {
    concatenatedMessages = concatenatedMessages.substring(0, maxLength);
  }

  return concatenatedMessages;
}

// Function to query the OpenAI API
async function queryOpenAI(userInput, databaseResponse) {
  const openAIApiKey = "Open AI Key";
  const apiUrl = "https://api.openai.com/v1/chat/completions";

  try {
    const response = await axios.post(
      apiUrl,
      {
        model: "gpt-3.5-turbo",
        messages: [
          { role: "system", content: "You are a helpful assistant." },
          { role: "user", content: userInput },
          { role: "assistant", content: databaseResponse },
        ],
      },
      {
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${openAIApiKey}`,
        },
      }
    );

    return response.data;
  } catch (error) {
    console.error(
      "Error calling OpenAI API:",
      error.response?.data || error.message
    );
    throw error;
  }
}

// Start server
const PORT = process.env.PORT || 5001;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});

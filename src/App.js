import React, { useState, useEffect } from "react";
import axios from "axios";
import "./App.css"; // Import your CSS file for styling

function App() {
  // State variables
  const [userInput, setUserInput] = useState("");
  const [output, setOutput] = useState();
  const [tableNames, setTableNames] = useState([]);
  const [selectedTableName, setSelectedTableName] = useState(null);
  const [tableData, setTableData] = useState([]);

  // Function to handle user input and communicate with the backend
  const handleUserInput = async () => {
    try {
      // Sending user input to the backend
      const backendResponse = await axios.post(
        "http://localhost:5001/api/chat",
        {
          userInput,
        }
      );

      // Updating the React state with the backend response
      setOutput(backendResponse?.data);
    } catch (error) {
      console.error("Error:", error);
    }
  };

  // Effect hook to fetch the list of table names when the component mounts
  useEffect(() => {
    axios.get("http://localhost:5001/api/tables").then((response) => {
      setTableNames(response.data);
    });
  }, []);

  // Function to handle button click for fetching data of a specific table
  const handleTableButtonClick = async (tableName) => {
    try {
      // Fetching the data for the selected table
      const tableResponse = await axios.get(
        `http://localhost:5001/api/tableData/${tableName}`
      );

      setSelectedTableName(tableName);
      setTableData(tableResponse.data);
    } catch (error) {
      console.error("Error:", error);
    }
  };

  return (
    <>
      {/* Chatbot Container */}
      <div className="chatbot-container">
        <div className="chatbot-heading">
          <strong>Database Chatbot</strong>
        </div>

        {/* Chatbot Messages */}
        <div className="chatbot-messages">
          {/* User Input Display */}
          <div className="user-message">
            <span>User:</span> {userInput}
          </div>

          {/* Chatbot Output */}
          <div className="chatbot-message">
            <span>Chatbot:</span>{" "}
            {output?.choices[0]?.message?.content || "I love cars !"}
          </div>
        </div>

        {/* User Input */}
        <div className="input-container">
          <input
            type="text"
            placeholder="Type your message..."
            value={userInput}
            onChange={(e) => setUserInput(e.target.value)}
          />
          <button onClick={handleUserInput}>Send</button>
        </div>
      </div>

      {/* Table Section */}
      <div>
        <div className="table-intro" style={{ fontSize: "28px" }}>
          Click any Table and get the data !
        </div>
        <div>
          <strong className="table-intro">Table Names:</strong>
          <div className="table-names">
            {/* Render buttons for each table name */}
            {tableNames.map((tableName) => (
              <button
                key={tableName?.Tables_in_db_project}
                onClick={() =>
                  handleTableButtonClick(tableName?.Tables_in_db_project)
                }
              >
                {tableName?.Tables_in_db_project}
              </button>
            ))}
          </div>
        </div>

        {/* Display table data if a table is selected */}
        {selectedTableName && (
          <div className="table-container">
            <strong className="table-intro">
              Table Data for {selectedTableName}:
            </strong>
            <table>
              <thead>
                {/* Render table header with column names */}
                <tr>
                  {Object.keys(tableData[0]).map((column) => (
                    <th key={column}>{column}</th>
                  ))}
                </tr>
              </thead>
              <tbody>
                {/* Render table rows with data */}
                {tableData.map((row, index) => (
                  <tr key={index}>
                    {Object.values(row).map((value, colIndex) => (
                      <td key={colIndex}>{value}</td>
                    ))}
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        )}
      </div>
    </>
  );
}

export default App;

The web application incorporates a sophisticated chatbot, leveraging the OpenAI GPT-3.5 Turbo model. Users can input queries, and the chatbot responds by interacting not only with the OpenAI API but also with an underlying MySQL database.

Another component of the application is the display of all available tables in the connected database. Users can interact with the displayed tables fetched from the database by clicking on specific buttons. Clicking on a table button triggers the presentation of a preview of the table's data, enhancing user understanding of the database contents.

The web application is built using React. Axios is employed for making asynchronous HTTP requests from the frontend to the backend, facilitating communication with the server. The backend is implemented using Node.js, a runtime environment for executing JavaScript code on the server side. Express.js, a web application framework for Node.js, is utilized to create robust and scalable server-side application. MySQL is the chosen relational database management system, and the mysql package is employed to connect the Node.js server with the MySQL database. Axios is used to make HTTP requests to retrieved data from the database and make requests to OpenAI API with the data from the database, facilitating communication between the chatbot, the database and the external language model.


Usage Instructions:

Frontend (React App):
1.	Dependencies:
•	Ensure Node.js and npm are installed.
•	Run `npm install` to install required dependencies.
2.	Run Application:
•	Execute npm start to launch the React development server.
•	Access the application at http://localhost:3000 in a web browser.


Backend (Node.js Server):
1.	Dependencies:
•	Ensure Node.js and npm are installed.
2.	Configuration:
•	Update the MySQL connection details in the db constant in server.js.
•	Replace the OpenAI API key in the queryOpenAI function.

3.	Database Configuration (MySQL Workbench):
•	Ensure MySQL server is running.
•	Open MySQL Workbench and connect to your MySQL server.
•	Create a database named db_project or replace it with your preferred database name.
•	Import the necessary SQL files or create tables as required for your application.
4.	Run Server:
•	Execute node server.js to start the Node.js server.
•	The server will run on http://localhost:5001.


Testing: Test the application by interacting with the chatbot and exploring table data. Due to budgetary constraints, the chatbot gets data from only the car table. Queries related to car table can be given and the chatbot retrieves information about the car table.

Constraints and Considerations:
•	The chatbot's interaction with the database is mindful of the usage-based pricing model of the OpenAI GPT-3.5 Turbo model.
•	As such, the amount of data retrieved from the connected database is constrained to ensure optimal usage of the OpenAI API within budgetary considerations. Only the car table data is provided to the OpenAI API.

Future Developments:
•	While the current implementation adheres to the constraints of the OpenAI API usage, future optimizations and scalability considerations remain on the horizon. Developers can explore avenues for more granular control over the amount of data fetched from the database, dynamically adjusting the interaction based on usage patterns and evolving requirements.
•	Potential enhancements for a car dealership scenario could include additional features such as inventory management, sales analytics, and customer relationship management, leveraging the comprehensive data stored in the database for more holistic business operations.
![image](https://github.com/akshay722/Eco-Friendly-Car-Management-System/assets/65845790/8b535fee-2136-44a3-8351-5f4be90cf6b9)


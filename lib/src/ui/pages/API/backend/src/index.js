//Import all modules
import { app } from 'app.js';
import { connection } from 'database.js';
//Function asyncronus
async function main() {
    //First connect to mongoDB
    await connection();
    //Initialize the server
    await app.listen(4002);
}
//Call the function
main();
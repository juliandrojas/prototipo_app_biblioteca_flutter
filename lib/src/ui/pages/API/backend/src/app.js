import { express } from 'express';
import morgan from 'morgan';
//Initialize Express and Morgan
const app = express();
const morgan = morgan();
//Use module morgan
app.use(morgan('dev'));
module.exports = app;


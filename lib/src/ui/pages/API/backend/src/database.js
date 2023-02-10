import mongoose from 'mongoose';
const connection = async () => {
    try {
        console.log("Connecting to MongoDB");
        await mongoose.connect('mongodb://localhost/biblioteca', {
            //Configurations
            useCreateIndex: true,
            useFindAndModify: false,
            useNewUrlParser: true,
            useUnifiedTopology: true
        });
        console.log("Connect to MongoDB");
    } catch (error) {
        throw new Error(error);
        console.log("Error: "+error);
    }
}
//Export the module
module.exports = {
    connection
};
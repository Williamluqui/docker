const express = require('express');

const app = express();
const PORT = 3000;
const HOST = '0.0.0.0';
app.get('/', (req, res)=>{
    res.send('Hello world');
})

app.listen(PORT,HOST,()=>{console.log('Server is Run')});
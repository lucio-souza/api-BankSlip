const express=require("express");
const app=express();

app.get("/",function(req,res){
    res.send("Está funcionando");
});

app.listen(8080);

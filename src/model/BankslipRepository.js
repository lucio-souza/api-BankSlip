const mysql2=require('mysql2/promise');
require('dotenv').config();

async function init(){
	try {
		const connection = await mysql2.createConnection({
			host:     process.env.db_host,
			user:     process.env.db_user,
			password: process.env.db_pass,
			database: process.env.db_database
		});
		return connection;
	} catch (error) {
		console.log(`aconteceu o erro:${error}`);
		throw error;
	}
}
// eslint-disable-next-line no-unused-vars
async function GetAll(){
	const con=await init();
	try {
		const [row]=await con.query('SELECT * FROM bankslip');
		con.end();
		return row;
	}catch(error){
		console.log('erro');
		con.end();
		throw error;
	}
}
// eslint-disable-next-line no-unused-vars
async function GetOneId(ID){
	const con=await init();
	try {
		const [rows]=await con.query('SELECT * FROM bankslip WHERE id= ?',[ID]);
		if (rows.length != 0) {
			con.end();
			return rows;
		}else{
			con.end();
			return null;
		}
	} catch (error) {
		console.log(`aconteceu o erro:${error}`);
		con.end();
		throw error;
	}
}

// eslint-disable-next-line no-unused-vars
async function remove(ID){
	const con=await init();
	try {
		let [rows]=await GetOneId(ID);
		if(rows){
			const result=await con.query('DELETE FROM bankslip WHERE id=?',[ID]);
			con.end();
			return result;
		}
	} catch(error){
		console.log(`aconteceu o erro:${error}`);
		con.end();
		throw error;
	}	
}
// eslint-disable-next-line no-unused-vars
async function update(id,status){
	const con=await init();
	try{
		const [rows]=await GetOneId(id);
		if(rows){
			const result=await con.query('UPDATE bankslip SET status = ? WHERE id = ?',[status,id]);
			con.end();
			return result;
		}
	} catch(error){
		console.log(`aconteceu o erro:${error}`);
		con.end();
		throw error;
	}
}
// eslint-disable-next-line no-unused-vars
async function create(entity){
	const con=await init();
	try {
		const [rows]=await con.query('INSERT INTO bankslip values (default,?,null,?,?,?)',[entity.due_date,entity.total_in_cents,entity.customer,entity.status]);
		con.end();
		return rows;
	} catch (error) {
		console.log(`aconteceu o erro:${error}`);
		con.end();
		throw error;
	}
}
<?php
class db{
	var $conn ='';
	public function __construct()
	{
		 $this->conn =  new PDO('mysql:host=localhost; dbname=bansach' , 'root' , '');
        //this->conn =$o      nn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		 $this->conn->query('set names "utf8" ');
	}
	public function query($sql)
	{
		//echo "$sql ";
		$stm = $this->conn->query($sql);
		return $stm->fetchAll(PDO::FETCH_ASSOC);
	}
	public function queryUpdate($sql)
	{
		//echo "$sql ";
		$stm = $this->conn->query($sql);
		return $stm->rowCount();
	}

	public function queryInsert($sql){
		 // print_r($this->conn->query($sql));
		 // exit();
		 	return	$stm = $this->conn->query($sql);
		
	}	
	
}
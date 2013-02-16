<?php
require_once "classes/database_handler.php";

class ShopDb{

	public static function getMagazine($id_magazine){
        $sql = "SELECT * FROM magazine WHERE id_magazine = " . $id_magazine;
		return DatabaseHandler::GetAll($sql);
    }
		
	public static function getCity($id_city){
        if (!is_array($id_city)) return;
		$sql = "SELECT * FROM city WHERE id_city in (" . implode(',', $id_city)  . ")";
		return DatabaseHandler::GetAll($sql);
    }

    public static function getShop($id_city){
        if (!is_array($id_city)) return;
		$sql = "SELECT * FROM city WHERE id_city in (" . implode(',', $id_city)  . ")";
		return DatabaseHandler::GetAll($sql);
    }

    public static function UpdatePage($id, $name)
	{
       $sql = "UPDATE city SET name = '".$name. "' WHERE id_city = ".$id;
	   DatabaseHandler::Execute($sql);
	}
}
?>
<?php
require_once 'dbconnection.php';
require 'vendor/autoload.php';
use Telegram\Bot\Api;
$client = new Api('5668402546:AAEKNPKSUNKuX1KCAOzBiPoqK5hpzkjPinI');
$last_update_id=0;
while(true){

	$response = $client->getUpdates(['offset'=>$last_update_id, 'timeout'=>500]);
	if (count($response)<=0) continue;

	foreach ($response as $r){
        $last_update_id=$r->getUpdateId()+1;
		$message=$r->getMessage();
		$chatId=$message->getChat()->getId();
		$item=$message->getText();
		$response = "";

		if ($item != "") {
			$sql="SELECT name,image,materials from recipes where command_name='$item'";
			
			if ($result = $connessione->query($sql))
			{
				if($result->num_rows > 0)
				{
					while($row = $result->fetch_assoc()) {
						$name = $row["name"]; 
						$image = $row["image"]; 
						$materials = $row["materials"];
					}

					$response = $client->sendMessage([
						'chat_id' => $chatId,
						'text' => $image . "\n" . 'Nome: ' . $name . "\n" . 'Materiali: ' . $materials
					]);
				}

				else {
					$response = $client->sendMessage([
						'chat_id' => $chatId,
						'text' => 'Ricetta non trovata per questo item'
					]);
				}
			}

			else {
				$response = $client->sendMessage([
					'chat_id' => $chatId,
					'text' => 'Ricetta non trovata per questo item'
				]);
			}
		}			
	}
}
?>
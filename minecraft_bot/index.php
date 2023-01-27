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

			$sql="SELECT name,image,materials,gif from recipes where command_name='$item'";
			
			if ($result = $connessione->query($sql)) {

				if($result->num_rows > 0) {
					while($row = $result->fetch_assoc()) {
						$name = $row["name"]; 
						$image = $row["image"]; 
						$materials = $row["materials"];
						$gif = $row["gif"];
					}

					if($gif == 1) {
						$response = $client->sendVideo([                 
							'chat_id' => $chatId,                  
							'video' => $image,                 
							'caption' => 'Name: ' . $name . "\n" . 'Materials: ' . $materials               
						]);
					}

					else {
						$response = $client->sendPhoto([                 
							'chat_id' => $chatId,                  
							'photo' => $image,                 
							'caption' => 'Name: ' . $name . "\n" . 'Materials: ' . $materials               
						]);
					}
						
				}

				else if ($item == "/start") {
					$response = $client->sendMessage([
						'chat_id' => $chatId,
						'text' => 'Benvenuto nel mondo di Minecraft! ⛏💎 '."\n".'Scrivi il nome dell item di cui vuoi sapere la ricetta' . "\n" . '/help' . "\n" . '/recipes'
					]);
				}

				else if ($item == "/recipes") {
					$response = $client->sendMessage([
						'chat_id' => $chatId,
						'text' => 'Esempi ricette: ' . "\n" . 'wood_planks' . "\n" . 'crafting_table' . "\n" . 'sticks' . "\n" . 'furnace' . "\n" . 'sword'
					]);
				}

				else if ($item == "/help") {
					$response = $client->sendMessage([
						'chat_id' => $chatId,
						'text' => 'Inserisci il nome di un item senza "/" e con "_" se sono più parole' . "\n" . 'Es: "crafting_table"'
					]);
				}

				else {
					$response = $client->sendMessage([
						'chat_id' => $chatId,
						'text' => 'Ricetta non trovata per questo item'
					]);
				}
			}
		}

		else if ($item == ""){
			$response = $client->sendMessage([
				'chat_id' => $chatId,
				'text' => ''
			]);
		}
	}		
}

?>
<?php

require 'vendor/autoload.php';
use Telegram\Bot\Api;
// creazione dell'oggetto client
$client = new Api('5895536912:AAGCjIwmmKYK6kKeeCQrR8QkV0MZKxUvBVc');
$last_update_id=0;
while(true){
    // leggiamo gli ultimi update ottenuti
	$response = $client->getUpdates(['offset'=>$last_update_id, 'timeout'=>5]);
	if (count($response)<=0) continue;
	/* per ogni update scaricato restituiamo il messaggio
	sulla stessa chat su cui è stato ricevuto */
	foreach ($response as $r){
        $last_update_id=$r->getUpdateId()+1;
		$message=$r->getMessage();
		$chatId=$message->getChat()->getId();
		$text=$message->getText();
		$response = $client->sendMessage([
  			'chat_id' => $chatId,
  			'text' => 'Hai scritto: '.$text
		]);
	}
}
/*
        $input = file_get_contents('php://input');
        $update = json_decode($input);
        $message = $update->message;
        $chat_id = $message->chat->id;
        $token = '5895536912:AAGCjIwmmKYK6kKeeCQrR8QkV0MZKxUvBVc';
        file_get_contents("https://api.telegram.org/bot$token/sendMessage?chat_id=$chat_id&text=sas");*/

?>
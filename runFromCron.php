<?php
namespace xnan\Trurl\Horus\MarketBotRunner;

chdir( __DIR__ );

require '../vendor/autoload.php';
include_once("settings.php");

\Conf\Horus\Functions::Load;
\Conf\MarketBotRunner\Functions::Load;

// Uses: Nano: Shortcuts
use xnan\Trurl\Nano;
Nano\Functions::Load;

// Uses: Hydra: Shortcuts
use xnan\Trurl\Hydra;
Hydra\Functions::Load;

// Uses: Mycro: Main
use xnan\Trurl\Mikro\ServiceQuery;
use xnan\Trurl\Mikro\RestService;

// Uses:  Horus: Shortcuts
use xnan\Trurl\Horus;
Horus\Functions::Load;

//Uses: Custom
use xnan\Trurl\Horus\MarketBotRunner;
use xnan\Trurl\Horus\Market;
use xnan\Trurl\Horus\MarketSimulator;
use xnan\Trurl\Horus\Asset;
use xnan\Trurl\Horus\MarketPoll;

//Uses: End

if(cronEnabled() || (array_key_exists("runOnce",$_GET) && $_GET["runOnce"]=="true")) {
	$lastRunFile=sprintf("%s/content/runFromCron.lastRun.txt",\Conf\MarketBotRunner\dataRootFolder());

	$lastRunTime = file_exists($lastRunFile) ? file_get_contents($lastRunFile) : 0;
	
	if (!is_numeric($lastRunTime)) {
		$lastRunTime=0;
		print "runFromCron: warning: lastRunFile:'$lastRunFile' msg:lastRunTime(time) stored must be numeric, broken time ignored.\n";
	}

	$diff=time()-$lastRunTime;
	if ($diff<=dndPollSeconds()) {		
		exit("runFromCron: rejected: msg: please do not disturb botRunner (last $diff seconds ago)\n");
	} else {
		runFromCronSetup();

		Nano\nanoLog()->open();
		(MarketBotRunner\MarketBotRunner::instance())->pdoSettings(pdoSettings());
		(MarketBotRunner\MarketBotRunner::instance())->serviceProcess();
		Nano\nanoLog()->close();
	}		
	file_put_contents($lastRunFile,time());	
} else {
	print "cron: msg: disabled";
}


?>
# divideAndScaleMarketTrader

## ADD COLUMNS:
assetShortTrendLowCut Decimal 20,10
assetMediumTrendLowCut Decimal 20,10
marketShortTrendLowCut Decimal 20,10
marketMediumTrendLowCut Decimal 20,10


UPDATE divideAndScaleMarketTrader SET
assetShortTrendLowCut=0.01,
assetMediumTrendLowCut=0.01,
marketShortTrendLowCut=0.01,
marketMediumTrendLowCut=0.01;


## Problema de redondeo de Quantity en portfolio / 25/10/2022

ALTER TABLE `portfolioasset`
	CHANGE COLUMN `assetQuantity` `assetQuantity` DECIMAL(20,10) NULL DEFAULT NULL AFTER `assetId`;

SCRIPTS UTILES: 
 
-- DELETE FROM hmatrix; 
 
-- DELETE FROM portfolioasset WHERE assetQuantity<>100000 
 
-- UPDATE portfolio SET lastDepositTIme=1664628383 
 
-- LIMPIEZA DE bots: ordenes, portofolio, comienzo de operaciones trader OJO! 
DELETE FROM portfolioasset WHERE assetQuantity<>100000; 
DELETE FROM assetTradeOrder; 
UPDATE divideAndScaleMarketTrader SET startBeat=-1;


-- LIMPIEZA DE bots de test de cryptos y reset de market test de cryptos

TODO: Falta reset de marketStats

-- DE CRYPTOS
DELETE FROM portfolioasset WHERE assetQuantity<>100000 AND portfolioid IN ('botCryptosTest1Portfolio','botCryptosTest2Portfolio'); 
DELETE FROM assetTradeOrder WHERE botArenaId='cryptosTestArena' AND traderId IN('botTest1','botTest2'); 
UPDATE divideAndScaleMarketTrader SET startBeat=-1 WHERE botArenaId='cryptosTestArena' AND traderId IN('botTest1','botTest2');
UPDATE yahooFinanceTestMarket SET cacheBeat=-1, cachePage=0, cacheIndex=0 WHERE marketId='cryptosTestArenaMarket';
UPDATE yahooFinanceMarket SET lastBeatRead=0 WHERE marketId='cryptosTestArenaMarket';
UPDATE marketStats SET endBeat=0, synchedBeat=-1 WHERE marketId='cryptosTestArenaMarket';
UPDATE divideAndScaleMarketTrader SET phase=1,startBeat=0 WHERE botArenaId='cryptosTestArena' AND traderId IN('botTest1','botTest2');
DELETE FROM hmatrix WHERE name IN ('mtxMarketStatsCryptosTestShortScalar','mtxMarketStatsCryptosTestShortHistory','mtxMarketStatsCryptosTestMediumScalar','mtxMarketStatsCryptosTestMediumHistory','mtxMarketStatsCryptosTestLongScalar','mtxMarketStatsCryptosTestLongHistory');

-- MERVAL ACCIONES GENERAL
DELETE FROM portfolioasset WHERE assetQuantity<>100000 AND portfolioid IN ('botAccionesGeneralTest1Portfolio','botAccionesGeneralTest2Portfolio'); 
DELETE FROM assetTradeOrder WHERE botArenaId='cryptosTestArena' AND traderId IN('botTest1','botTest2'); 
UPDATE divideAndScaleMarketTrader SET startBeat=-1 WHERE botArenaId='mervalAccionesGeneralTestArena' AND traderId IN('botTest1','botTest2');
UPDATE yahooFinanceTestMarket SET cacheBeat=-1, cachePage=0, cacheIndex=0 WHERE marketId='mervalAccionesGeneralTestArenaMarket'
UPDATE yahooFinanceMarket SET lastBeatRead=0 WHERE marketId='mervalAccionesGeneralTestArenaMarket'
UPDATE marketStats SET endBeat=0, synchedBeat=-1 WHERE marketId='mervalAccionesGeneralTestArenaMarket'
UPDATE divideAndScaleMarketTrader SET phase=1,startBeat=0 WHERE botArenaId='mervalAccionesGeneralTestArena' AND traderId IN('botTest1','botTest2');
DELETE FROM hmatrix WHERE name LIKE 'mtxMarketStatsMervalAccionesGeneralTest%';


-- pulsos de prueba: 8hs , +50 pulsos iniciales
290 pulsos

--single run de bot cryptos de prueba
http://local.rc.horus.xnan.click//MarketBotRunnerWeb/index.php?q=run&beats=1&live=false&botArenaId=cryptosTestArena
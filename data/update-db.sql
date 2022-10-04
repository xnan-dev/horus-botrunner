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




SCRIPTS UTILES:

-- DELETE FROM hmatrix;

-- DELETE FROM portfolioasset WHERE assetQuantity<>100000

-- UPDATE portfolio SET lastDepositTIme=1664628383

-- LIMPIEZA DE bots: ordenes, portofolio, comienzo de operaciones trader
DELETE FROM portfolioasset WHERE assetQuantity<>100000;
DELETE FROM assetTradeOrder;
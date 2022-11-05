-- DELETE FROM marketQuotesCryptos WHERE marketBeat=22055 AND assetId IN ('AVAX-USD','BAT-USD');
-- DELETE FROM marketQuotesCryptos WHERE marketBeat=22058 AND assetId IN ('BSV-USD',"BAT-USD");
-- DELETE FROM marketQuotesCryptos WHERE marketBeat=22060 AND assetId IN ('BSV-USD');

-- INSERT INTO horusmarketpoll_rc.marketquotesCryptos (SELECT * FROM horusmarketpoll_p.marketquotesCryptos WHERE marketBeat<22055)


-- INSERT INTO horusmarketpoll_rc.marketquotesCryptos2 (SELECT * FROM horusmarketpoll_rc.marketquotesCryptos ORDER BY marketBeat ASC)
-- SELECT min(marketbeat),COUNT(*) FROM marketquotescryptos

-- acciones general

--  SELECT min(marketbeat),max(marketbeat),COUNT(*) FROM horusmarketpoll_rchorusmarketpoll_rc;

-- INSERT INTO horusmarketpoll_rc.marketquotesMervalaccionesGeneral (SELECT * FROM horusmarketpoll_p.marketquotesmervalaccionesgeneral ORDER BY marketBeat )

-- INSERT INTO horusmarketpoll_rc.marketquotesMervalaccionesGenerahorusmarketpoll_rchorusmarketpoll_rcl2 (SELECT * FROM horusmarketpoll_rc.marketquotesMervalaccionesGeneral ORDER BY marketBeat ASC)


-- SELECT min(marketbeat),max(marketbeat),COUNT(*) FROM marketquotesmervalaccioneslideres;
-- SELECT min(marketbeat),max(marketbeat),COUNT(*) FROM horusmarketpoll_rchorusmarketpoll_rc;
-- SELECT min(marketbeat),max(marketbeat),COUNT(*) FROM marketquotesmervalcedears;
-- SELECT min(marketbeat),max(marketbeat),COUNT(*) FROM marketquotesnasdaq100;
-- SELECT min(marketbeat),max(marketbeat),COUNT(*) FROM marketquotessnp100;
-- SELECT min(marketbeat),max(marketbeat),COUNT(*) FROM marketquotesyfforexusd;


-- INSERT INTO horusmarketpoll_rc.marketquotesmervalaccioneslideres (SELECT * FROM horusmarketpoll_p.marketquotesmervalaccioneslideres ORDER BY marketBeat);
-- INSERT INTO horusmarketpoll_rc.marketquotesmervalbonos (SELECT * FROM horusmarketpoll_p.marketquotesmervalbonos ORDER BY marketBeat );
-- INSERT INTO horusmarketpoll_rc.marketquotesmervalcedears (SELECT * FROM horusmarketpoll_p.marketquotesmervalcedears ORDER BY marketBeat );
-- INSERT INTO horusmarketpoll_rc.marketquotesnasdaq100 (SELECT * FROM horusmarketpoll_p.marketquotesnasdaq100 ORDER BY marketBeat ) ;
-- INSERT INTO horusmarketpoll_rc.marketquotessnp100 (SELECT * FROM horusmarketpoll_p.marketquotessnp100 WHERE marketBeat<15912 ORDER BY marketBeat );
-- INSERT INTO horusmarketpoll_rc.marketquotesyfforexusd (SELECT * FROM horusmarketpoll_p.marketquotesyfforexusd ORDER BY marketBeat );

-- INSERT INTO horusmarketpoll_rc.marketquotesmervalaccioneslideres2 (SELECT * FROM horusmarketpoll_rc.marketquotesmervalaccioneslideres ORDER BY marketBeat ASC);
-- INSERT INTO horusmarketpoll_rc.marketquotesmervalbonos2 (SELECT * FROM horusmarketpoll_rc.marketquotesmervalbonos ORDER BY marketBeat ASC);
-- INSERT INTO horusmarketpoll_rc.marketquotesmervalcedears2 (SELECT * FROM horusmarketpoll_rc.marketquotesmervalcedears ORDER BY marketBeat ASC);
-- INSERT INTO horusmarketpoll_rc.marketquotesnasdaq1002 (SELECT * FROM horusmarketpoll_rc.marketquotesnasdaq100 ORDER BY marketBeat ASC);
-- INSERT INTO horusmarketpoll_rc.marketquotessnp1002 (SELECT * FROM horusmarketpoll_rc.marketquotessnp100 ORDER BY marketBeat ASC);
-- huyhorusmarketpoll_rchorusmarketpoll_rcINSERT INTO horusmarketpoll_rc.marketquotesyfforexusd2 (SELECT * FROM horusmarketpoll_rc.marketquotesyfforexusd ORDER BY marketBeat ASC);

